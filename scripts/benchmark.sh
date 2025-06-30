#!/bin/bash


# Error handling configuration
# set -euo pipefail
trap 'error_handler' EXIT

IS_ERROR=false

# Tool installation paths
GO_BIN="$HOME/go/bin"
export PATH="$GO_BIN:$PATH"

# Font Styles
BOLD='\033[1m'
UNDERLINE='\033[4m'

# Color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;36m'
NC='\033[0m' # No Color



APP_NAME="benchmark"
CONNECTIONS=100
REQUESTS=10000
DURATION=10
TIMEOUT=10
WORKERS=4
METHOD="GET"
TARGET_URL=""
TARGET_NAME="Local"
PROFILE="default"
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
OUTPUT_DIR="results"
OUTPUT_FILE="${OUTPUT_DIR}/summary_${TIMESTAMP}.txt"

# --- Enhanced Error Handling Functions ---
function error_handler() {
    if [ "$IS_ERROR" = true ]; then
        echo -e "\n${RED}Error occurred on line ${NC}" 
        exit 0
    fi
}

function graceful_exit() {
    if [ "$IS_ERROR" = true ]; then
        echo -e "${RED}Script completed with errors${NC}" 
        return 1
    else
        echo -e "${GREEN}Script completed successfully${NC}"
        return 0
    fi
}

function error_exit() {
    echo -e "\n${RED}ERROR: $1${NC}" 
    IS_ERROR=true
    return 1
}

