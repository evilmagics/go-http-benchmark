# 🚀 Beego: /hello-world (Basic)

## 📋 Test Configuration
| Parameter | Value |
|-----------|-------|
| 🎯 Target | Beego Framework |
| 🌐 URL | http://127.0.0.1:6004/hello-world |
| 📡 Method | GET |
| 🔗 Connections | 100 |
| 📊 Target Requests | 10,000 |
| ⏱️ Duration | 30 seconds |
| 📅 Timestamp | 2025-06-30_23-16-46 |

## 🏃‍♂️ Performance Overview

| Tool | Total Requests | Duration | Avg Req/sec | Peak Req/sec | Success Rate |
|------|----------------|----------|-------------|--------------|--------------|
| **💥 Bombardier** | 10,000 | ~0.19s | 52,545.78 | 66,588.98 | 100% ✅ |
| **⚡ Go-Wrk** | 780,392 | 29.97s | 26,041.76 | 25,713.31 | 100% ✅ |
| **🌿 Vegeta** | 274,736 | 31.20s | 9,065.86 | 8,671.07 | 98.46% ⚠️ |

## ⏰ Latency Analysis

| Metric | 💥 Bombardier | ⚡ Go-Wrk | 🌿 Vegeta |
|--------|------------|---------|---------|
| **📊 Average** | 1.89ms | 3.839ms | 39.049ms |
| **📈 Standard Deviation** | 1.04ms | 16.718ms | N/A |
| **⚡ Minimum** | N/A | 0s | 1.531ms |
| **📊 50th Percentile** | 1.34ms | 0s | 6.332ms |
| **📈 75th Percentile** | 2.04ms | 0s | N/A |
| **📊 90th Percentile** | 3.55ms | N/A | 31.278ms |
| **📈 95th Percentile** | 6.33ms | N/A | 94.206ms |
| **🔺 99th Percentile** | 12.49ms | 0s | 636.458ms |
| **⚠️ Maximum** | 24.02ms | 684.223ms | 3.868s |

## 🔍 HTTP Response Analysis

| Tool | 2xx Responses | Total Errors | Success Rate | Error Details |
|------|---------------|--------------|--------------|---------------|
| **💥 Bombardier** | 10,000 | 0 | 100% ✅ | No errors |
| **⚡ Go-Wrk** | 780,392 | 0 | 100% ✅ | No errors |
| **🌿 Vegeta** | 270,511 | 4,225 | 98.46% ⚠️ | Connection refused & timeout errors |

## 📊 Throughput Analysis

| Tool | Throughput | Total Data | Transfer Rate |
|------|------------|------------|---------------|
| **💥 Bombardier** | 9.86 MB/s | N/A | 9.86 MB/s |
| **⚡ Go-Wrk** | 2.81 MB/s | 84.10 MB | 2.77 MB/s |
| **🌿 Vegeta** | N/A | 3.52 MB | N/A |

## 📈 Summary

### 🎯 Performance Metrics
- **📊 Average Requests/sec**: 29,217.80 req/s
- **🚀 Peak Requests/sec**: 66,588.98 req/s
- **✅ Overall Success Rate**: 99.49%
- **💨 Average Throughput**: 6.34 MB/s
- **🌐 Average Latency**: 14.93ms

### 🔍 Key Observations
- **🏆 Bombardier** delivered exceptional performance with 52K+ req/s and sub-2ms latency
- **⚡ Go-Wrk** maintained consistent performance with 26K+ req/s over 30 seconds
- **🌿 Vegeta** showed higher latency variability and connection issues under load
- **📊 Beego** demonstrated excellent performance characteristics with low latency response times

---
<div align="center">
🔍 Researched with ❤️ by <span><a href="https://github.com/evilmagics">✨ Evilmagics 🌟</a></span>
</div>