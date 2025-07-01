# 🚀 GoFr: /structured-messages (High Traffic)

## 📋 Test Configuration
| Parameter | Value |
|-----------|-------|
| 🎯 Target | GoFr Framework |
| 🌐 URL | http://127.0.0.1:6003/structured-messages |
| 📡 Method | GET |
| 🔗 Connections | 1,000 |
| 📊 Target Requests | 100,000 |
| ⏱️ Duration | 30 seconds |
| 📅 Timestamp | 2025-06-30_21-45-22 |
| 🎯 Profile | Structured Responses (High Traffic) |

## 🏃‍♂️ Performance Overview
| Tool | Total Requests | Duration | Avg Req/sec | Peak Req/sec | Success Rate |
|------|----------------|----------|-------------|--------------|--------------|
| **💥 Bombardier** | 100,000 | ~5.70s | 18,034.33 | 30,023.91 | 24.18% ❌ |
| **⚡ Go-Wrk** | 118,544 | 5.00s | 23,708.43 | N/A | 22.17% ❌ |
| **🌿 Vegeta** | 154,839 | 30.14s | 5,161.32 | N/A | 98.86% ⚠️ |

## ⏰ Latency Analysis
| Metric | 💥 Bombardier | ⚡ Go-Wrk | 🌿 Vegeta |
|--------|------------|---------|---------|
| **📊 Average** | 54.69ms | 42.178ms | 96.963ms |
| **📈 Standard Deviation** | 133.61ms | 55.802ms | N/A |
| **⚡ Minimum** | N/A | 0s | 515.3µs |
| **📊 50th Percentile** | 43.32ms | 18.364ms | 79.129ms |
| **📈 75th Percentile** | 51.39ms | 20.934ms | N/A |
| **📊 90th Percentile** | 74.65ms | N/A | 157.898ms |
| **📈 95th Percentile** | 97.65ms | N/A | 207.225ms |
| **🔺 99th Percentile** | 103.85ms | 21.873ms | 267.73ms |
| **⚠️ Maximum** | 3.30s | 2.974s | 294.956ms |

## 🔍 HTTP Response Analysis
| Tool | 2xx Responses | Total Errors | Success Rate | Error Details |
|------|---------------|--------------|--------------|---------------|
| **💥 Bombardier** | 24,177 | 75,823 | 24.18% ❌ | Connection refused errors |
| **⚡ Go-Wrk** | 118,544 | 415,687 | 22.17% ❌ | Connection refused + timeout errors |
| **🌿 Vegeta** | 153,072 | 1,767 | 98.86% ⚠️ | Connection refused errors |

## 📊 Throughput Analysis
| Tool | Throughput | Total Data | Transfer Rate |
|------|------------|------------|---------------|
| **💥 Bombardier** | 2.13 MB/s | N/A | 2.13 MB/s |
| **⚡ Go-Wrk** | 9.50 MB/s | 47.48 MB | 1.56 MB/s |
| **🌿 Vegeta** | 5,078.97 req/s | 11.63 MB | N/A |

## 📈 Summary
### 🎯 Performance Metrics
- **📊 Average Requests/sec**: 15,634.69 req/s
- **🚀 Peak Requests/sec**: 30,023.91 req/s
- **✅ Overall Success Rate**: 48.40%
- **💨 Average Throughput**: 4.40 MB/s
- **🌐 Average Latency**: 64.61ms

## 🔍 Key Observations

### ⚠️ Critical Performance Issues
- **🚨 Connection Saturation**: High connection count (1,000) overwhelms server capacity, causing 75-80% failure rates
- **📉 Massive Error Rates**: Bombardier and Go-Wrk experienced severe connection refused errors (75K+ and 415K+ respectively)
- **🔄 Resource Exhaustion**: Server unable to handle concurrent connection load despite good endpoint performance
- **⏱️ Timeout Issues**: Go-Wrk encountered additional timeout errors, indicating server response delays

### 📊 Tool-Specific Behavior
- **💥 Bombardier**: Achieved highest peak throughput (30K req/s) but 76% failure rate
- **⚡ Go-Wrk**: Fastest overall processing (23K req/s) but massive error count suggests aggressive connection handling
- **🌿 Vegeta**: Most stable with 98.86% success rate, demonstrating better connection management strategy

### 🔍 Performance Scaling Analysis
- **📈 Load Threshold Identified**: Framework performs excellently at 100 connections but fails at 1,000 connections
- **⚡ Peak Performance Window**: When connections succeed, framework delivers impressive throughput (18-24K req/s)
- **🎯 Endpoint Efficiency**: The `/structured-messages` endpoint itself is well-optimized (sub-100ms latencies when successful)

### 💡 Framework Behavior Patterns
- **🔄 Connection Pool Limits**: Clear evidence of connection pool exhaustion at high concurrent loads
- **📊 Latency Consistency**: When requests succeed, latency remains relatively consistent across tools
- **⚡ Burst Capacity**: Framework shows excellent burst performance but poor sustained high-concurrency handling

### 🔧 Critical Recommendations
- **📈 Connection Pool Tuning**: Increase maximum connection pool size and worker thread count
- **⚖️ Load Balancing**: Implement horizontal scaling for high-traffic scenarios
- **🛠️ Resource Monitoring**: Monitor file descriptors, TCP connection limits, and memory usage
- **🎯 Gradual Load Testing**: Establish optimal connection thresholds (likely 200-500 concurrent connections)
- **🔄 Connection Management**: Implement connection pooling and keep-alive optimization

### 🚀 Performance Insights
- **💪 Strength**: Excellent per-request processing efficiency when resources available
- **⚠️ Weakness**: Poor connection management under high concurrent load
- **🎯 Sweet Spot**: Framework excels in medium-load scenarios (100-500 connections)
- **📊 Scalability Gap**: Significant performance cliff between moderate and high load scenarios

### 🏆 Framework Assessment
GoFr demonstrates **excellent request processing capabilities** but reveals **critical scalability limitations** under high concurrent loads. The framework is well-suited for typical web applications but requires significant infrastructure tuning or horizontal scaling for high-traffic production environments.

**Verdict**: Strong performance potential limited by connection handling bottlenecks.

---
<div align="center">
🔍 Researched with ❤️ by <span><a href="https://github.com/evilmagics">✨ Evilmagics 🌟</a></span>
</div>