function right_pad() {
    local string="$1"
    local length="$2"
    local pad_char="${3:- }"  # Default to space if not specified
    
    # Calculate how many padding characters we need
    local str_len=${#string}
    local pad_len=$((length - str_len))
    
    # Only pad if needed
    if (( pad_len > 0 )); then
        local padding
        printf -v padding '%*s' "$pad_len" ''
        padding=${padding// /$pad_char}
        printf "%s%s" "$string" "$padding"
    else
        printf "%s" "$string"
    fi
}

function write_file() {
    tee -a >(sed $'s/\033[[][^A-Za-z]*[A-Za-z]//g' > $OUTPUT_FILE)
}

# --- Main Script Functions ---
function validate_number() {
    [[ "$1" =~ ^[0-9]+$ ]] || {
        error_exit "$2 must be a positive integer"
        return 0
    }
}

function validate_url() {
    local url=$1
    
    if [[ -z "$url" ]]; then
        error_exit "TARGET_URL parameter (-u) is required\nExample: -u http://example.com"
        return 1
    fi

    if ! [[ "$url" =~ ^https?://[^/]+ ]]; then
        error_exit "Invalid TARGET_URL format: $url\nMust include protocol (http:// or https://) and host"
        return 1
    fi

    local host
    host=$(awk -F "[/:]" '{print $4}' <<< "$url")
    
    if [[ -z "$host" ]]; then
        error_exit "No host specified in TARGET_URL: $url"
        return 1
    fi
}

function validate_inputs() {
    validate_number "$CONNECTIONS" "Connections" || return 1
    validate_number "$REQUESTS" "Requests" || return 1
    validate_number "$DURATION" "Duration" || return 1
    validate_number "$WORKERS" "Workers" || return 1
    validate_number "$TIMEOUT" "Timeout" || return 1

    local VALID_METHODS=("GET" "POST" "PUT" "DELETE" "PATCH" "HEAD" "OPTIONS")
    if ! [[ " ${VALID_METHODS[*]} " =~ " ${METHOD} " ]]; then
        error_exit "Invalid HTTP method. Must be one of: ${VALID_METHODS[*]}"
        return 1
    fi

    if [[ -z "$TARGET_URL" ]]; then
        error_exit "Missing required parameter: -u TARGET_URL\nExample: -u http://example.com"
        return 1
    fi
    validate_url "$TARGET_URL" || return 1
}

function check_go_installation() {
    if ! command -v go &> /dev/null; then
        echo -e "${RED}Error: Go is not installed${NC}" 
        echo -e "Download from: ${BLUE}https://golang.org/dl/${NC}" 
        error_exit "Go installation required"
        return 1
    fi
}

function install_tool() {
    local tool=$1
    local install_cmd=$2
    
    echo -e "${YELLOW}Installing $tool...${NC}"
    if ! eval "$install_cmd"; then
        error_exit "Failed to install $tool"
        return 1
    fi
}

# --- Tool Installation Functions ---
function install_bombardier() {
    install_tool "bombardier" "go install github.com/codesenberg/bombardier@latest"
}
function install_go_wrk() {
    install_tool "go-wrk" "go install github.com/tsliwowicz/go-wrk@latest"
}
function install_vegeta() {
    echo -e "${YELLOW}Vegeta is not supported yet${NC}"
    echo -e "Please install manually: ${BLUE}https://github.com/tsenart/vegeta${NC}"
}

function check_tool() {
    local tool=$1
    local install_func=$2
    local auto_install={$3:-true}
    
    if ! command -v "$tool" >/dev/null 2>&1; then
        echo -e "${YELLOW}Warning: $tool not found${NC}" 
        check_go_installation || return 1
        
        if [ "$auto_install" = true ]; then
            read confirm"?Do you want to install $tool? (y/n) "
            echo 
            if [[ $confirm =~ ^[Yy]$ ]]; then
                $install_func || error_exit "Failed install ${tool}!"; return 1
            else
                echo -e "${YELLOW}Skipping $tool benchmarks${NC}" 
                return 1
            fi
        else 
            $install_func 
            return 1
        fi
    fi
}

function create_summary_header() {
    echo -e "+------------+"
    echo -e "| ${BOLD}${BLUE}Parameters${NC} |"
    echo -e "+$(right_pad "" 69 "-")+"
    echo -e "| Target NAME    : ${BLUE}$(right_pad $TARGET_NAME 50)${NC} |"
    echo -e "| Target URL     : ${BLUE}$(right_pad $TARGET_URL 50)${NC} |"
    echo -e "| HTTP Method    : ${BLUE}$(right_pad $METHOD 50)${NC} |"
    echo -e "| Connections    : ${BLUE}$(right_pad $CONNECTIONS 50)${NC} |"
    echo -e "| Requests       : ${BLUE}$(right_pad $REQUESTS 50)${NC} |"
    echo -e "| Duration       : ${BLUE}$(right_pad $DURATION 50)${NC} |"
    echo -e "| Results Dir    : ${BLUE}$(right_pad $OUTPUT_DIR 50)${NC} |"
    echo -e "| Timestamp      : ${BLUE}$(right_pad $TIMESTAMP 50)${NC} |"
    echo -e "| Profile        : ${BLUE}$(right_pad $PROFILE 50)${NC} |"
    echo -e "+$(right_pad "" 69 "-")+"
}

# --- Core Functions ---
function run() {
    # Show benchmark header
    create_summary_header

    # Run benchmarks
    run_benchmarks || error_exit "failed benchmarking..."; return 1

    # Show results
    echo "+-----------------+"
    echo -e "|${BLUE} $(right_pad "Completed" 15) ${NC}|"
    echo "+-----------------+"
    echo "Results saved to:"
    echo -e "${BLUE}${OUTPUT_FILE}${NC}"
}

function run_benchmarks() {
    # Using indexed array instead of associative array
    local tools=("bombardier" "go-wrk" "vegeta")
    local benchmark_funcs=("run_bombardier" "run_go_wrk" "run_vegeta")
    local install_funcs=("install_bombardier" "install_go_wrk" "install_vegeta")
    local auto_installs=(true true false)
    
    local tool_available=false

    echo

    for ((i=1; i<= ${#tools[@]}; i++)); do
        tool=${tools[i]}
        benchmark_func=${benchmark_funcs[i]}
        install_func=${install_funcs[i]}
        auto_install=${auto_installs[i]}
        
        if check_tool "$tool" "$install_func" $auto_install; then
            if ! "$benchmark_func" ; then
                error_exit "${YELLOW}Benchmark with $tool failed${NC}"
            fi
            tool_available=true
            echo -e '\n'
        fi
    done

    if [ "$tool_available" = false ]; then
        error_exit "No benchmark tools available"
        return 1
    fi
}

# --- Benchmark Functions ---
function run_bombardier() {
    echo "+-----------------+"
    echo -e "|${BOLD}${BLUE} $(right_pad "Bombardier" 15) ${NC}|"
    echo -e "+$(right_pad "" 36 "-")+"
    echo -e "| Requests    : ${BLUE}$(right_pad $REQUESTS 20)${NC} |"
    echo -e "+$(right_pad "" 36 "-")+"

    bombardier -c "$CONNECTIONS" -n "$REQUESTS" -m "$METHOD" -t "${TIMEOUT}s" -l "$TARGET_URL"
}

function run_go_wrk() {
    echo "+-----------------+" 
    echo -e "|${BOLD}${BLUE} $(right_pad "Go-Wrk" 15) ${NC}|" 
    echo "+$(right_pad "" 36 "-")+" 
    echo -e "| Duration    : ${BLUE}$(right_pad $DURATION 20)${NC} |" 
    echo -e "+$(right_pad "" 36 "-")+" 

    go-wrk -c "$CONNECTIONS" -d "$DURATION" -T "$((TIMEOUT * 1000))" -M "$METHOD" "$TARGET_URL" 
}

function run_vegeta() {
    echo -e "+-----------------+" 
    echo -e "|${BOLD}${BLUE} $(right_pad "Vegeta" 15) ${NC}|" 
    echo -e "+$(right_pad "" 36 "-")+" 
    echo -e "| Requests    : ${BLUE}$(right_pad $REQUESTS 20)${NC} |" 
    echo -e "| Duration    : ${BLUE}$(right_pad $DURATION 20)${NC} |" 
    echo -e "+$(right_pad "" 36 "-")+" 

    echo "$METHOD $TARGET_URL" | vegeta attack -connections "$CONNECTIONS" -duration "${DURATION}s" -workers "$WORKERS" -rate 0 --max-workers 1500 -timeout "${TIMEOUT}s" | vegeta report
}

function usage() {
    echo -e "Usage: $APP_NAME ${YELLOW}[options] ${BLUE}<url>${NC}" 
    echo -e "  Required:" 
    echo -e "  url                     Target URL" 
    echo -e "" 
    echo -e "  Options:" 
    echo -e "  -c | --connections      Maximum connections (default: 100)" 
    echo -e "  -r | --requests         Total requests (for bombardier/hey, default: 10000)" 
    echo -e "  -d | --durations        Duration in seconds (for go-wrk/hey, default: 10)" 
    echo -e "  -m | --method           HTTP method (default: GET)" 
    echo -e "  -w | --workers          Number of workers (default: 4)"
    echo -e "  -t | --timeout          Timeout in seconds (default: 10)"
    echo -e "  -o | --output-file      Output file (default: {output-dir}/{timestamp})" 
    echo -e "       --output-dir       Output directory (default: ./results)"
    echo -e "  -p | --profile          Test profiles (default: "default")"
    echo -e "  -n | --name             Target name (default: "Local")"
    echo -e "  -h | --help             Show help" 
    echo -e "" 
    echo -e "Examples:" 
    echo -e "  $APP_NAME -c 250 -r 50000 -m POST http://api.example.com" 
    echo -e "  $APP_NAME -c 300 -d 30 http://loadtest.example.com" 
}

function parse_args() {
    while [[ "$#" -gt 0 ]]; do
        case $1 in
            -c| --connections) CONNECTIONS="$2"; shift ;;
            -r| --requests) REQUESTS="$2"; shift ;;
            -d| --duration) DURATION="$2"; shift ;;
            -m| --method) METHOD="$2"; shift ;;
            -w| --workers) WORKERS="$2"; shift ;;
            -t| --timeout) TIMEOUT="$2"; shift ;;
            -o| --output-file) OUTPUT_FILE="$2"; shift ;;
                --output-dir) OUTPUT_DIR="$2"; shift ;;
            -n| --name) TARGET_NAME="$2"; shift ;;
            -p| --profile) PROFILE="$2"; shift ;;
            -h| --help) usage; return 1 ;;
            \?) error_exit "Invalid option -$OPTARG"; echo "\n"; usage; return 1;;
            *) 
                if [[ -z "$TARGET_URL" ]]; then
                    TARGET_URL="$1"
                else
                    error_exit "Unknown argument: $1"
                    return 1
                fi
                ;;
        esac
        shift
    done
}

function main() {
    parse_args "$@" || return 1

    # Validate inputs
    if ! validate_inputs; then
        echo 
        usage APP_NAME
        return 1
    fi

    # Create output directory
    mkdir -p "$OUTPUT_DIR" || {
        error_exit "Failed to create output directory"
        return 1
    }

    run | write_file
}

# --- Execution ---
main "$@"