# 🚀 GoFr: /hello-world (Basic)

## 📋 Test Configuration
| Parameter | Value |
|-----------|-------|
| 🎯 Target | GoFr Framework |
| 🌐 URL | http://127.0.0.1:6003/hello-world |
| 📡 Method | GET |
| 🔗 Connections | 100 |
| 📊 Target Requests | 10,000 |
| ⏱️ Duration | 30 seconds |
| 📅 Timestamp | 2025-06-30_21-42-10 |
| 🏷️ Profile | Hello World (Basic) |

## 🏃‍♂️ Performance Overview
| Tool | Total Requests | Duration | Avg Req/sec | Peak Req/sec | Success Rate |
|------|----------------|----------|-------------|--------------|--------------|
| **💥 Bombardier** | 10,000 | ~1.60s | 6,841.85 | 9,325.65 | 100% ✅ |
| **⚡ Go-Wrk** | 217,202 | 30.00s | 7,240.99 | N/A | 100% ✅ |
| **🌿 Vegeta** | 210,603 | 30.07s | 7,020.20 | N/A | 99.22% ✅ |

## ⏰ Latency Analysis
| Metric | 💥 Bombardier | ⚡ Go-Wrk | 🌿 Vegeta |
|--------|------------|---------|---------|
| **📊 Average** | 14.62ms | 13.809ms | 71.204ms |
| **📈 Standard Deviation** | 1.76ms | 1.199ms | N/A |
| **⚡ Minimum** | N/A | 2.541ms | 548µs |
| **📊 50th Percentile** | 13.84ms | 12.223ms | 71.103ms |
| **📈 75th Percentile** | 15.43ms | 12.248ms | N/A |
| **📊 90th Percentile** | 18.03ms | N/A | 75.859ms |
| **📈 95th Percentile** | 19.68ms | N/A | 77.388ms |
| **🔺 99th Percentile** | 23.07ms | 12.266ms | 80.954ms |
| **⚠️ Maximum** | 31.44ms | 34.135ms | 237.523ms |

## 🔍 HTTP Response Analysis
| Tool | 2xx Responses | Total Errors | Success Rate | Error Details |
|------|---------------|--------------|--------------|---------------|
| **💥 Bombardier** | 10,000 | 0 | 100% ✅ | No errors |
| **⚡ Go-Wrk** | 217,202 | 0 | 100% ✅ | No errors |
| **🌿 Vegeta** | 208,962 | 1,641 | 99.22% ✅ | Minor connection refused errors |

## 📊 Throughput Analysis
| Tool | Throughput | Total Data | Transfer Rate |
|------|------------|------------|---------------|
| **💥 Bombardier** | 2.97 MB/s | N/A | 2.97 MB/s |
| **⚡ Go-Wrk** | 2.55 MB/s | 76.43 MB | 2.55 MB/s |
| **🌿 Vegeta** | N/A | 5.22 MB | N/A |

## 📈 Summary
### 🎯 Performance Metrics
- **📊 Average Requests/sec**: 7,034.35 req/s
- **🚀 Peak Requests/sec**: 9,325.65 req/s
- **✅ Overall Success Rate**: 99.74%
- **💨 Average Throughput**: 2.76 MB/s
- **🌐 Average Latency**: 33.21ms

## 🔍 Key Observations

### 📊 GoFr Framework Performance Profile
- **Moderate Throughput**: Consistent performance around 7,000 req/s across all tools
- **Excellent Reliability**: Near-perfect success rates (99.22% - 100%) with minimal errors
- **Stable Latencies**: Low standard deviation indicates consistent response times
- **Clean Error Profile**: Only minor connection refused errors in Vegeta (1,641 out of 210,603)

### 🔄 Comparative Framework Analysis vs Gin
**GoFr vs Gin Hello-World Performance:**
- **Throughput**: GoFr ~7K req/s vs Gin ~15K req/s (Gin 2.1x faster)
- **Latency**: GoFr ~14-71ms vs Gin ~6-34ms (Gin significantly lower latency)
- **Reliability**: Both frameworks achieve excellent success rates (99%+)
- **Consistency**: GoFr shows slightly higher latency variance

### ⚡ Tool-Specific Behavior
- **Bombardier**: Quick completion (1.6s) with solid peak performance (9,325 req/s)
- **Go-Wrk**: Most consistent tool with excellent latency distribution and zero errors
- **Vegeta**: Higher average latency (71ms) but maintained good sustained performance

### 🎯 Performance Characteristics
- **Response Time Consistency**: Bombardier and Go-Wrk show excellent sub-20ms latencies
- **Vegeta Anomaly**: Significantly higher latencies (71ms avg) suggest different measurement methodology
- **Throughput Stability**: All tools converged around 7K req/s showing framework consistency
- **Resource Efficiency**: Lower throughput compared to Gin but stable resource utilization

### 🔧 Framework Architecture Insights
- **Processing Overhead**: GoFr appears to have additional processing overhead compared to Gin
- **Connection Handling**: Good connection management with minimal refused connections
- **Memory Management**: Stable performance suggests efficient memory usage
- **Concurrency Model**: Handles 100 concurrent connections effectively

### 💡 Optimization Opportunities
- **Latency Improvement**: Investigate middleware overhead and request processing pipeline
- **Throughput Enhancement**: Profile critical path for performance bottlenecks
- **Connection Pooling**: Minor connection errors suggest room for optimization
- **Framework Tuning**: Review GoFr configuration for performance optimizations

### 🏆 Production Readiness Assessment
- **Reliability**: Excellent error rates make it production-suitable
- **Predictability**: Consistent performance characteristics aid capacity planning
- **Scalability**: Moderate throughput may require horizontal scaling for high-traffic applications
- **Monitoring**: Low error rates and consistent latencies simplify monitoring setup

### 🔍 Use Case Recommendations
- **Best Fit**: Applications prioritizing stability and reliability over peak performance
- **Consider Gin**: For high-throughput, low-latency requirements
- **GoFr Advantages**: Potentially richer feature set, better developer experience
- **Performance Trade-off**: Acceptable performance reduction for framework benefits

### 📈 Benchmarking Context
- **Test Environment**: Local testing on port 6003 vs Gin on 6001
- **Fair Comparison**: Same test parameters (100 conn, 10K req, 30s duration)
- **Framework Maturity**: Results may reflect different optimization levels
- **Real-world Performance**: Production results may vary with different workloads

---
<div align="center">
🔍 Researched with ❤️ by <span><a href="https://github.com/evilmagics">✨ Evilmagics 🌟</a></span>
</div>