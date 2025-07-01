# 🚀 Fiber: /large-process (Basic)

## 📋 Test Configuration
| Parameter | Value |
|-----------|-------|
| 🎯 Target | Fiber Framework |
| 🌐 URL | http://127.0.0.1:6002/large-process |
| 📡 Method | POST |
| 🔗 Connections | 100 |
| 📊 Target Requests | 10,000 |
| ⏱️ Duration | 30 seconds |
| 📅 Timestamp | 2025-06-30_21-28-40 |

## 🏃‍♂️ Performance Overview
| Tool | Total Requests | Duration | Avg Req/sec | Peak Req/sec | Success Rate |
|------|----------------|----------|-------------|--------------|--------------|
| **💥 Bombardier** | 10,000 | ~1m40s | 101.24 | N/A | 100% ✅ |
| **⚡ Go-Wrk** | 3,000 | 30.04s | 99.86 | N/A | 100% ✅ |
| **🌿 Vegeta** | 19,758 | 31.04s | 657.67 | N/A | 75.92% ⚠️ |

## ⏰ Latency Analysis
| Metric | 💥 Bombardier | ⚡ Go-Wrk | 🌿 Vegeta |
|--------|------------|---------|---------|
| **📊 Average** | 1.00s | 1.001442s | 763.227ms |
| **📈 Standard Deviation** | 0.89ms | 1.845ms | N/A |
| **⚡ Minimum** | N/A | 1s | 511.2µs |
| **📊 50th Percentile** | 1.00s | 1.000063s | 1.001s |
| **📈 75th Percentile** | 1.00s | 1.000063s | N/A |
| **📊 90th Percentile** | 1.00s | N/A | 1.002s |
| **📈 95th Percentile** | 1.00s | N/A | 1.002s |
| **🔺 99th Percentile** | 1.01s | 1.000063s | 1.125s |
| **⚠️ Maximum** | 1.02s | 1.017503s | 1.255s |

## 🔍 HTTP Response Analysis
| Tool | 2xx Responses | Total Errors | Success Rate | Error Details |
|------|---------------|--------------|--------------|---------------|
| **💥 Bombardier** | 10,000 | 0 | 100% ✅ | No errors |
| **⚡ Go-Wrk** | 3,000 | 0 | 100% ✅ | No errors |
| **🌿 Vegeta** | 15,001 | 4,757 | 75.92% ⚠️ | Connection refused errors |

## 📊 Throughput Analysis
| Tool | Throughput | Total Data | Transfer Rate |
|------|------------|------------|---------------|
| **💥 Bombardier** | 32.28 KB/s | N/A | 32.28 KB/s |
| **⚡ Go-Wrk** | 17.46 KB/s | 524.41 KB | 17.40 KB/s |
| **🌿 Vegeta** | N/A | 1.32 MB | N/A |

## 🔍 Key Observations

### 🚨 Critical Findings
- **Extremely High Latency**: All tools show latencies around ~1 second, indicating the `/large-process` endpoint is computationally intensive or includes deliberate delays
- **Vegeta Connection Issues**: 24.08% failure rate due to connection refused errors, suggesting resource exhaustion under high load
- **Low Throughput**: Average throughput significantly lower compared to typical web server benchmarks

### 📈 Performance Characteristics
- **Consistent Response Times**: Bombardier and Go-Wrk show very stable ~1s response times with minimal deviation
- **Resource Limitations**: Vegeta's connection failures indicate the server reaches capacity limits around 657 req/s
- **Reliable Processing**: When connections succeed, the server maintains consistent processing times

### ⚖️ Tool Comparison
- **Bombardier**: Most reliable with 100% success rate but lowest req/sec (101.24)
- **Go-Wrk**: Balanced approach with 100% success and slightly lower latency variance
- **Vegeta**: Highest attempted load (657 req/s) but significant failure rate under pressure

### 🎯 Recommendations
1. **Optimize Endpoint**: The 1-second processing time suggests optimization opportunities
2. **Connection Pool Tuning**: Address connection refused errors for high-load scenarios
3. **Load Balancing**: Consider horizontal scaling for better throughput
4. **Resource Monitoring**: Monitor CPU/memory usage during peak loads

## 📈 Summary
### 🎯 Performance Metrics
- **📊 Average Requests/sec**: 286.26 req/s (across successful tools)
- **🚀 Peak Requests/sec**: 657.67 req/s (Vegeta attempted)
- **✅ Overall Success Rate**: 91.97%
- **💨 Average Throughput**: 24.87 KB/s
- **🌐 Average Latency**: 921.56ms

---
<div align="center">
🔍 Researched with ❤️ by <span><a href="https://github.com/evilmagics">✨ Evilmagics 🌟</a></span>
</div>