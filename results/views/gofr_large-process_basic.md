# 🚀 GoFr: /large-process (Large Process Basic)

## 📋 Test Configuration
| Parameter | Value |
|-----------|-------|
| 🎯 Target | GoFr Framework |
| 🌐 URL | http://127.0.0.1:6003/large-process |
| 📡 Method | POST |
| 🔗 Connections | 100 |
| 📊 Target Requests | 10,000 |
| ⏱️ Duration | 30 seconds |
| 📅 Timestamp | 2025-06-30_21-46-29 |

## 🏃‍♂️ Performance Overview
| Tool | Total Requests | Duration | Avg Req/sec | Peak Req/sec | Success Rate |
|------|----------------|----------|-------------|--------------|--------------|
| **💥 Bombardier** | 10,000 | ~1m40s | 99.94 | 1,890.81 | 100% ✅ |
| **⚡ Go-Wrk** | 3,000 | 30.10s | 99.67 | N/A | 100% ✅ |
| **🌿 Vegeta** | 19,525 | 31.07s | 649.28 | N/A | 76.83% ⚠️ |

## ⏰ Latency Analysis
| Metric | 💥 Bombardier | ⚡ Go-Wrk | 🌿 Vegeta |
|--------|------------|---------|---------|
| **📊 Average** | 1.00s | 1.003s | 774.777ms |
| **📈 Standard Deviation** | 4.41ms | 6.756ms | N/A |
| **⚡ Minimum** | N/A | 1s | 534.1µs |
| **📊 50th Percentile** | 1.00s | 1.000159s | 1.001s |
| **📈 75th Percentile** | 1.00s | 1.000351s | N/A |
| **📊 90th Percentile** | 1.00s | N/A | 1.004s |
| **📈 95th Percentile** | 1.00s | N/A | 1.008s |
| **🔺 99th Percentile** | 1.01s | 1.000447s | 1.149s |
| **⚠️ Maximum** | 1.08s | 1.062143s | 1.29s |

## 🔍 HTTP Response Analysis
| Tool | 2xx Responses | Total Errors | Success Rate | Error Details |
|------|---------------|--------------|--------------|---------------|
| **💥 Bombardier** | 10,000 | 0 | 100% ✅ | No errors |
| **⚡ Go-Wrk** | 3,000 | 0 | 100% ✅ | No errors |
| **🌿 Vegeta** | 15,001 | 4,524 | 76.83% ⚠️ | Connection refused errors |

## 📊 Throughput Analysis
| Tool | Throughput | Total Data | Transfer Rate |
|------|------------|------------|---------------|
| **💥 Bombardier** | 58.34 KB/s | N/A | 58.34 KB/s |
| **⚡ Go-Wrk** | 43.02 KB/s | 1.26 MB | 42.89 KB/s |
| **🌿 Vegeta** | N/A | 1.47 MB | N/A |

## 📈 Summary
### 🎯 Performance Metrics
- **📊 Average Requests/sec**: 282.96 req/s
- **🚀 Peak Requests/sec**: 1,890.81 req/s
- **✅ Overall Success Rate**: 92.28%
- **💨 Average Throughput**: 50.68 KB/s
- **🌐 Average Latency**: 925.92ms

## 🔍 Key Observations

### 🎯 Performance Characteristics
- **High Latency Processing**: All tools consistently show ~1 second response times, indicating the `/large-process` endpoint intentionally simulates heavy computational work
- **Stable Response Times**: Very low standard deviation (4-7ms) across tools suggests consistent processing time regardless of load
- **Limited Concurrency**: The endpoint appears to be CPU-bound or contains deliberate delays, preventing high throughput scaling

### ⚡ Tool-Specific Insights
- **Bombardier**: Most reliable with 100% success rate but took significantly longer (~1m40s) to complete all requests
- **Go-Wrk**: Efficient and reliable, completing 3,000 requests in exactly 30 seconds with perfect success rate
- **Vegeta**: Highest request rate (649 req/s) but suffered from 23% connection failures, likely due to aggressive load generation

### 🚨 Performance Bottlenecks
- **Connection Handling**: Vegeta's connection refused errors suggest the server may have connection limits or pool exhaustion under high load
- **Processing Bound**: ~1 second consistent latency indicates the endpoint is designed for heavy processing rather than high-throughput scenarios
- **Resource Constraints**: The dramatic difference in completion times suggests resource contention under sustained load

### 💡 Recommendations
- **Optimize for Batch Processing**: Consider implementing request queuing for heavy computational endpoints
- **Connection Pool Tuning**: Increase server connection limits to handle burst traffic better
- **Monitoring**: Implement detailed monitoring for CPU and memory usage during heavy processing loads
- **Load Balancing**: Consider horizontal scaling for compute-intensive operations

---
<div align="center">
🔍 Researched with ❤️ by <span><a href="https://github.com/evilmagics">✨ Evilmagics 🌟</a></span>
</div>