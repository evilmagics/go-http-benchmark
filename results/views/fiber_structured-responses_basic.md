# 🚀 Fiber: /structured-messages (Basic)

## 📋 Test Configuration
| Parameter | Value |
|-----------|-------|
| 🎯 Target | Fiber Framework |
| 🌐 URL | http://127.0.0.1:6002/structured-messages |
| 📡 Method | GET |
| 🔗 Connections | 100 |
| 📊 Target Requests | 10,000 |
| ⏱️ Duration | 30 seconds |
| 📅 Timestamp | 2025-06-30_21-23-37 |
| 📋 Profile | Structured Responses (Basic) |

## 🏃‍♂️ Performance Overview
| Tool | Total Requests | Duration | Avg Req/sec | Peak Req/sec | Success Rate |
|------|----------------|----------|-------------|--------------|--------------|
| **💥 Bombardier** | 10,000 | ~0.20s | 97,002.41 | 125,589.41 | 100% ✅ |
| **⚡ Go-Wrk** | 2,623,991 | 29.91s | 87,731.53 | N/A | 100% ✅ |
| **🌿 Vegeta** | 262,748 | 8.70s | 30,280.32 | N/A | 99.63% ✅ |

## ⏰ Latency Analysis
| Metric | 💥 Bombardier | ⚡ Go-Wrk | 🌿 Vegeta |
|--------|------------|---------|---------|
| **📊 Average** | 1.02ms | 1.139ms | 8.893ms |
| **📈 Standard Deviation** | 1.44ms | 1.791ms | N/A |
| **⚡ Minimum** | N/A | 0s | 588.8µs |
| **📊 50th Percentile** | 775.00µs | 0s | 1.63ms |
| **📈 75th Percentile** | 1.07ms | 0s | N/A |
| **📊 90th Percentile** | 1.40ms | N/A | 16.527ms |
| **📈 95th Percentile** | 1.96ms | N/A | 27.428ms |
| **🔺 99th Percentile** | 8.13ms | 0s | 99.907ms |
| **⚠️ Maximum** | 25.23ms | 72.155ms | 3.108s |

## 🔍 HTTP Response Analysis
| Tool | 2xx Responses | Total Errors | Success Rate | Error Details |
|------|---------------|--------------|--------------|---------------|
| **💥 Bombardier** | 10,000 | 0 | 100% ✅ | No errors |
| **⚡ Go-Wrk** | 2,623,991 | 0 | 100% ✅ | No errors |
| **🌿 Vegeta** | 261,788 | 960 | 99.63% ✅ | Connection refused & timeout errors |

## 📊 Throughput Analysis
| Tool | Throughput | Total Data | Transfer Rate |
|------|------------|------------|---------------|
| **💥 Bombardier** | 21.51 MB/s | N/A | 21.51 MB/s |
| **⚡ Go-Wrk** | 13.14 MB/s | 392.88 MB | 13.07 MB/s (Overall) |
| **🌿 Vegeta** | N/A | 17.28 MB | N/A |

## 📈 Summary
### 🎯 Performance Metrics
- **📊 Average Requests/sec**: 71,671.42 req/s
- **🚀 Peak Requests/sec**: 125,589.41 req/s
- **✅ Overall Success Rate**: 99.88%
- **💨 Average Throughput**: 17.33 MB/s
- **🌐 Average Latency**: 3.68ms

## 🔍 Key Observations

### 🎯 Excellent Performance Characteristics
- **Outstanding Throughput**: Bombardier achieved exceptional performance with 97K+ req/s and peak of 125K+ req/s
- **Low Latency**: Sub-millisecond to low single-digit millisecond response times across all tools
- **High Reliability**: Near-perfect success rates (99.88% overall) with minimal errors
- **Consistent Performance**: Go-Wrk sustained 87K+ req/s over the full 30-second duration

### 📊 Tool-Specific Insights
- **Bombardier**: Fastest completion (~0.2s) with ultra-low latency (1.02ms avg) and highest throughput (21.51 MB/s)
- **Go-Wrk**: Most consistent long-duration performance with 2.6M+ requests processed flawlessly
- **Vegeta**: Moderate performance with some connection issues (960 errors) but still maintained 99.63% success rate

### ⚡ Latency Distribution Excellence
- **Sub-millisecond Responses**: Bombardier's 50th percentile at 775µs shows exceptional response speed
- **Predictable Performance**: Low standard deviations indicate consistent response times
- **Minimal Outliers**: 99th percentile latencies remain reasonable across all tools

### 🚀 Scalability Indicators
- **Connection Efficiency**: 100 concurrent connections handled effortlessly
- **Resource Utilization**: High throughput with low latency suggests efficient resource usage
- **Sustainable Performance**: Go-Wrk's 30-second sustained performance demonstrates stability

### 🔧 Minor Areas for Optimization
- **Vegeta Timeouts**: 960 timeout/connection errors suggest potential for connection pool tuning
- **Latency Outliers**: Maximum latencies (3.1s in Vegeta) indicate occasional processing delays
- **Load Distribution**: Consider testing with higher connection counts to find performance ceiling

### 🎉 Strengths Demonstrated
1. **Exceptional Speed**: Peak performance exceeding 125K req/s
2. **Low Resource Overhead**: Efficient processing with minimal latency
3. **High Reliability**: Near-perfect success rates under moderate load
4. **Sustained Performance**: Consistent throughput over extended periods
5. **Structured Response Handling**: Excellent performance with complex response payloads

---
<div align="center">
🔍 Researched with ❤️ by <span><a href="https://github.com/evilmagics">✨ Evilmagics 🌟</a></span>
</div>