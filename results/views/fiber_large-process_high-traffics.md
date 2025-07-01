# 🚀 Fiber: /large-process (High Traffic)

## 📋 Test Configuration
| Parameter | Value |
|-----------|-------|
| 🎯 Target | Fiber Framework |
| 🌐 URL | http://127.0.0.1:6002/large-process |
| 📡 Method | POST |
| 🔗 Connections | 1,000 |
| 📊 Target Requests | 100,000 |
| ⏱️ Duration | 30 seconds |
| 📅 Timestamp | 2025-06-30_21-31-22 |
| 📋 Profile | Large Process (High Traffic) |

## 🏃‍♂️ Performance Overview
| Tool | Total Requests | Duration | Avg Req/sec | Peak Req/sec | Success Rate |
|------|----------------|----------|-------------|--------------|--------------|
| **💥 Bombardier** | 100,000 | ~6s | 15,699.53 | 36,344.24 | 1.19% ❌ |
| **⚡ Go-Wrk** | 20,325 | 23.14s | 878.44 | N/A | 7.27% ❌ |
| **🌿 Vegeta** | 17,251 | 31.04s | 574.22 | N/A | 86.96% ⚠️ |

## ⏰ Latency Analysis
| Metric | 💥 Bombardier | ⚡ Go-Wrk | 🌿 Vegeta |
|--------|------------|---------|---------|
| **📊 Average** | 56.54ms | 1,138.38ms | 872.389ms |
| **📈 Standard Deviation** | 199.13ms | 770.052ms | N/A |
| **⚡ Minimum** | N/A | 1s | 310.3µs |
| **📊 50th Percentile** | 33.12ms | 1.000031s | 1.001s |
| **📈 75th Percentile** | 38.14ms | 1.000063s | N/A |
| **📊 90th Percentile** | 46.98ms | N/A | 1.002s |
| **📈 95th Percentile** | 58.12ms | N/A | 1.002s |
| **🔺 99th Percentile** | 1.00s | 1.000063s | 1.082s |
| **⚠️ Maximum** | 6.40s | 7.915775s | 1.143s |

## 🔍 HTTP Response Analysis
| Tool | 2xx Responses | Total Errors | Success Rate | Error Details |
|------|---------------|--------------|--------------|---------------|
| **💥 Bombardier** | 1,190 | 98,810 | 1.19% ❌ | Connection refused errors |
| **⚡ Go-Wrk** | 20,325 | 259,684 | 7.27% ❌ | Connection refused errors |
| **🌿 Vegeta** | 15,001 | 2,250 | 86.96% ⚠️ | Connection refused errors |

## 📊 Throughput Analysis
| Tool | Throughput | Total Data | Transfer Rate |
|------|------------|------------|---------------|
| **💥 Bombardier** | 59.88 KB/s | N/A | 59.88 KB/s |
| **⚡ Go-Wrk** | 153.56 KB/s | 3.47 MB | 113.80 KB/s (Overall) |
| **🌿 Vegeta** | N/A | 1.32 MB | N/A |

## 📈 Summary
### 🎯 Performance Metrics
- **📊 Average Requests/sec**: 5,717.40 req/s
- **🚀 Peak Requests/sec**: 36,344.24 req/s
- **✅ Overall Success Rate**: 31.81%
- **💨 Average Throughput**: 106.72 KB/s
- **🌐 Average Latency**: 689.11ms

## 🔍 Key Observations

### 🚨 Critical Issues
- **Severe Connection Failures**: All tools experienced massive connection refused errors, indicating the Fiber server was overwhelmed
- **Low Success Rates**: Success rates ranged from 1.19% to 86.96%, showing significant service degradation under high load
- **Resource Exhaustion**: The server appears to have reached its connection handling limits quickly

### 📊 Performance Characteristics
- **Bombardier**: Achieved highest peak throughput (36,344 req/s) but with catastrophic failure rate (98.81% errors)
- **Go-Wrk**: Moderate performance with consistent ~1s latency but high error count (259,684 errors)
- **Vegeta**: Most stable tool with 86.96% success rate but lowest overall throughput (574 req/s)

### ⚠️ Latency Patterns
- **High Variance**: Standard deviations indicate inconsistent response times across all tools
- **Timeout Issues**: Maximum latencies ranging from 1.143s to 7.9s suggest timeout configurations may need adjustment
- **Blocking Behavior**: Go-Wrk and Vegeta show consistent ~1s latencies, possibly indicating server-side rate limiting or blocking

### 🎯 Recommendations
1. **Server Tuning**: Increase connection pool size and file descriptor limits
2. **Load Balancing**: Consider implementing load balancing for high-traffic scenarios
3. **Connection Management**: Optimize keep-alive settings and connection reuse
4. **Resource Monitoring**: Monitor CPU, memory, and network utilization during tests
5. **Gradual Scaling**: Test with incremental connection increases to find optimal limits

---
<div align="center">
🔍 Researched with ❤️ by <span><a href="https://github.com/evilmagics">✨ Evilmagics 🌟</a></span>
</div>