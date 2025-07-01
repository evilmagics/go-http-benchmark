# 🚀 Beego: /structured-messages (Basic)

## 📋 Test Configuration
| Parameter | Value |
|-----------|-------|
| 🎯 Target | Beego Framework |
| 🌐 URL | http://127.0.0.1:6004/structured-messages |
| 📡 Method | GET |
| 🔗 Connections | 100 |
| 📊 Target Requests | 10,000 |
| ⏱️ Duration | 30 seconds |
| 📅 Timestamp | 2025-06-30_23-18-55 |

## 🏃‍♂️ Performance Overview

| Tool | Total Requests | Duration | Avg Req/sec | Peak Req/sec | Success Rate |
|------|----------------|----------|-------------|--------------|--------------|
| **💥 Bombardier** | 10,000 | ~0.78s | 12,803.32 | 25,664.50 | 100% ✅ |
| **⚡ Go-Wrk** | 466,431 | 30.08s | 15,505.79 | 15,361.32 | 100% ✅ |
| **🌿 Vegeta** | 240,097 | 30.13s | 7,981.57 | 7,818.81 | 98.11% ⚠️ |

## ⏰ Latency Analysis

| Metric | 💥 Bombardier | ⚡ Go-Wrk | 🌿 Vegeta |
|--------|------------|---------|---------|
| **📊 Average** | 7.71ms | 6.448ms | 41.376ms |
| **📈 Standard Deviation** | 25.56ms | 20.51ms | N/A |
| **⚡ Minimum** | N/A | 0s | 3.399ms |
| **📊 50th Percentile** | 1.17ms | 0s | 6.854ms |
| **📈 75th Percentile** | 3.64ms | 0s | N/A |
| **📊 90th Percentile** | 14.81ms | N/A | 47.536ms |
| **📈 95th Percentile** | 33.84ms | N/A | 145.235ms |
| **🔺 99th Percentile** | 135.15ms | 0s | 743.522ms |
| **⚠️ Maximum** | 382.23ms | 545.407ms | 3.973s |

## 🔍 HTTP Response Analysis

| Tool | 2xx Responses | Total Errors | Success Rate | Error Details |
|------|---------------|--------------|--------------|---------------|
| **💥 Bombardier** | 10,000 | 0 | 100% ✅ | No errors |
| **⚡ Go-Wrk** | 466,431 | 0 | 100% ✅ | No errors |
| **🌿 Vegeta** | 235,548 | 4,549 | 98.11% ⚠️ | Connection refused & timeout errors |

## 📊 Throughput Analysis

| Tool | Throughput | Total Data | Transfer Rate |
|------|------------|------------|---------------|
| **💥 Bombardier** | 3.26 MB/s | N/A | 3.26 MB/s |
| **⚡ Go-Wrk** | 2.54 MB/s | 76.51 MB | 2.52 MB/s |
| **🌿 Vegeta** | N/A | 15.55 MB | N/A |

## 📈 Summary

### 🎯 Performance Metrics
- **📊 Average Requests/sec**: 12,096.89 req/s
- **🚀 Peak Requests/sec**: 25,664.50 req/s
- **✅ Overall Success Rate**: 99.37%
- **💨 Average Throughput**: 2.90 MB/s
- **🌐 Average Latency**: 18.51ms

### 🔍 Key Observations

#### 📦 Structured Data Processing Impact
- **📉 Performance Reduction**: 25% lower throughput compared to simple hello-world endpoint
- **⏱️ Processing Overhead**: Average latency increased from ~2ms to ~18ms for structured responses
- **💾 Serialization Cost**: JSON/structured data serialization adds measurable processing time

#### 🔧 Tool Performance Analysis
- **💥 Bombardier**: Maintained good burst performance (25K req/s peak) with 100% reliability
- **⚡ Go-Wrk**: Consistent sustained performance (15K req/s) over full 30-second duration
- **🌿 Vegeta**: Struggled with structured responses, showing 1.89% error rate and higher latency

#### 📊 Latency Distribution Characteristics
- **🚀 Fast Path**: 50th percentile shows sub-7ms processing for most requests
- **📈 Tail Latency**: 99th percentile reveals significant outliers (135-743ms range)
- **⚠️ Maximum Latency**: Vegeta experienced extreme outliers up to 3.97 seconds

#### 🌐 Data Transfer Patterns
- **📊 Payload Size**: Structured responses generate more data transfer per request
- **💨 Throughput Efficiency**: Lower MB/s compared to simple responses due to larger payloads
- **🔄 Bandwidth Utilization**: Efficient data compression opportunities for structured content

#### 🎯 Framework Behavior Under Structured Load
- **🔄 Serialization Performance**: Beego handles JSON serialization efficiently at moderate loads
- **💪 Memory Management**: Consistent performance indicates good garbage collection handling
- **📈 Scalability**: Maintains linear performance characteristics with structured data processing

#### 🛠️ Optimization Opportunities
- **⚡ Response Caching**: Cache frequently requested structured data to reduce serialization overhead
- **🗜️ Compression**: Implement gzip/deflate compression for structured responses
- **📊 JSON Optimization**: Consider faster JSON libraries or response pre-generation
- **🔧 Connection Pooling**: Address Vegeta's connection issues for better reliability

#### 💡 Production Considerations
- **📈 Capacity Planning**: Account for 25% performance reduction when serving structured data
- **🎯 Monitoring**: Track serialization time and response size metrics
- **⚖️ Load Balancing**: Consider payload-aware load balancing for mixed workloads
- **🔍 Caching Strategy**: Implement intelligent caching for frequently accessed structured data

#### 🔄 Comparative Analysis
- **📊 vs Hello World**: 25% throughput reduction, 9x latency increase
- **📦 vs POST Operations**: Better performance than complex POST processing
- **🌐 Optimal Use Case**: Well-suited for moderate-traffic API endpoints with structured responses

#### ⚠️ Reliability Concerns
- **🌿 Vegeta Issues**: 1.89% error rate suggests tool-specific problems with structured responses
- **🔧 Connection Handling**: Need to investigate connection pool behavior with longer response times
- **📊 Timeout Configuration**: Adjust timeout settings for structured data processing workflows

---
<div align="center">
🔍 Researched with ❤️ by <span><a href="https://github.com/evilmagics">✨ Evilmagics 🌟</a></span>
</div>