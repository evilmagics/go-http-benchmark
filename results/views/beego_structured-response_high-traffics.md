# 🚀 Beego: /structured-messages (High Traffic)

## 📋 Test Configuration
| Parameter | Value |
|-----------|-------|
| 🎯 Target | Beego Framework |
| 🌐 URL | http://127.0.0.1:6004/structured-messages |
| 📡 Method | GET |
| 🔗 Connections | 1,000 |
| 📊 Target Requests | 100,000 |
| ⏱️ Duration | 30 seconds |
| 📅 Timestamp | 2025-06-30_23-19-58 |
| 📝 Profile | Structured Responses (High Traffic) |

## 🏃‍♂️ Performance Overview
| Tool | Total Requests | Duration | Avg Req/sec | Peak Req/sec | Success Rate |
|------|----------------|----------|-------------|--------------|--------------|
| **💥 Bombardier** | 100,000 | ~2.0s | 49,756 | 53,268.94 | 74.16% ⚠️ |
| **⚡ Go-Wrk** | 456,715 | 29.80s | 12,972.36 | 15,328.00 | 97.62% ⚠️ |
| **🌿 Vegeta** | 458,690 | 30.44s | 15,065.63 | 15,136.33 | 99.97% ✅ |

## ⏰ Latency Analysis
| Metric | 💥 Bombardier | ⚡ Go-Wrk | 🌿 Vegeta |
|--------|------------|---------|---------|
| **📊 Average** | 18.30ms | 65.239ms | 25.502ms |
| **📈 Standard Deviation** | 47.97ms | 143.475ms | N/A |
| **⚡ Minimum** | N/A | 0s | 7.467ms |
| **📊 50th Percentile** | 1.45ms | 0s | 7.717ms |
| **📈 75th Percentile** | 41.74ms | 0s | N/A |
| **📊 90th Percentile** | 51.80ms | N/A | 52.098ms |
| **📈 95th Percentile** | 53.88ms | N/A | 99.227ms |
| **🔺 99th Percentile** | 80.03ms | 0s | 369.171ms |
| **⚠️ Maximum** | 1.88s | 2.90s | 768.308ms |

## 🔍 HTTP Response Analysis
| Tool | 2xx Responses | Total Errors | Success Rate | Error Details |
|------|---------------|--------------|--------------|---------------|
| **💥 Bombardier** | 74,156 | 25,844 | 74.16% ⚠️ | Connection refused errors |
| **⚡ Go-Wrk** | 445,844 | 10,871 | 97.62% ⚠️ | Connection refused errors |
| **🌿 Vegeta** | 458,546 | 144 | 99.97% ✅ | Connection refused errors |

## 📊 Throughput Analysis
| Tool | Throughput | Total Data | Transfer Rate |
|------|------------|------------|---------------|
| **💥 Bombardier** | 10.00 MB/s | N/A | 10.00 MB/s |
| **⚡ Go-Wrk** | 2.13 MB/s | 74.92 MB | 2.51 MB/s |
| **🌿 Vegeta** | N/A | 30.26 MB | N/A |

## 🔍 Key Observations

### 🎯 Performance Characteristics
- **Connection Handling Issues**: All tools experienced connection refused errors, indicating the Beego server struggled with 1,000 concurrent connections
- **Tool Behavior Differences**: Vegeta showed the best error handling with 99.97% success rate, while Bombardier had significant connection issues (74.16% success)
- **Latency Variance**: High standard deviation in latencies (47.97ms - 143.475ms) suggests inconsistent response times under load

### 🚨 Critical Issues
- **Connection Bottleneck**: Server actively refused connections, particularly noticeable with Bombardier (25,844 errors)
- **Resource Exhaustion**: The high error rate suggests server resource limits were exceeded
- **Inconsistent Performance**: Wide latency ranges indicate server instability under high concurrent load

### 💡 Performance Insights
- **Best Tool Performance**: Vegeta demonstrated the most stable performance with minimal errors
- **Server Limitations**: The structured response endpoint appears to have connection pool limitations
- **Throughput Ceiling**: Peak performance around 15K req/sec before connection issues emerge

### 🔧 Recommendations
- **Connection Pool Tuning**: Increase server connection pool size and timeout settings
- **Load Balancing**: Consider implementing load balancing for high-traffic scenarios
- **Resource Monitoring**: Monitor server CPU, memory, and file descriptor usage during tests
- **Gradual Scaling**: Test with incremental connection increases to find optimal concurrency level

## 📈 Summary
### 🎯 Performance Metrics
- **📊 Average Requests/sec**: 25,931.33 req/s
- **🚀 Peak Requests/sec**: 53,268.94 req/s
- **✅ Overall Success Rate**: 90.58%
- **💨 Average Throughput**: 6.07 MB/s
- **🌐 Average Latency**: 36.34ms

### ⚠️ Server Status
The Beego server showed significant stress under 1,000 concurrent connections, with connection refusal being the primary limiting factor. Performance degraded substantially compared to lower-traffic scenarios.

---
<div align="center">
🔍 Researched with ❤️ by <span><a href="https://github.com/evilmagics">✨ Evilmagics 🌟</a></span>
</div>