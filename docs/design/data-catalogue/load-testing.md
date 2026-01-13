# Load Testing

eoAPI provides scripts to automated load testing, in particular:

- Response Time Tracking: Measure p50, p95, p99 latency percentiles
- Throughput Metrics: Track requests/second over time
- Infrastructure Monitoring: Optional Prometheus integration for pod/HPA metrics
- Flexible Reporting: Console output + JSON export for CI/CD
- Multiple Test Scenarios: Stress, normal, chaos, and autoscaling tests

Read more at https://github.com/developmentseed/eoapi-k8s/blob/main/tests/load/README.md
