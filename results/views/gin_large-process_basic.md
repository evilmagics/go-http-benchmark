# 🚀 Gin: /large-process (Large Process)

## 📋 Test Configuration

| Parameter | Value |
|-----------|-------|
| 🎯 Target | Gin Framework |
| 🌐 URL | http://127.0.0.1:6001/large-process |
| 📡 Method | POST |
| 🔗 Connections | 100 |
| 📊 Target Requests | 10,000 |
| ⏱️ Duration | 30 seconds |
| 📅 Timestamp | 2025-06-30_21-16-33 |

## 🏃‍♂️ Performance Overview

| Tool | Total Requests | Duration | Avg Req/sec | Peak Req/sec | Success Rate |
|------|----------------|----------|-------------|--------------|--------------|
| **💥 Bombardier** | 10,000 | ~1m40s | 101.81 | 7,351.93 | 100% ✅ |
| **⚡ Go-Wrk** | 3,000 | 30.05s | 99.83 | N/A | 100% ✅ |
| **🌿 Vegeta** | 19,796 | 31.06s | 658.72 | N/A | 75.78% ⚠️ |

## ⏰ Latency Analysis

| Metric | 💥 Bombardier | ⚡ Go-Wrk | 🌿 Vegeta |
|--------|------------|---------|---------|
| **📊 Average** | 1.00s | 1.001724s | 762.696ms |
| **📈 Standard Deviation** | 1.26ms | 1.99ms | N/A |
| **⚡ Minimum** | N/A | 1s | 510.8µs |
| **📊 50th Percentile** | 1.00s | 1.000031s | 1.001s |
| **📈 75th Percentile** | 1.00s | 1.000031s | N/A |
| **📊 90th Percentile** | 1.00s | N/A | 1.003s |
| **📈 95th Percentile** | 1.00s | N/A | 1.006s |
| **🔺 99th Percentile** | 1.01s | 1.000031s | 1.127s |
| **⚠️ Maximum** | 1.02s | 1.020063s | 1.305s |

## 🔍 HTTP Response Analysis

| Tool | 2xx Responses | Total Errors | Success Rate | Error Details |
|------|---------------|--------------|--------------|---------------|
| **💥 Bombardier** | 10,000 | 0 | 100% ✅ | No errors |
| **⚡ Go-Wrk** | 3,000 | 0 | 100% ✅ | No errors |
| **🌿 Vegeta** | 15,001 | 4,795 | 75.78% ⚠️ | Connection refused errors |

## 📊 Throughput Analysis

| Tool | Throughput | Total Data | Transfer Rate |
|------|------------|------------|---------------|
| **💥 Bombardier** | 33.73 KB/s | N/A | 33.73 KB/s |
| **⚡ Go-Wrk** | 18.91 KB/s | 568.36 KB | 18.85 KB/s |
| **🌿 Vegeta** | N/A | 1.32 MB | N/A |

## 📈 Summary

### 🎯 Performance Metrics
- **📊 Average Requests/sec**: 286.79 req/s
- **🚀 Peak Requests/sec**: 7,351.93 req/s
- **✅ Overall Success Rate**: 91.93%
- **💨 Average Throughput**: 26.32 KB/s
- **🌐 Average Latency**: 921.47ms

## 🔍 Key Observations

### 🔥 Performance Characteristics
- **High Latency Operation**: All tools consistently measured ~1 second response times, indicating the `/large-process` endpoint performs significant server-side processing
- **Sustained Processing**: Bombardier's 1m40s completion time for 10,000 requests demonstrates the endpoint's computational intensity
- **Rate Limiting Impact**: The consistent 1-second response suggests either intentional rate limiting or CPU-bound processing

### ⚠️ Reliability Concerns
- **Vegeta Connection Issues**: 24.22% failure rate with "connection refused" errors indicates potential resource exhaustion under high load
- **Tool Variability**: Significant differences in total requests processed (3,000 vs 19,796) suggest varying load generation strategies
- **Connection Pool Saturation**: High concurrent connections (100) may overwhelm the server's connection handling capacity

### 🎯 Scalability Insights
- **Throughput Bottleneck**: Low requests/sec (99-658) compared to typical web endpoints indicates processing-heavy operations
- **Memory/CPU Intensive**: The consistent 1-second processing time suggests resource-intensive operations rather than I/O bound tasks
- **Connection Management**: Vegeta's partial failures highlight the importance of proper connection pooling and timeout configurations

### 📊 Tool-Specific Behavior
- **Bombardier**: Most conservative approach with 100% success rate but longest total execution time
- **Go-Wrk**: Balanced performance with reliable completion of targeted load
- **Vegeta**: Aggressive load generation but suffered from connection management issues at scale

---

<div align="center">
🔍 Researched with ❤️ by <span><a href="https://github.com/evilmagics">✨ Evilmagics 🌟</a></span>
</div>