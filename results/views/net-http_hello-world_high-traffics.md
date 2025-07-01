# 🚀 Net-HTTP: /hello-world (High Traffic)

## 📋 Test Configuration
| Parameter | Value |
|-----------|-------|
| 🎯 Target | Net-HTTP Framework |
| 🌐 URL | http://127.0.0.1:6000/hello-world |
| 📡 Method | GET |
| 🔗 Connections | 1,000 |
| 📊 Target Requests | 100,000 |
| ⏱️ Duration | 30 seconds |
| 📅 Timestamp | 2025-06-30_21-02-06 |
| 📈 Profile | Hello World (High Traffic) |

## 🏃‍♂️ Performance Overview
| Tool | Total Requests | Duration | Avg Req/sec | Peak Req/sec | Success Rate |
|------|----------------|----------|-------------|--------------|--------------|
| **💥 Bombardier** | 100,000 | ~1.24s | 88,442.34 | 131,316.94 | 92.17% ⚠️ |
| **⚡ Go-Wrk** | 2,192,194 | 30s | 72,099.10 | 395,699.71 | 96.20% ⚠️ |
| **🌿 Vegeta** | 1,866,385 | 30s | 62,204.08 | 62,210.86 | 99.99% ✅ |

## ⏰ Latency Analysis
| Metric | 💥 Bombardier | ⚡ Go-Wrk | 🌿 Vegeta |
|--------|------------|---------|---------|
| **📊 Average** | 10.99ms | 2.526ms | 4.658ms |
| **📈 Standard Deviation** | 35.49ms | 6.141ms | N/A |
| **⚡ Minimum** | N/A | 0s | 1.07ms |
| **📊 50th Percentile** | 1.03ms | 0s | 3.169ms |
| **📈 75th Percentile** | 2.05ms | 0s | N/A |
| **📊 90th Percentile** | 7.94ms | N/A | 10.609ms |
| **📈 95th Percentile** | 41.76ms | N/A | 14.589ms |
| **🔺 99th Percentile** | 194.55ms | 0s | 24.153ms |
| **⚠️ Maximum** | 1.15s | 2.970s | 307.093ms |

## 🔍 HTTP Response Analysis
| Tool | 2xx Responses | Total Errors | Success Rate | Error Details |
|------|---------------|--------------|--------------|---------------|
| **💥 Bombardier** | 92,166 | 7,834 | 92.17% ⚠️ | Connection refused errors |
| **⚡ Go-Wrk** | 2,108,812 | 83,382 | 96.20% ⚠️ | Connection refused (83,131), Timeout (251) |
| **🌿 Vegeta** | 1,866,380 | 5 | 99.99% ✅ | Connection refused errors |

## 📊 Throughput Analysis
| Tool | Throughput | Total Data | Transfer Rate |
|------|------------|------------|---------------|
| **💥 Bombardier** | 15.28 MB/s | N/A | 15.28 MB/s |
| **⚡ Go-Wrk** | 7.77 MB/s | 236.24 MB | 42.64 MB/s (Peak) |
| **🌿 Vegeta** | N/A | 24.26 MB | N/A |

## 🔍 Key Observations

### 🎯 Performance Highlights
- **🚀 Peak Performance**: Go-Wrk achieved the highest peak request rate at **395,699.71 req/s**
- **⚡ Sustained Throughput**: Bombardier showed strong sustained performance with **88,442.34 req/s** average
- **🎯 Reliability**: Vegeta demonstrated the most stable performance with **99.99% success rate**

### ⚠️ Critical Issues
- **🔥 Connection Saturation**: All tools experienced connection refused errors, indicating server capacity limits
- **📊 Error Rates**: High error rates (7.83% - 3.8%) suggest the server cannot handle 1,000 concurrent connections
- **⏱️ Latency Spikes**: Bombardier and Go-Wrk showed significant maximum latencies (1.15s and 2.97s respectively)

### 🛠️ Performance Bottlenecks
- **🔌 Connection Limits**: Server appears to hit connection limits under high concurrent load
- **⚡ Resource Exhaustion**: Go-Wrk timeout errors indicate server resource exhaustion
- **📈 Scalability Ceiling**: Performance degrades significantly beyond server's connection handling capacity

### 💡 Recommendations
- **🔧 Server Tuning**: Increase server connection pool and file descriptor limits
- **⚖️ Load Balancing**: Consider horizontal scaling for high-traffic scenarios
- **📊 Connection Management**: Implement connection pooling and keep-alive optimizations
- **🎯 Optimal Load**: Target ~500-700 concurrent connections for stable performance

## 📈 Summary
### 🎯 Performance Metrics
- **📊 Average Requests/sec**: 74,248.51 req/s
- **🚀 Peak Requests/sec**: 395,699.71 req/s
- **✅ Overall Success Rate**: 96.12%
- **💨 Average Throughput**: 11.53 MB/s
- **🌐 Average Latency**: 6.06ms

---
<div align="center">
🔍 Researched with ❤️ by <span><a href="https://github.com/evilmagics">✨ Evilmagics 🌟</a></span>
</div>