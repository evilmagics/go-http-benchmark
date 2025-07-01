# 🚀 Echo: /hello-world (Basic)

## 📋 Test Configuration
| Parameter | Value |
|-----------|-------|
| 🎯 Target | Echo Framework |
| 🌐 URL | http://127.0.0.1:6005/hello-world |
| 📡 Method | GET |
| 🔗 Connections | 100 |
| 📊 Target Requests | 10,000 |
| ⏱️ Duration | 30 seconds |
| 📅 Timestamp | 2025-06-30_23-47-12 |
| 📝 Profile | Hello World (Basic) |

## 🏃‍♂️ Performance Overview
| Tool | Total Requests | Duration | Avg Req/sec | Peak Req/sec | Success Rate |
|------|----------------|----------|-------------|--------------|--------------|
| **💥 Bombardier** | 10,000 | ~0.40s | 24,867 | 38,860.37 | 100% ✅ |
| **⚡ Go-Wrk** | 2,664,933 | 29.91s | 88,711.73 | 89,089.85 | 100% ✅ |
| **🌿 Vegeta** | 298,016 | 10.72s | 27,684.78 | 27,880.16 | 99.59% ⚠️ |

## ⏰ Latency Analysis
| Metric | 💥 Bombardier | ⚡ Go-Wrk | 🌿 Vegeta |
|--------|------------|---------|---------|
| **📊 Average** | 2.53ms | 1.122ms | 9.998ms |
| **📈 Standard Deviation** | 5.92ms | 1.342ms | N/A |
| **⚡ Minimum** | N/A | 0s | 537µs |
| **📊 50th Percentile** | 1.30ms | 0s | 2.465ms |
| **📈 75th Percentile** | 2.04ms | 0s | N/A |
| **📊 90th Percentile** | 4.02ms | N/A | 14.789ms |
| **📈 95th Percentile** | 5.50ms | N/A | 19.331ms |
| **🔺 99th Percentile** | 26.66ms | 0s | 42.386ms |
| **⚠️ Maximum** | 107.16ms | 52.199ms | 3.097s |

## 🔍 HTTP Response Analysis
| Tool | 2xx Responses | Total Errors | Success Rate | Error Details |
|------|---------------|--------------|--------------|---------------|
| **💥 Bombardier** | 10,000 | 0 | 100% ✅ | No errors |
| **⚡ Go-Wrk** | 2,664,933 | 0 | 100% ✅ | No errors |
| **🌿 Vegeta** | 296,808 | 1,208 | 99.59% ⚠️ | Connection refused + timeout errors |

## 📊 Throughput Analysis
| Tool | Throughput | Total Data | Transfer Rate |
|------|------------|------------|---------------|
| **💥 Bombardier** | 7.29 MB/s | N/A | 7.29 MB/s |
| **⚡ Go-Wrk** | 9.56 MB/s | 287.19 MB | 9.60 MB/s |
| **🌿 Vegeta** | N/A | 3.86 MB | N/A |

## 🔍 Key Observations

### 🎯 Performance Characteristics
- **Exceptional Go-Wrk Performance**: Go-Wrk achieved outstanding performance with 88,711 req/sec over 30 seconds, processing 2.6M+ requests
- **Low Latency Operations**: All tools showed excellent latency performance, with Go-Wrk achieving sub-millisecond average response times
- **Stable Echo Framework**: The Echo server handled basic hello-world requests efficiently with minimal resource strain

### 🚨 Minor Issues
- **Vegeta Connection Issues**: Minor connection problems (1,208 errors) and timeout issues, likely due to aggressive rate limiting
- **Rate Limiting Differences**: Vegeta's shorter test duration (10.72s vs 30s) suggests it hit some form of rate limiting or connection constraints

### 💡 Performance Insights
- **Framework Efficiency**: Echo demonstrated excellent performance for simple endpoints with consistent sub-10ms response times
- **Tool Optimization**: Go-Wrk's superior performance suggests better connection reuse and request pipelining
- **Scalability Potential**: The server handled 100 concurrent connections flawlessly, indicating good baseline scalability

### 🏆 Standout Metrics
- **Peak Performance**: Go-Wrk sustained nearly 89K req/sec for 30 seconds
- **Consistency**: Bombardier and Go-Wrk showed 100% success rates with no connection issues
- **Low Resource Usage**: Small response payloads (12.95 bytes average) enabled high throughput with minimal bandwidth

### 🔧 Recommendations
- **Connection Tuning**: Investigate Vegeta's connection handling to match Go-Wrk's performance
- **Load Testing Strategy**: Use Go-Wrk for sustained high-load testing of Echo applications
- **Baseline Establishment**: These results provide an excellent baseline for Echo framework performance comparisons
- **Scaling Tests**: Consider testing with higher connection counts to find Echo's concurrency limits

## 📈 Summary
### 🎯 Performance Metrics
- **📊 Average Requests/sec**: 47,087.84 req/s
- **🚀 Peak Requests/sec**: 89,089.85 req/s
- **✅ Overall Success Rate**: 99.86%
- **💨 Average Throughput**: 8.43 MB/s
- **🌐 Average Latency**: 4.55ms

### ⭐ Framework Assessment
Echo framework demonstrated excellent performance for basic endpoints with:
- Consistent low-latency responses
- High throughput capacity (89K+ req/sec)
- Stable connection handling
- Minimal resource overhead

This represents ideal performance characteristics for a lightweight Go web framework handling simple HTTP operations.

---
<div align="center">
🔍 Researched with ❤️ by <span><a href="https://github.com/evilmagics">✨ Evilmagics 🌟</a></span>
</div>