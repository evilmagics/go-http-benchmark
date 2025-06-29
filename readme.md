# Go HTTP Benchmark
Benchmarking most populars HTTP servers written in Go.

# Targets
* [Http](https://pkg.go.dev/net/http)
* [Gin](https://github.com/gin-gonic/gin)
* [Fiber](https://github.com/gofiber/fiber)
* [Echo](https://github.com/labstack/echo)
* [GoFr](https://github.com/gofiber/fiber)

## On the way
* [Beego](https://github.com/astaxie/beego)
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
Currently, I'm using `bombardier`, `wrk`, and `hey` to benchmark HTTP servers. All of them are available in the [scripts](./scripts) directory. Assume server have small traffic and high traffic benchmark. 

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
