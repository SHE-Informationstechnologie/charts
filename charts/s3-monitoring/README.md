# s3-monitoring
Installs a pod which monitors a user's S3 usage and provides prometheus metrics.

## Required Secrets
For the monitoring to work the user's secret access key is required. This key must be provided as a secret named `s3monitoring-secret`.
