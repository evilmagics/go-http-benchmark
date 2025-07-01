# Go HTTP Benchmark
Benchmarking most populars HTTP servers written in Go. 

# Targets
* [Http](https://pkg.go.dev/net/http)
* [Gin](https://github.com/gin-gonic/gin)
* [Fiber](https://github.com/gofiber/fiber)
* [GoFr](https://github.com/gofiber/fiber)
* [Beego](https://github.com/astaxie/beego)
* [Echo](https://github.com/labstack/echo)

## On the way
* [Chi](https://github.com/go-chi/chi)
* [Gorilla Mux](https://github.com/gorilla/mux)
* [Fasthttp](https://github.com/valyala/fasthttp)
* [HttpRouter](https://github.com/julienschmidt/httprouter)
* [Goji](https://github.com/zenazn/goji)

# Methodology
## Hardware
* CPU: Intel(R) Core(TM) i5-12500H CPU @ 2.50GHz
* RAM: 16GB
* OS: Windows 11

## Software
* Go v1.24.3 [🔗](https://go.dev/)
* Go-wrk v0.9 [🔗](https://github.com/tsliwowicz/go-wrk/)
* Bombardier v1.2.6 [🔗](https://github.com/codesenberg/bombardier/)
* Vegeta v12.12.0 [🔗](https://github.com/tsenart/vegeta/)

## Scripts
Currently, I'm using `bombardier`, `wrk`, and `Vegeta` to benchmark HTTP servers. All of them are available in the [scripts](./scripts) directory. Assume server have small traffic and high traffic benchmark. 

Handle under **10k requests** on **100 connections** as small traffic benchmark. Handle under **100k requests** on **1000 connections** as high traffic benchmark.

This script will generate a summary file that contains the following information:
* `Summary`: Summary of the benchmark
* `Requests/sec`: Requests per second
* `Success rate`: Success rate of the benchmark
* `Latency`: Latency of the benchmark
* `Latency Distribution`: Latency distribution of the benchmark (if available)

### Hello World
```bash
    # Basic benchmark
    benchmark.sh -c 100 -r 10000 -d 30 -t 3 -m "GET" -o "results/summary_${TARGET_NAME}_hello_world_basic.txt" "${TARGET_BASE}/hello-world"

    # High traffic benchmark
    benchmark.sh -c 1000 -r 100000 -d 30 -t 3 -m GET -o "results/summary_${TARGET_NAME}_hello_world_high_traffic.txt" "${TARGET_BASE}/hello-world"
```

### Structured Responses
```bash
    # Basic benchmark
    benchmark.sh -c 100 -r 10000 -d 30 -t 3 -m GET -o "results/summary_${TARGET_NAME}_structured_responses_basic.txt" "${TARGET_BASE}/structured-messages"

    # High concurrency benchmark
    benchmark.sh -c 1000 -r 100000 -d 30 -t 3 -m GET -o "results/summary_${TARGET_NAME}_structured_responses_high_traffic.txt" "${TARGET_BASE}/structured-messages"
```

### Large Process
```bash
    # Basic benchmark
    benchmark.sh -c 100 -r 10000 -d 30 -t 15 -m POST -o "results/summary_${TARGET_NAME}_large_process_basic.txt" "${TARGET_BASE}/large-process"

    # High concurrency benchmark
    benchmark.sh -c 1000 -r 100000 -d 30 -t 15 -m POST -o "results/summary_${TARGET_NAME}_large_process_high_traffic.txt" "${TARGET_BASE}/large-process"
```

# Configurations
## Address
```go
HostHttp       = "0.0.0.0:6000"
HostGin        = "0.0.0.0:6001"
HostFiber      = "0.0.0.0:6002"
HostGoFr       = "0.0.0.0:6003"
HostBeego      = "0.0.0.0:6004"
HostEcho       = "0.0.0.0:6005"
HostChi        = "0.0.0.0:6006"
HostMux        = "0.0.0.0:6007"
HostFastHttp   = "0.0.0.0:6008"
HostHttpRouter = "0.0.0.0:6009"
HostGoji       = "0.0.0.0:6010"
```

## Scripts
Easy to run all servers with the following command:
```go
// [Http]
source ./scripts/run.sh -n "net-http" -b "http://127.0.0.1:6000"

// [Gin]
source ./scripts/run.sh -n "gin" -b "http://127.0.0.1:6001"

// [Fiber]
source ./scripts/run.sh -n "fiber" -b "http://127.0.0.1:6002"

// [GoFr]
source ./scripts/run.sh -n "gofr" -b "http://127.0.0.1:6003"

// [Beego]
source ./scripts/run.sh -n "beego" -b "http://127.0.0.1:6004"

// [Echo]
source ./scripts/run.sh -n "echo" -b "http://127.0.0.1:6005"
```


# Results
***Coming soon...***

# License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

# Credits
* [Go-wrk](https://github.com/tsliwowicz/go-wrk/)
* [Bombardier](https://github.com/codesenberg/bombardier/)
* [Vegeta](https://github.com/tsenart/vegeta/)
* [Fiber](https://github.com/gofiber/fiber/)
* [Gin](https://github.com/gin-gonic/gin/)
* [GoFr](https://github.com/gofiber/fiber/)
* [Beego](https://github.com/astaxie/beego/)
* [Echo](https://github.com/labstack/echo/)
* [Chi](https://github.com/go-chi/chi/)
* [Gorilla Mux](https://github.com/gorilla/mux/)
* [Fasthttp](https://github.com/valyala/fasthttp/)
* [HttpRouter](https://github.com/julienschmidt/httprouter/)
* [Goji](https://github.com/zenazn/goji/)
* [Http](https://pkg.go.dev/net/http/)
