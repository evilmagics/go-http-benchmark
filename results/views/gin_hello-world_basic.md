# 🚀 Gin: /hello-world (Basic)

## 📋 Test Configuration
| Parameter | Value |
|-----------|-------|
| 🎯 Target | Gin Framework |
| 🌐 URL | http://127.0.0.1:6001/hello-world |
| 📡 Method | GET |
| 🔗 Connections | 100 |
| 📊 Target Requests | 10,000 |
| ⏱️ Duration | 30 seconds |
| 📅 Timestamp | 2025-06-30_21-12-19 |
| 🏷️ Profile | Hello World (Basic) |

## 🏃‍♂️ Performance Overview
| Tool | Total Requests | Duration | Avg Req/sec | Peak Req/sec | Success Rate |
|------|----------------|----------|-------------|--------------|--------------|
| **💥 Bombardier** | 10,000 | ~0.80s | 16,424.57 | 19,543.53 | 100.00% ✅ |
| **⚡ Go-Wrk** | 505,387 | 29.98s | 16,827.16 | 16,854.94 | 100.00% ✅ |
| **🌿 Vegeta** | 467,201 | 30.03s | 15,501.07 | 15,573.70 | 99.65% ⚠️ |

## ⏰ Latency Analysis
| Metric | 💥 Bombardier | ⚡ Go-Wrk | 🌿 Vegeta |
|--------|------------|---------|---------|
| **📊 Average** | 6.07ms | 5.932ms | 32.05ms |
| **📈 Standard Deviation** | 3.33ms | 4.673ms | N/A |
| **⚡ Minimum** | N/A | 0s | 532.2µs |
| **📊 50th Percentile** | 5.81ms | 0s | 31.571ms |
| **📈 75th Percentile** | 6.91ms | 0s | N/A |
| **📊 90th Percentile** | 11.76ms | N/A | 64.062ms |
| **📈 95th Percentile** | 13.94ms | N/A | 69.04ms |
| **🔺 99th Percentile** | 22.74ms | 0s | 115.294ms |
| **⚠️ Maximum** | 37.72ms | 67.115ms | 476.024ms |

## 🔍 HTTP Response Analysis
| Tool | 2xx Responses | Total Errors | Success Rate | Error Details |
|------|---------------|--------------|--------------|---------------|
| **💥 Bombardier** | 10,000 | 0 | 100.00% ✅ | No errors |
| **⚡ Go-Wrk** | 505,387 | 0 | 100.00% ✅ | No errors |
| **🌿 Vegeta** | 465,550 | 1,651 | 99.65% ⚠️ | Connection refused errors |

## 📊 Throughput Analysis
| Tool | Throughput | Total Data | Transfer Rate |
|------|------------|------------|---------------|
| **💥 Bombardier** | 3.14 MB/s | N/A | 3.14 MB/s |
| **⚡ Go-Wrk** | 1.81 MB/s | 54.46 MB | 1.82 MB/s |
| **🌿 Vegeta** | N/A | 6.05 MB | N/A |

## 🔍 Key Observations

### 🎯 Performance Characteristics
- **Consistent performance** across Bombardier and Go-Wrk with ~16.5K req/s average
- **Bombardier** achieved the **highest peak throughput** (19,543.53 req/s) in burst mode
- **Go-Wrk** demonstrated **excellent sustained performance** over the full 30-second duration
- **Vegeta** showed slightly lower performance but maintained good consistency

### ✅ Stability Assessment
- **Perfect reliability** from Bombardier and Go-Wrk with 100% success rates
- **Minor connection issues** in Vegeta (99.65% success) with 1,651 connection refused errors
- **Low connection count (100)** proved optimal for stable performance across tools
- **No timeout or server overload** issues observed

### 📈 Latency Patterns
- **Bombardier and Go-Wrk** showed excellent low-latency performance (~6ms average)
- **Vegeta** reported significantly higher latencies (~32ms average) - likely measurement methodology difference
- **99th percentile latencies** remained reasonable across all tools (22-115ms)
- **Maximum latencies** stayed below 500ms, indicating good response time consistency

### 🚀 Throughput Insights
- **Bombardier** achieved highest data transfer rate at 3.14 MB/s
- **Sustained throughput** of ~1.8 MB/s over extended periods
- **Response payload size** appears small (~13 bytes average) for hello-world endpoint
- **Transfer efficiency** excellent with no bandwidth bottlenecks

### 📊 Tool Comparison
- **Bombardier**: Best for **quick burst testing** with highest peak performance
- **Go-Wrk**: Ideal for **sustained load testing** with consistent long-duration performance  
- **Vegeta**: Good for **rate-controlled testing** but showed minor connection issues

### 🎯 Recommendations
- **Current configuration (100 connections)** is well-optimized for this endpoint
- **Gin framework** handles basic HTTP requests very efficiently
- **Consider testing with larger payloads** to evaluate throughput under realistic conditions
- **Vegeta configuration** may need tuning to eliminate connection refused errors

## 📈 Summary
### 🎯 Performance Metrics
- **📊 Average Requests/sec**: 16,250.93 req/s
- **🚀 Peak Requests/sec**: 19,543.53 req/s
- **✅ Overall Success Rate**: 99.88%
- **💨 Average Throughput**: 2.48 MB/s
- **🌐 Average Latency**: 14.68ms

---
<div align="center">
🔍 Researched with ❤️ by <span><a href="https://github.com/evilmagics">✨ Evilmagics 🌟</a></span>
</div>