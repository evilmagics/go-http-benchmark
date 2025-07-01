# 🚀 Echo: /large-process (Large Process - Basic)

## 📋 Test Configuration
| Parameter | Value |
|-----------|-------|
| 🎯 Target | Echo Framework |
| 🌐 URL | http://127.0.0.1:6005/large-process |
| 📡 Method | POST |
| 🔗 Connections | 100 |
| 📊 Target Requests | 10,000 |
| ⏱️ Duration | 30 seconds |
| 📅 Timestamp | 2025-06-30_23-54-27 |

## 🏃‍♂️ Performance Overview
| Tool | Total Requests | Duration | Avg Req/sec | Peak Req/sec | Success Rate |
|------|----------------|----------|-------------|--------------|--------------|
| **💥 Bombardier** | 10,000 | 1m40s | 100.37 | 4,925.41 | 100% ✅ |
| **⚡ Go-Wrk** | 3,000 | 30.08s | 99.74 | N/A | 100% ✅ |
| **🌿 Vegeta** | 20,149 | 31.05s | 670.59 | N/A | 74.45% ⚠️ |

## ⏰ Latency Analysis
| Metric | 💥 Bombardier | ⚡ Go-Wrk | 🌿 Vegeta |
|--------|------------|---------|---------|
| **📊 Average** | 1.00s | 1.002573s | 750.128ms |
| **📈 Standard Deviation** | 2.43ms | 1.982ms | N/A |
| **⚡ Minimum** | N/A | 1s | 514.7µs |
| **📊 50th Percentile** | 1.00s | 1.000095s | 1.001s |
| **📈 75th Percentile** | 1.00s | 1.000127s | N/A |
| **📊 90th Percentile** | 1.00s | N/A | 1.004s |
| **📈 95th Percentile** | 1.01s | N/A | 1.007s |
| **🔺 99th Percentile** | 1.02s | 1.000127s | 1.143s |
| **⚠️ Maximum** | 1.06s | 1.016351s | 1.325s |

## 🔍 HTTP Response Analysis
| Tool | 2xx Responses | Total Errors | Success Rate | Error Details |
|------|---------------|--------------|--------------|---------------|
| **💥 Bombardier** | 10,000 | 0 | 100% ✅ | No errors |
| **⚡ Go-Wrk** | 3,000 | 0 | 100% ✅ | No errors |
| **🌿 Vegeta** | 15,001 | 5,148 | 74.45% ⚠️ | Connection refused errors |

## 📊 Throughput Analysis
| Tool | Throughput | Total Data | Transfer Rate |
|------|------------|------------|---------------|
| **💥 Bombardier** | 32.33 KB/s | N/A | 32.33 KB/s |
| **⚡ Go-Wrk** | 17.53 KB/s | 527.34 KB | 17.48 KB/s |
| **🌿 Vegeta** | N/A | 1.34 MB | N/A |

## 🔍 Key Observations

### 🎯 Performance Characteristics
- **⏱️ Consistent High Latency**: All tools show latencies around 1 second, indicating the endpoint performs heavy processing operations
- **🐌 Low Throughput**: Request rates are significantly lower (99-671 req/s) compared to typical lightweight endpoints
- **📈 Processing-Heavy Workload**: The ~1 second response time suggests CPU/IO intensive operations

### 🛠️ Tool-Specific Insights
- **💥 Bombardier**: Most reliable with 100% success rate but took 1m40s to complete 10,000 requests
- **⚡ Go-Wrk**: Consistent performance with excellent reliability, completed only 3,000 requests in 30s
- **🌿 Vegeta**: Highest request rate (670.59 req/s) but suffered 25.55% failure rate due to connection issues

### ⚠️ Infrastructure Observations
- **🔌 Connection Limits**: Vegeta's connection refused errors suggest the server hit connection limits under aggressive load
- **🎯 Resource Constraints**: The consistent 1-second latency across tools indicates server-side processing bottlenecks
- **📊 Stability Trade-off**: Higher request rates correlate with increased error rates

### 🏆 Recommendations
- **🔧 Connection Pool Tuning**: Increase server connection limits and configure proper connection pooling
- **⚡ Performance Optimization**: Profile the /large-process endpoint to identify bottlenecks
- **📈 Load Testing Strategy**: Use gradual ramp-up patterns for resource-intensive endpoints
- **🛡️ Circuit Breaker**: Implement circuit breaker patterns to handle overload scenarios gracefully

## 📈 Summary
### 🎯 Performance Metrics
- **📊 Average Requests/sec**: 290.23 req/s
- **🚀 Peak Requests/sec**: 4,925.41 req/s
- **✅ Overall Success Rate**: 83.15%
- **💨 Average Throughput**: 24.93 KB/s
- **🌐 Average Latency**: 917.57ms

---
<div align="center">
🔍 Researched with ❤️ by <span><a href="https://github.com/evilmagics">✨ Evilmagics 🌟</a></span>
</div>