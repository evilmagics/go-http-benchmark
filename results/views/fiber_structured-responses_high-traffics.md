# 🚀 Fiber: /structured-messages (High Traffic)

## 📋 Test Configuration
| Parameter | Value |
|-----------|-------|
| 🎯 Target | Fiber Framework |
| 🌐 URL | http://127.0.0.1:6002/structured-messages |
| 📡 Method | GET |
| 🔗 Connections | 1,000 |
| 📊 Target Requests | 100,000 |
| ⏱️ Duration | 30 seconds |
| 📅 Timestamp | 2025-06-30_21-27-38 |
| 🏷️ Profile | Structured Responses (High Traffic) |

## 🏃‍♂️ Performance Overview
| Tool | Total Requests | Duration | Avg Req/sec | Peak Req/sec | Success Rate |
|------|----------------|----------|-------------|--------------|--------------|
| **💥 Bombardier** | 100,000 | ~1.00s | 116,635.77 | 144,556.99 | 95.92% ⚠️ |
| **⚡ Go-Wrk** | 2,462,471 | 30.00s | 81,532.74 | 362,137.58 | 97.36% ⚠️ |
| **🌿 Vegeta** | 1,930,488 | 30.00s | 64,348.59 | 64,350.20 | 100.00% ✅ |

## ⏰ Latency Analysis
| Metric | 💥 Bombardier | ⚡ Go-Wrk | 🌿 Vegeta |
|--------|------------|---------|---------|
| **📊 Average** | 8.94ms | 2.761ms | 4.555ms |
| **📈 Standard Deviation** | 37.01ms | 6.133ms | N/A |
| **⚡ Minimum** | N/A | 0s | 515.6µs |
| **📊 50th Percentile** | 553.00µs | 0s | 3.059ms |
| **📈 75th Percentile** | 1.52ms | 0s | N/A |
| **📊 90th Percentile** | 2.60ms | N/A | 10.376ms |
| **📈 95th Percentile** | 11.12ms | N/A | 14.276ms |
| **🔺 99th Percentile** | 266.03ms | 0s | 24.918ms |
| **⚠️ Maximum** | 0.93s | 3.047679s | 90.284ms |

## 🔍 HTTP Response Analysis
| Tool | 2xx Responses | Total Errors | Success Rate | Error Details |
|------|---------------|--------------|--------------|---------------|
| **💥 Bombardier** | 95,923 | 4,077 | 95.92% ⚠️ | Connection refused errors |
| **⚡ Go-Wrk** | 2,397,539 | 64,932 | 97.36% ⚠️ | Timeout awaiting headers (275), Connection refused (64,657) |
| **🌿 Vegeta** | 1,930,488 | 0 | 100.00% ✅ | No errors |

## 📊 Throughput Analysis
| Tool | Throughput | Total Data | Transfer Rate |
|------|------------|------------|---------------|
| **💥 Bombardier** | 24.67 MB/s | N/A | 24.67 MB/s |
| **⚡ Go-Wrk** | 12.21 MB/s | 368.70 MB | 54.22 MB/s (peak) |
| **🌿 Vegeta** | N/A | 127.41 MB | N/A |

## 🔍 Key Observations

### 🎯 Performance Characteristics
- **Vegeta** demonstrated the most **stable performance** with 100% success rate and consistent throughput
- **Bombardier** achieved the **highest peak requests/sec** (144,556.99) but completed quickly due to connection issues
- **Go-Wrk** showed **extreme variability** with peak burst of 362,137.58 req/s but significant error rates

### ⚠️ Stability Issues
- **High connection count (1,000)** caused significant connection refused errors in Bombardier and Go-Wrk
- **Timeout issues** in Go-Wrk suggest the server was overwhelmed under sustained load
- **Vegeta's success** indicates better connection management and retry logic

### 📈 Latency Patterns
- **Bombardier** showed high latency variance (37ms stddev) with occasional spikes to 930ms
- **Go-Wrk** reported artificially low latencies (many 0s) likely due to measurement issues during errors
- **Vegeta** provided most reliable latency measurements with consistent sub-25ms 99th percentile

### 🚀 Throughput Insights
- **Peak throughput** reached 54.22 MB/s (Go-Wrk) during burst periods
- **Sustained throughput** averaged ~18.44 MB/s across successful operations
- **Data transfer efficiency** varied significantly between tools

### 🎯 Recommendations
- **Reduce concurrent connections** to 500 or fewer for more stable results
- **Implement connection pooling** and retry logic for production scenarios
- **Use Vegeta** for reliable benchmarking of sustained performance
- **Consider gradual ramp-up** instead of immediate full load

## 📈 Summary
### 🎯 Performance Metrics
- **📊 Average Requests/sec**: 87,505.70 req/s
- **🚀 Peak Requests/sec**: 362,137.58 req/s
- **✅ Overall Success Rate**: 97.76%
- **💨 Average Throughput**: 18.44 MB/s
- **🌐 Average Latency**: 5.42ms

---
<div align="center">
🔍 Researched with ❤️ by <span><a href="https://github.com/evilmagics">✨ Evilmagics 🌟</a></span>
</div>