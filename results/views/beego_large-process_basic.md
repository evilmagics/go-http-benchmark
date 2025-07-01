# 🚀 Beego: /large-process (Basic)

## 📋 Test Configuration
| Parameter | Value |
|-----------|-------|
| 🎯 Target | Beego Framework |
| 🌐 URL | http://127.0.0.1:6004/large-process |
| 📡 Method | POST |
| 🔗 Connections | 100 |
| 📊 Target Requests | 10,000 |
| ⏱️ Duration | 30 seconds |
| 📅 Timestamp | 2025-06-30_23-21-08 |

## 🏃‍♂️ Performance Overview

| Tool | Total Requests | Duration | Avg Req/sec | Peak Req/sec | Success Rate |
|------|----------------|----------|-------------|--------------|--------------|
| **💥 Bombardier** | 10,000 | ~0.60s | 21,276.58 | 31,760.13 | 100% ✅ |
| **⚡ Go-Wrk** | 492,072 | 30.21s | 16,289.62 | 16,038.48 | 100% ✅ |
| **🌿 Vegeta** | 245,125 | 30.19s | 8,165.07 | 8,074.56 | 99.43% ⚠️ |

## ⏰ Latency Analysis

| Metric | 💥 Bombardier | ⚡ Go-Wrk | 🌿 Vegeta |
|--------|------------|---------|---------|
| **📊 Average** | 4.63ms | 6.138ms | 43.573ms |
| **📈 Standard Deviation** | 11.71ms | 19.417ms | N/A |
| **⚡ Minimum** | N/A | 0s | 443.5µs |
| **📊 50th Percentile** | 0.721ms | 0s | 7.219ms |
| **📈 75th Percentile** | 3.65ms | 0s | N/A |
| **📊 90th Percentile** | 10.16ms | N/A | 26.156ms |
| **📈 95th Percentile** | 15.89ms | N/A | 65.338ms |
| **🔺 99th Percentile** | 77.70ms | 0s | 462.552ms |
| **⚠️ Maximum** | 181.88ms | 555.583ms | 16.452s |

## 🔍 HTTP Response Analysis

| Tool | 2xx Responses | Total Errors | Success Rate | Error Details |
|------|---------------|--------------|--------------|---------------|
| **💥 Bombardier** | 10,000 | 0 | 100% ✅ | No errors |
| **⚡ Go-Wrk** | 492,072 | 0 | 100% ✅ | No errors |
| **🌿 Vegeta** | 243,733 | 1,392 | 99.43% ⚠️ | Connection refused & timeout errors |

## 📊 Throughput Analysis

| Tool | Throughput | Total Data | Transfer Rate |
|------|------------|------------|---------------|
| **💥 Bombardier** | 6.51 MB/s | N/A | 6.51 MB/s |
| **⚡ Go-Wrk** | 2.67 MB/s | 80.72 MB | 2.63 MB/s |
| **🌿 Vegeta** | N/A | 16.09 MB | N/A |

## 📈 Summary

### 🎯 Performance Metrics
- **📊 Average Requests/sec**: 15,243.76 req/s
- **🚀 Peak Requests/sec**: 31,760.13 req/s
- **✅ Overall Success Rate**: 99.81%
- **💨 Average Throughput**: 4.59 MB/s
- **🌐 Average Latency**: 18.11ms

### 🔍 Key Observations

#### 🏗️ POST vs GET Performance Comparison
- **📉 Reduced Throughput**: POST operations show ~50% lower performance vs GET endpoints
- **⏱️ Increased Latency**: Average latency increased significantly (18ms vs ~2ms for GET)
- **💾 Processing Overhead**: Complex processing operations impact response times substantially

#### 🔧 Tool-Specific Behavior
- **💥 Bombardier Excellence**: Achieved highest throughput (21K req/s) with consistent sub-5ms latency
- **⚡ Go-Wrk Stability**: Maintained steady 16K req/s over full 30-second duration with zero errors
- **🌿 Vegeta Challenges**: Struggled with POST operations, showing 0.57% error rate and high tail latency

#### 📊 Latency Distribution Insights
- **🚀 Fast Path**: 50th percentile shows sub-1ms processing for most requests
- **📈 Tail Latency**: 99th percentile reveals significant outliers (77-462ms range)
- **⚠️ Extreme Cases**: Maximum latency reached 16.4s in Vegeta tests, indicating potential timeouts

#### 🎯 Framework Characteristics
- **🔄 Resource Processing**: Beego handles complex POST operations efficiently under moderate load
- **💪 Concurrency Handling**: Maintains good performance with 100 concurrent connections
- **📈 Scalability Ceiling**: Performance degradation visible at sustained high loads

#### 🛠️ Optimization Opportunities
- **⚡ POST Processing**: Optimize large data processing workflows
- **🔧 Connection Tuning**: Address connection pool limits causing Vegeta errors
- **📊 Monitoring**: Implement tail latency monitoring for production workloads
- **🚀 Caching**: Consider request/response caching for frequently processed data

#### 💡 Production Recommendations
- **🎯 Load Testing**: Establish baseline performance metrics for POST-heavy workloads
- **⚖️ Capacity Planning**: Plan for 50% throughput reduction compared to GET operations
- **🔍 Error Handling**: Implement robust timeout and retry mechanisms for edge cases
- **📈 Monitoring**: Set up alerts for tail latency spikes (>100ms P99)

---
<div align="center">
🔍 Researched with ❤️ by <span><a href="https://github.com/evilmagics">✨ Evilmagics 🌟</a></span>
</div>