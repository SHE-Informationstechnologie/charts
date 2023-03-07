# s3-monitoring
Installs an S3 monitoring solution which monitors a user's S3 usage and provides Prometheus metrics.

## Required Secrets
For the monitoring to work the user's secret access key is required. This access key must be provided as a secret named `s3monitoring-secret`. The unencrypted secret will be added to the environment of the monitoring pod and is expected to have the following format:
| Key                   | Value                  |
|-----------------------|------------------------|
| AWS_SECRET_ACCESS_KEY | <the actual accesskey> |

## Configuration
| Name                   | Type    | Default       | Required |
|------------------------|---------|---------------|----------|
| s3monitoringEnabled    | boolean | false         | no       |
| apiHost                | string  | ""            | yes      |
| accessKeyID            | string  | ""            | yes      |
| quotaLimit             | int     | 0             | yes      |
| warningDuration        | string  | "3h"          | no       |
| warningPercentageUsed  | int     | 80            | no       |
| warningBytesLeft       | int     | 0             | no       |
| criticalDuration       | string  | "1h"          | no       |
| criticalPercentageUsed | int     | 95            | no       |
| criticalBytesLeft      | int     | 0             | no       |
| commonLabels           | map     | empty         | no       |
| prometheusEnabled      | boolean | false         | no       |
| serviceMonitorEnabled  | boolean | false         | no       |
| prometheusNamespace    | string  | "default"     | no       |
| prometheusLabels       | map     | empty         | no       |

## Prometheus metrics
| Name                                      | Type |
|-------------------------------------------|------|
| s3_percentage_used_total{access_key_id=*} | int  |
| s3_quota_limit{access_key_id=*}           | int  |
| s3_bytes_used_total{access_key_id=*}      | int  |
| s3_bytes_used{access_key_id=*,bucket=*}   | int  |

