#!/bin/bash

TARGET_NAME=""
TARGET_BASE=""
PROFILE="default"

# Font Styles
BOLD='\033[1m'
UNDERLINE='\033[4m'

# Color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;36m'
NC='\033[0m' # No Color



trap 'error_handler' EXIT

function error_handler() {
    echo -e "\n${RED}Error occurred on line ${NC}" 
}

function error_exit() {
    echo -e "\n${RED}ERROR: $1${NC}" 
    return 1
}

function run() {
    echo -e "\n${GREEN}Running tests for ${TARGET_NAME}...${NC}\n"

    echo -e "Running tests ${BLUE}Hello World - Basic${NC}\n"
    source ./scripts/benchmark.sh -c 100 -r 10000 -d 30 -t 3 -w 200 -n "$TARGET_NAME" -p "Hello World (Basic)" -m "GET" -o "results/raws/summary_${TARGET_NAME}_hello_world_basic.txt" "${TARGET_BASE}/hello-world"
    echo -e "\n"

    echo -e "Running tests ${BLUE}Hello World - High Traffic${NC}\n"
    source ./scripts/benchmark.sh -c 1000 -r 100000 -d 30 -t 3 -w 200 -n "$TARGET_NAME" -p "Hello World (High Traffic)" -m GET -o "results/raws/summary_${TARGET_NAME}_hello_world_high_traffic.txt" "${TARGET_BASE}/hello-world"
    echo -e "\n"

    echo -e "Running tests ${BLUE}Structured Responses - Basic${NC}\n"
    source ./scripts/benchmark.sh -c 100 -r 10000 -d 30 -t 3 -w 200 -n "$TARGET_NAME" -p "Structured Responses (Basic)" -m GET -o "results/raws/summary_${TARGET_NAME}_structured_responses_basic.txt" "${TARGET_BASE}/structured-messages"
    echo -e "\n"
    
    echo -e "Running tests ${BLUE}Structured Responses - High Traffic${NC}\n"
    source ./scripts/benchmark.sh -c 1000 -r 100000 -d 30 -t 3 -w 200 -n "$TARGET_NAME" -p "Structured Responses (High Traffic)" -m GET -o "results/raws/summary_${TARGET_NAME}_structured_responses_high_traffic.txt" "${TARGET_BASE}/structured-messages"
    echo -e "\n"

    echo -e "Running tests ${BLUE}Large Process - Basic${NC}\n"
    source ./scripts/benchmark.sh -c 100 -r 10000 -d 30 -t 15 -w 200 -n "$TARGET_NAME" -p "Large Process (Basic)" -m POST -o "results/raws/summary_${TARGET_NAME}_large_process_basic.txt" "${TARGET_BASE}/large-process"
    echo -e "\n"
    
    echo -e "Running tests ${BLUE}Large Process - High Traffic${NC}\n"
    source ./scripts/benchmark.sh -c 1000 -r 100000 -d 30 -t 15 -w 200 -n "$TARGET_NAME" -p "Large Process (High Traffic)" -m POST -o "results/raws/summary_${TARGET_NAME}_large_process_high_traffic.txt" "${TARGET_BASE}/large-process"
    echo -e "\n"
}

function usage() {
    echo -e "Usage: run ${YELLOW}[params] ${NC}" 
    echo -e "  Parameters:"
    echo -e "  -n | --name          Target name" 
    echo -e "  -b | --base          Target base url" 
    echo -e "  -p | --profile       Test profiles" 
    echo -e "  -h | --help          Show help" 
    echo -e "" 
    echo -e "Examples:" 
    echo -e "  run -n 'Net-Http' -b http://localhost:8080"
    echo -e "  run -p 'default' -n Net-Http -b http://localhost:8080"
}

function parse_args() {
    while [[ "$#" -gt 0 ]]; do
        case $1 in
            -n | --name) TARGET_NAME="$2"; shift ;;
            -b | --base) TARGET_BASE="$2"; shift ;;
            -p | --profile) PROFILE="$2"; shift ;;
            -h | --help) usage; return 1 ;;
            \?) error_exit "Invalid option -$OPTARG"; echo "\n"; usage; return 1 ;;
            *) error_exit "Unknown argument: $1"; usage; return 1 ;;
        esac
        shift
    done
}

function main() {
    parse_args "$@" || return 1
    
    run
}

main "$@"