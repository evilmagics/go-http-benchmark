# 🚀 Go HTTP Benchmark ⚡  
**Benchmarking the most popular HTTP servers written in Go!** 🔥  

The benchmark compares various frameworks (Beego, Echo, Fiber, Gin, GoFr, Net/Http) across different profiles (Hello-World, Large-Process, Structured-Responses) under basic and high traffic conditions. Metrics include request rates, success rates, latencies, and throughput.

## 🎯 Targets  
✔️ [Http](https://pkg.go.dev/net/http) (go1.24.3)  
⚡ [Gin](https://github.com/gin-gonic/gin) (v1.10.1)  
🚀 [Fiber](https://github.com/gofiber/fiber) (v2.52.8)  
🔄 [GoFr](https://github.com/gofiber/fiber) (v1.42.1)  
🐝 [Beego](https://github.com/astaxie/beego) (v2.3.8)  
🌀 [Echo](https://github.com/labstack/echo) (v4.13.4)  

## 🚧 On the Way (Coming Soon!)  
🔜 [Chi](https://github.com/go-chi/chi)  
🦍 [Gorilla Mux](https://github.com/gorilla/mux)  
⚡ [Fasthttp](https://github.com/valyala/fasthttp)  
🛣️ [HttpRouter](https://github.com/julienschmidt/httprouter)  
🎋 [Goji](https://github.com/zenazn/goji)  

---

## 🔬 Methodology  

### 💻 **Hardware**  
- **CPU:** Intel(R) Core(TM) i5-12500H @ 2.50GHz  
- **RAM:** 16GB  
- **OS:** Windows 11  

### 🛠️ **Software**  
- **Go v1.24.3** [🔗](https://go.dev/)  
- **Go-wrk v0.9** [🔗](https://github.com/tsliwowicz/go-wrk/)  
- **Bombardier v1.2.6** [🔗](https://github.com/codesenberg/bombardier/)  
- **Vegeta v12.12.0** [🔗](https://github.com/tsenart/vegeta/)  

## 📜 **Scripts**  
Currently using `bombardier`, `wrk`, and `Vegeta` for benchmarking HTTP servers. All scripts are in the [📂 scripts](./scripts) directory.  

### 📊 **Benchmark Scenarios**  
- **Small Traffic:** **10k requests** | **100 connections**  
- **High Traffic:** **100k requests** | **1000 connections**  

### 🎯 Key Metrics
- **⚡ Avg Req/sec**: Average requests per second
- **🚀 Peak Req/sec**: Maximum requests per second
- **✅ Success Rate**: Percentage of successful requests
- **⏱️ Avg Latency**: Average response time in milliseconds
- **📤 Throughput**: Data transfer rate in MB/s

### 🖥️ **Hello World**  
```bash
# Basic benchmark  
benchmark.sh -c 100 -r 10000 -d 30 -t 3 -m "GET" -o "results/summary_${TARGET_NAME}_hello_world_basic.txt" "${TARGET_BASE}/hello-world"  

# High traffic benchmark  
benchmark.sh -c 1000 -r 100000 -d 30 -t 3 -m GET -o "results/summary_${TARGET_NAME}_hello_world_high_traffic.txt" "${TARGET_BASE}/hello-world"  
```

### 🏗️ **Structured Responses**  
```bash
# Basic benchmark  
benchmark.sh -c 100 -r 10000 -d 30 -t 3 -m GET -o "results/summary_${TARGET_NAME}_structured_responses_basic.txt" "${TARGET_BASE}/structured-messages"  

# High traffic benchmark  
benchmark.sh -c 1000 -r 100000 -d 30 -t 3 -m GET -o "results/summary_${TARGET_NAME}_structured_responses_high_traffic.txt" "${TARGET_BASE}/structured-messages"  
```

### 🏋️ **Large Process**  
```bash
# Basic benchmark  
benchmark.sh -c 100 -r 10000 -d 30 -t 15 -m POST -o "results/summary_${TARGET_NAME}_large_process_basic.txt" "${TARGET_BASE}/large-process"  

# High traffic benchmark  
benchmark.sh -c 1000 -r 100000 -d 30 -t 15 -m POST -o "results/summary_${TARGET_NAME}_large_process_high_traffic.txt" "${TARGET_BASE}/large-process"  
```

---

## ⚙️ **Configurations**  

### 🌐 **Addresses**  
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

### ▶️ **Run Servers Easily**  
```bash
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

---

## 📊 **Results**  

### Beego 🐝
- **Hello-World Basic**: High success rate (100% ✅), avg latency 1.89ms ⏱️
- **High Traffic**: Success rate drops to ~75% 😕, avg latency ↗️ to 15.36ms

### Echo 🔊
- **Hello-World Basic**: Excellent performance with 100% ✅ and 2.53ms ⏱️
- **High Traffic**: Maintains ~95% ✅ with 11.71ms ⏱️ (Very stable! 👍)

### Fiber 🧶
- **Hello-World Basic**: Outstanding! 100% ✅ and 0.94ms ⏱️ (Wow! 😲)
- **High Traffic**: Handles extreme loads (3.2M req/sec peak 🚀) with 96% ✅

### Gin 🍸
- **Hello-World Basic**: Solid performance with 100% ✅ and 6.07ms ⏱️
- **High Traffic**: Success rate drops to ~42% 😬 under high load

### GoFr 🐹
- **Hello-World Basic**: Good performance with 100% ✅ and 14.62ms ⏱️
- **High Traffic**: Success rate drops significantly to ~22.5% 📉 (Ouch! 😅)

### Net/Http 🌐
- **Hello-World Basic**: Excellent! 100% ✅ and 1.32ms ⏱️ (Standard library FTW! 🎉)
- **High Traffic**: Maintains ~92% ✅ with 10.99ms ⏱️ (Impressive! 👏)

## 🔍 Observations
1. Fiber 🧶 shows **exceptional** performance in both scenarios 😍
2. Net/Http 🌐 (standard library) performs surprisingly well - who needs frameworks? 🤯
3. Success rates generally decrease under high traffic 📉 (expected but important!)
4. Latencies increase significantly under high traffic ⏱️↗️
5. Structured responses generally have higher latencies than simple endpoints 📊

## 💡 Recommendations
- For **high-performance** needs: Consider Fiber 🧶 or Net/Http 🌐 (🔥 Hot picks!)
- For **balanced** needs: Echo 🔊 provides good performance with reasonable resource usage ⚖️
- For **complex** applications: Beego 🐝 and Gin 🍸 offer good features but with performance trade-offs 🤔
- If seeing low success rates: May need to optimize or scale your infrastructure 🛠️

## 📜 **License**  
📄 **MIT License** – See [LICENSE](LICENSE) for details.  

---

## 🙏 **Credits**  
⚡ [Go-wrk](https://github.com/tsliwowicz/go-wrk/)  
💣 [Bombardier](https://github.com/codesenberg/bombardier/)  
🎯 [Vegeta](https://github.com/tsenart/vegeta/)  
🚀 [Fiber](https://github.com/gofiber/fiber/)  
⚡ [Gin](https://github.com/gin-gonic/gin/)  
🔄 [GoFr](https://github.com/gofiber/fiber/)  
🐝 [Beego](https://github.com/astaxie/beego/)  
🌀 [Echo](https://github.com/labstack/echo/)  
🔜 [Chi](https://github.com/go-chi/chi)  
🦍 [Gorilla Mux](https://github.com/gorilla/mux)  
⚡ [Fasthttp](https://github.com/valyala/fasthttp)  
🛣️ [HttpRouter](https://github.com/julienschmidt/httprouter)  
🎋 [Goji](https://github.com/zenazn/goji)  
✔️ [Http](https://pkg.go.dev/net/http/)  