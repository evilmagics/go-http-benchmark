# 🚀 Fiber: /hello-world (High Traffic)

## 📋 Test Configuration
| Parameter | Value |
|-----------|-------|
| 🎯 Target | Fiber Framework |
| 🌐 URL | http://127.0.0.1:6002/hello-world |
| 📡 Method | GET |
| 🔗 Connections | 1,000 |
| 📊 Target Requests | 100,000 |
| ⏱️ Duration | 30 seconds |
| 📅 Timestamp | 2025-06-30_21-22-34 |
| 📈 Profile | Hello World (High Traffic) |

## 🏃‍♂️ Performance Overview
| Tool | Total Requests | Duration | Avg Req/sec | Peak Req/sec | Success Rate |
|------|----------------|----------|-------------|--------------|--------------|
| **💥 Bombardier** | 100,000 | ~1.43s | 75,968.86 | 105,221.17 | 96.12% ⚠️ |
| **⚡ Go-Wrk** | 2,036,456 | 30.62s | 67,265.77 | 3,293,448.40 | 91.44% ⚠️ |
| **🌿 Vegeta** | 2,144,900 | 30.00s | 71,493.84 | 71,495.11 | 100% ✅ |

## ⏰ Latency Analysis
| Metric | 💥 Bombardier | ⚡ Go-Wrk | 🌿 Vegeta |
|--------|------------|---------|---------|
| **📊 Average** | 12.11ms | 303µs | 3.741ms |
| **📈 Standard Deviation** | 59.99ms | 6.724ms | N/A |
| **⚡ Minimum** | N/A | 0s | 3.125ms |
| **📊 50th Percentile** | 0.00µs | 0s | 2.966ms |
| **📈 75th Percentile** | 0.00µs | 0s | N/A |
| **📊 90th Percentile** | 551.00µs | N/A | 7.99ms |
| **📈 95th Percentile** | 653.00µs | N/A | 10.108ms |
| **🔺 99th Percentile** | 287.08ms | 0s | 15.383ms |
| **⚠️ Maximum** | 1.35s | 2.852s | 73.618ms |

## 🔍 HTTP Response Analysis
| Tool | 2xx Responses | Total Errors | Success Rate | Error Details |
|------|---------------|--------------|--------------|---------------|
| **💥 Bombardier** | 96,119 | 3,881 | 96.12% ⚠️ | Connection refused errors |
| **⚡ Go-Wrk** | 1,862,115 | 174,341 | 91.44% ⚠️ | Connection refused (174,028), Timeout (313) |
| **🌿 Vegeta** | 2,144,900 | 0 | 100% ✅ | No errors |

## 📊 Throughput Analysis
| Tool | Throughput | Total Data | Transfer Rate |
|------|------------|------------|---------------|
| **💥 Bombardier** | 13.79 MB/s | N/A | 13.79 MB/s |
| **⚡ Go-Wrk** | 7.25 MB/s | 219.46 MB | 354.92 MB/s (burst) |
| **🌿 Vegeta** | N/A | 27.88 MB | N/A |

## 📈 Summary
### 🎯 Performance Metrics
- **📊 Average Requests/sec**: 71,576.16 req/s
- **🚀 Peak Requests/sec**: 3,293,448.40 req/s
- **✅ Overall Success Rate**: 95.85%
- **💨 Average Throughput**: 10.52 MB/s
- **🌐 Average Latency**: 5.38ms

## 🔍 Key Observations

### 🎯 Performance Highlights
- **Vegeta** achieved the most consistent performance with 100% success rate and stable throughput
- **Go-Wrk** demonstrated exceptional burst capability with over 3.2M req/s peak performance
- **Bombardier** showed moderate performance with the highest average latency due to connection issues

### ⚠️ Critical Issues
- **High Connection Failure Rate**: Both Bombardier and Go-Wrk experienced significant connection refused errors
- **Resource Saturation**: The high connection count (1,000) appears to exceed the server's connection handling capacity
- **Latency Variance**: Bombardier showed high latency standard deviation (59.99ms), indicating inconsistent response times

---
<div align="center">
🔍 Researched with ❤️ by <span><a href="https://github.com/evilmagics">✨ Evilmagics 🌟</a></span>
</div>