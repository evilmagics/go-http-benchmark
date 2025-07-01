# 🚀 Net-HTTP: /large-process (Basic)

## 📋 Test Configuration
| Parameter | Value |
|-----------|-------|
| 🎯 Target | Net-HTTP Framework |
| 🌐 URL | http://127.0.0.1:6000/large-process |
| 📡 Method | POST |
| 🔗 Connections | 100 |
| 📊 Target Requests | 10,000 |
| ⏱️ Duration | 30 seconds |
| 📅 Timestamp | 2025-06-30_21-05-15 |

## 🏃‍♂️ Performance Overview
| Tool | Total Requests | Duration | Avg Req/sec | Peak Req/sec | Success Rate |
|------|----------------|----------|-------------|--------------|--------------|
| **💥 Bombardier** | 10,000 | ~1m40s | 102.66 | 14,221.07 | 100% ✅ |
| **⚡ Go-Wrk** | 3,000 | 30.03s | 99.89 | N/A | 100% ✅ |
| **🌿 Vegeta** | 25,796 | 31.03s | 859.00 | N/A | 58.15% ⚠️ |

## ⏰ Latency Analysis
| Metric | 💥 Bombardier | ⚡ Go-Wrk | 🌿 Vegeta |
|--------|------------|---------|---------|
| **📊 Average** | 1.00s | 1.001108s | 590.591ms |
| **📈 Standard Deviation** | 0.88ms | 1.467ms | N/A |
| **⚡ Minimum** | N/A | 1s | 514.2µs |
| **📊 50th Percentile** | 1.00s | 1.000031s | 1s |
| **📈 75th Percentile** | 1.00s | 1.000031s | N/A |
| **📊 90th Percentile** | 1.00s | N/A | 1.001s |
| **📈 95th Percentile** | 1.00s | N/A | 1.002s |
| **🔺 99th Percentile** | 1.00s | 1.000031s | 1.206s |
| **⚠️ Maximum** | 1.02s | 1.019071s | 1.81s |

## 🔍 HTTP Response Analysis
| Tool | 2xx Responses | Total Errors | Success Rate | Error Details |
|------|---------------|--------------|--------------|---------------|
| **💥 Bombardier** | 10,000 | 0 | 100% ✅ | No errors |
| **⚡ Go-Wrk** | 3,000 | 0 | 100% ✅ | No errors |
| **🌿 Vegeta** | 15,001 | 10,795 | 58.15% ⚠️ | Connection refused errors |

## 📊 Throughput Analysis
| Tool | Throughput | Total Data | Transfer Rate |
|------|------------|------------|---------------|
| **💥 Bombardier** | 32.38 KB/s | N/A | 32.38 KB/s |
| **⚡ Go-Wrk** | 17.56 KB/s | 527.34 KB | 17.49 KB/s |
| **🌿 Vegeta** | N/A | 1.34 MB | N/A |

## 🔍 Key Observations

### ⚡ Performance Characteristics
- **Consistent 1-second response time**: All tools show response times clustered around 1 second, indicating the endpoint has intentional processing delay
- **Low throughput due to processing time**: Average requests per second ranges from 99-859, significantly lower than typical API endpoints
- **Stable latency profile**: Very low standard deviation (0.88ms-1.467ms) shows consistent server processing time

### 🚨 Critical Issues
- **Vegeta connection failures**: 41.85% failure rate with "connection refused" errors indicates server connection pool exhaustion under high load
- **Server resource limits**: The target machine appears to reject connections when overwhelmed, suggesting inadequate connection handling
- **Load balancing concerns**: Single-threaded or limited concurrent processing capability

### 📈 Tool Performance Comparison
- **Bombardier**: Most reliable with 100% success rate but longest total execution time (1m40s)
- **Go-Wrk**: Balanced performance with 100% success rate and reasonable throughput
- **Vegeta**: Highest attempted throughput (859 req/s) but significant connection failures

### 🎯 Recommendations
1. **Server optimization**: Increase connection pool size and concurrent request handling
2. **Load testing approach**: Use lower concurrency levels (50-75 connections) for more stable results
3. **Resource monitoring**: Monitor server CPU, memory, and connection limits during testing
4. **Gradual load increase**: Implement ramp-up testing to identify the server's breaking point

## 📈 Summary
### 🎯 Performance Metrics
- **📊 Average Requests/sec**: 353.85 req/s
- **🚀 Peak Requests/sec**: 14,221.07 req/s
- **✅ Overall Success Rate**: 86.05%
- **💨 Average Throughput**: 24.97 KB/s
- **🌐 Average Latency**: 864.23ms

---
<div align="center">
🔍 Researched with ❤️ by <span><a href="https://github.com/evilmagics">✨ Evilmagics 🌟</a></span>
</div>