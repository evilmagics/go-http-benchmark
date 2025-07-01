# 🚀 GoFr: /structured-messages (Basic)

## 📋 Test Configuration
| Parameter | Value |
|-----------|-------|
| 🎯 Target | GoFr Framework |
| 🌐 URL | http://127.0.0.1:6003/structured-messages |
| 📡 Method | GET |
| 🔗 Connections | 100 |
| 📊 Target Requests | 10,000 |
| ⏱️ Duration | 30 seconds |
| 📅 Timestamp | 2025-06-30_21-44-19 |
| 🎯 Profile | Structured Responses (Basic) |

## 🏃‍♂️ Performance Overview
| Tool | Total Requests | Duration | Avg Req/sec | Peak Req/sec | Success Rate |
|------|----------------|----------|-------------|--------------|--------------|
| **💥 Bombardier** | 10,000 | ~1.60s | 6,862.94 | 8,798.72 | 100% ✅ |
| **⚡ Go-Wrk** | 215,259 | 29.99s | 7,176.52 | N/A | 100% ✅ |
| **🌿 Vegeta** | 209,817 | 30.08s | 6,993.93 | N/A | 98.95% ⚠️ |

## ⏰ Latency Analysis
| Metric | 💥 Bombardier | ⚡ Go-Wrk | 🌿 Vegeta |
|--------|------------|---------|---------|
| **📊 Average** | 14.52ms | 13.933ms | 71.434ms |
| **📈 Standard Deviation** | 1.61ms | 1.316ms | N/A |
| **⚡ Minimum** | N/A | 2.454ms | 1.226ms |
| **📊 50th Percentile** | 14.03ms | 12.239ms | 71.42ms |
| **📈 75th Percentile** | 15.24ms | 12.263ms | N/A |
| **📊 90th Percentile** | 16.82ms | N/A | 76.474ms |
| **📈 95th Percentile** | 18.32ms | N/A | 78.341ms |
| **🔺 99th Percentile** | 24.01ms | 12.282ms | 82.73ms |
| **⚠️ Maximum** | 29.66ms | 34.315ms | 281.633ms |

## 🔍 HTTP Response Analysis
| Tool | 2xx Responses | Total Errors | Success Rate | Error Details |
|------|---------------|--------------|--------------|---------------|
| **💥 Bombardier** | 10,000 | 0 | 100% ✅ | No errors |
| **⚡ Go-Wrk** | 215,259 | 0 | 100% ✅ | No errors |
| **🌿 Vegeta** | 207,622 | 2,195 | 98.95% ⚠️ | Connection refused errors |

## 📊 Throughput Analysis
| Tool | Throughput | Total Data | Transfer Rate |
|------|------------|------------|---------------|
| **💥 Bombardier** | 3.38 MB/s | N/A | 3.38 MB/s |
| **⚡ Go-Wrk** | 2.87 MB/s | 86.22 MB | 2.87 MB/s |
| **🌿 Vegeta** | 6,903.24 req/s | 15.78 MB | N/A |

## 📈 Summary
### 🎯 Performance Metrics
- **📊 Average Requests/sec**: 7,010.80 req/s
- **🚀 Peak Requests/sec**: 8,798.72 req/s
- **✅ Overall Success Rate**: 99.65%
- **💨 Average Throughput**: 3.13 MB/s
- **🌐 Average Latency**: 33.30ms

## 🔍 Key Observations

### ✅ Positive Performance Indicators
- **🎯 Excellent Success Rates**: Bombardier and Go-Wrk achieved 100% success rates, indicating stable connection handling
- **⚡ Consistent Throughput**: All tools achieved solid request rates (6.8K-7.2K req/s) with minimal variation
- **📊 Low Latency Variance**: Bombardier and Go-Wrk showed very consistent latency (1.3-1.6ms std dev)
- **🚀 Fast Request Processing**: Sub-20ms average latencies for most tools demonstrate efficient endpoint processing

### 📊 Performance Characteristics
- **💥 Bombardier Excellence**: Fastest completion time (~1.6s) with highest peak throughput (8,798 req/s)
- **⚡ Go-Wrk Consistency**: Most stable performance with lowest latency variance and highest overall request volume
- **🌿 Vegeta Anomaly**: Higher average latency (71ms) suggests different load distribution or measurement methodology

### 🔧 Framework Assessment
- **📈 Scalability**: GoFr handles moderate concurrent loads (100 connections) very effectively
- **🎯 Endpoint Efficiency**: The `/structured-messages` endpoint demonstrates well-optimized response handling
- **💪 Resource Management**: Minimal connection issues suggest proper resource allocation for this load level

### 🚀 Strengths Identified
- **🔄 Connection Stability**: Near-perfect success rates indicate robust connection management
- **⚡ Response Consistency**: Low latency variance shows predictable performance characteristics
- **📊 Throughput Efficiency**: Consistent ~7K req/s across different testing tools validates performance reliability

### 💡 Optimization Opportunities
- **🔍 Vegeta Investigation**: The higher latency in Vegeta testing warrants further investigation
- **📈 Load Scaling**: Test with higher connection counts to identify scaling limits
- **🎯 Throughput Tuning**: Potential for higher throughput optimization based on Bombardier's peak performance

### 🏆 Benchmark Verdict
The GoFr framework demonstrates **excellent performance** for structured response handling under moderate load conditions. This represents a significant improvement over the previous high-traffic test, suggesting the framework is well-suited for typical web application workloads when properly configured.

---
<div align="center">
🔍 Researched with ❤️ by <span><a href="https://github.com/evilmagics">✨ Evilmagics 🌟</a></span>
</div>