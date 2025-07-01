# 🚀 Net-HTTP: /large-process (High Traffic)

## 📋 Test Configuration
| Parameter | Value |
|-----------|-------|
| 🎯 Target | Net-HTTP Framework |
| 🌐 URL | http://127.0.0.1:6000/large-process |
| 📡 Method | POST |
| 🔗 Connections | 1,000 |
| 📊 Target Requests | 100,000 |
| ⏱️ Duration | 30 seconds |
| 📅 Timestamp | 2025-06-30_21-07-57 |
| 📝 Profile | Large Process (High Traffic) |

## 🏃‍♂️ Performance Overview
| Tool | Total Requests | Duration | Avg Req/sec | Peak Req/sec | Success Rate |
|------|----------------|----------|-------------|--------------|--------------|
| **💥 Bombardier** | 100,000 | ~7.04s | 14,461.57 | 39,986.99 | 1.05% ❌ |
| **⚡ Go-Wrk** | 19,132 | 22.50s | 850.42 | N/A | 8.47% ❌ |
| **🌿 Vegeta** | 19,190 | 31.04s | 638.95 | N/A | 78.17% ⚠️ |

## ⏰ Latency Analysis
| Metric | 💥 Bombardier | ⚡ Go-Wrk | 🌿 Vegeta |
|--------|------------|---------|---------|
| **📊 Average** | 61.03ms | 1,175.89ms | 785.90ms |
| **📈 Standard Deviation** | 211.27ms | 1,012.71ms | N/A |
| **⚡ Minimum** | N/A | 1.00s | 511µs |
| **📊 50th Percentile** | 39.55ms | 1.00s | 1.001s |
| **📈 75th Percentile** | 45.85ms | 1.00s | N/A |
| **📊 90th Percentile** | 51.47ms | N/A | 1.002s |
| **📈 95th Percentile** | 52.90ms | N/A | 1.002s |
| **🔺 99th Percentile** | 1.00s | 1.00s | 1.148s |
| **⚠️ Maximum** | 6.90s | 10.46s | 1.247s |

## 🔍 HTTP Response Analysis
| Tool | 2xx Responses | Total Errors | Success Rate | Error Details |
|------|---------------|--------------|--------------|---------------|
| **💥 Bombardier** | 1,046 | 98,954 | 1.05% ❌ | Connection refused errors |
| **⚡ Go-Wrk** | 19,132 | 206,930 | 8.47% ❌ | Connection refused errors |
| **🌿 Vegeta** | 15,001 | 4,189 | 78.17% ⚠️ | Connection refused errors |

## 📊 Throughput Analysis
| Tool | Throughput | Total Data | Transfer Rate |
|------|------------|------------|---------------|
| **💥 Bombardier** | 48.92 KB/s | N/A | 48.92 KB/s |
| **⚡ Go-Wrk** | 107.26 KB/s | 3.28 MB | 149.49 KB/s |
| **🌿 Vegeta** | N/A | 1.34 MB | N/A |

## 📈 Summary
### 🎯 Performance Metrics
- **📊 Average Requests/sec**: 5,316.98 req/s
- **🚀 Peak Requests/sec**: 39,986.99 req/s
- **✅ Overall Success Rate**: 29.23%
- **💨 Average Throughput**: 78.09 KB/s
- **🌐 Average Latency**: 674.27ms

## 🔍 Key Observations

### 🚨 Critical Issues
- **Severe Connection Failures**: All three tools experienced massive connection refused errors, indicating the target server was overwhelmed
- **Extremely Low Success Rates**: Only 1.05% to 78.17% of requests succeeded across tools
- **Server Resource Exhaustion**: The high connection count (1,000) appears to exceed server capacity

### 📉 Performance Patterns
- **Bombardier**: Achieved highest peak throughput (39,986 req/s) but crashed quickly with 98,954 connection failures
- **Go-Wrk**: Moderate performance with consistent 1+ second latencies, suggesting server overload
- **Vegeta**: Best stability with 78.17% success rate but lowest overall throughput

### ⚠️ Load Testing Insights
- **Connection Pool Exhaustion**: The target server cannot handle 1,000 concurrent connections
- **Resource Bottleneck**: Large process endpoint appears CPU/memory intensive
- **Network Stack Limitation**: "Connection refused" errors suggest TCP connection limits reached

### 🔧 Recommendations
- **Reduce Concurrent Connections**: Start with 50-100 connections and gradually increase
- **Implement Connection Pooling**: Server needs better connection management
- **Monitor Server Resources**: Check CPU, memory, and file descriptor limits
- **Add Load Balancing**: Consider horizontal scaling for high-traffic scenarios
- **Optimize Endpoint**: Review /large-process implementation for performance bottlenecks

---
<div align="center">
🔍 Researched with ❤️ by <span><a href="https://github.com/evilmagics">✨ Evilmagics 🌟</a></span>
</div>