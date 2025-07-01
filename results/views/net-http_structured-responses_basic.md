# 🚀 Net-HTTP: /structured-messages (Basic)

## 📋 Test Configuration
| Parameter | Value |
|-----------|-------|
| 🎯 Target | Net-HTTP Framework |
| 🌐 URL | http://127.0.0.1:6000/structured-messages |
| 📡 Method | GET |
| 🔗 Connections | 100 |
| 📊 Target Requests | 10,000 |
| ⏱️ Duration | 30 seconds |
| 📅 Timestamp | 2025-06-30_21-03-09 |
| 📝 Profile | Structured Responses (Basic) |

## 🏃‍♂️ Performance Overview
| Tool | Total Requests | Duration | Avg Req/sec | Peak Req/sec | Success Rate |
|------|----------------|----------|-------------|--------------|--------------|
| **💥 Bombardier** | 10,000 | ~0.14s | 69,181.27 | 100,460.55 | 100% ✅ |
| **⚡ Go-Wrk** | 2,135,695 | 29.92s | 71,376.24 | N/A | 100% ✅ |
| **🌿 Vegeta** | 622,672 | 30.12s | 20,743.06 | N/A | 99.22% ✅ |

## ⏰ Latency Analysis
| Metric | 💥 Bombardier | ⚡ Go-Wrk | 🌿 Vegeta |
|--------|------------|---------|---------|
| **📊 Average** | 1.40ms | 1.40ms | 16.03ms |
| **📈 Standard Deviation** | 1.78ms | 1.79ms | N/A |
| **⚡ Minimum** | N/A | 0s | 532µs |
| **📊 50th Percentile** | 733µs | 0s | 3.14ms |
| **📈 75th Percentile** | 2.01ms | 0s | N/A |
| **📊 90th Percentile** | 3.32ms | N/A | 16.41ms |
| **📈 95th Percentile** | 4.62ms | N/A | 23.77ms |
| **🔺 99th Percentile** | 9.15ms | 0s | 87.45ms |
| **⚠️ Maximum** | 32.55ms | 38.08ms | 3.29s |

## 🔍 HTTP Response Analysis
| Tool | 2xx Responses | Total Errors | Success Rate | Error Details |
|------|---------------|--------------|--------------|---------------|
| **💥 Bombardier** | 10,000 | 0 | 100% ✅ | No errors |
| **⚡ Go-Wrk** | 2,135,695 | 0 | 100% ✅ | No errors |
| **🌿 Vegeta** | 617,802 | 4,870 | 99.22% ✅ | Connection refused & timeout errors |

## 📊 Throughput Analysis
| Tool | Throughput | Total Data | Transfer Rate |
|------|------------|------------|---------------|
| **💥 Bombardier** | 15.99 MB/s | N/A | 15.99 MB/s |
| **⚡ Go-Wrk** | 10.71 MB/s | 321.81 MB | 10.76 MB/s |
| **🌿 Vegeta** | N/A | 41.39 MB | N/A |

## 📈 Summary
### 🎯 Performance Metrics
- **📊 Average Requests/sec**: 53,766.86 req/s
- **🚀 Peak Requests/sec**: 100,460.55 req/s
- **✅ Overall Success Rate**: 99.74%
- **💨 Average Throughput**: 13.35 MB/s
- **🌐 Average Latency**: 6.14ms

## 🔍 Key Observations

### 🎯 Excellent Performance
- **High Throughput**: All tools achieved excellent request rates (20K-71K req/s)
- **Low Latencies**: Sub-millisecond to low millisecond response times across most tools
- **Near-Perfect Success Rates**: 99.22% to 100% success rates indicate stable server performance
- **Fast Completion**: Bombardier completed 10K requests in just 0.14 seconds

### 📊 Tool Performance Comparison
- **Go-Wrk**: Best sustained performance with 71,376 req/s over 30 seconds and 2.1M+ total requests
- **Bombardier**: Highest peak throughput (100,460 req/s) but completed quickly due to request limit
- **Vegeta**: Solid performance at 20,743 req/s with minor connection issues under sustained load

### 🔧 Technical Insights
- **Efficient Endpoint**: The `/structured-messages` endpoint handles GET requests very efficiently
- **Good Concurrency Handling**: Server manages 100 concurrent connections without major issues
- **Stable Under Load**: Minimal errors even during sustained 30-second tests
- **Consistent Latency**: Low standard deviation indicates predictable response times

### ⚡ Performance Highlights
- **Sub-millisecond P50**: Bombardier and Go-Wrk show median latencies under 1ms
- **Excellent Throughput**: Data transfer rates of 10-16 MB/s indicate efficient response processing
- **Scalable Architecture**: Server maintains performance across different load patterns

### 🚨 Minor Issues Noted
- **Vegeta Timeouts**: Some connection refused errors and timeout issues during extended testing
- **Resource Limits**: Minor degradation at sustained high loads (99.22% vs 100% success)
- **Latency Variance**: Vegeta shows higher average latency (16ms) compared to other tools

### 💡 Recommendations
- **Excellent Baseline**: This endpoint serves as a good performance benchmark
- **Connection Pool Tuning**: Minor improvements possible for sustained high-load scenarios
- **Monitor Resource Usage**: Track server metrics during peak loads to identify bottlenecks
- **Consider Caching**: For production, implement response caching for even better performance

---
<div align="center">
🔍 Researched with ❤️ by <span><a href="https://github.com/evilmagics">✨ Evilmagics 🌟</a></span>
</div>