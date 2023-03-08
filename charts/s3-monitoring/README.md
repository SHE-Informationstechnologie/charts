# s3-monitoring
Installs an S3 monitoring solution which monitors a user's S3 usage and provides Prometheus metrics.

## Required Secrets
For the monitoring to work the user's secret access key is required. This access key must be provided as a secret named `{{  .Release.Name }}-secret`. The unencrypted secret will be added to the environment of the monitoring pod and is expected to have the following format:
| Key                   | Value                  |
|-----------------------|------------------------|
| AWS_SECRET_ACCESS_KEY | <the actual accesskey> |

## Configuration
| Name                   | Default                  | Required |
|------------------------|--------------------------|----------|
| s3monitoringEnabled    | false                    | no       |
| apiHost                | ""                       | yes      |
| accessKeyID            | ""                       | yes      |
| quotaLimit             | 0                        | yes      |
| warningDuration        | "3h"                     | no       |
| warningPercentageUsed  | 80                       | no       |
| warningBytesLeft       | 0                        | no       |
| criticalDuration       | "1h"                     | no       |
| criticalPercentageUsed | 95                       | no       |
| criticalBytesLeft      | 0                        | no       |
| prometheusEnabled      | false                    | no       |
| prometheusLabels       | {}                       | no       |
| prometheusNamespace    | {{ .Release.Namespace }} | no       |
| serviceMonitorEnabled  | false                    | no       |

## Prometheus metrics
| Name                                                 | Type |
|------------------------------------------------------|------|
| s3_percentage_used_total{access_key_id=<keyID>}      | int  |
| s3_quota_limit{access_key_id=<keyID>}                | int  |
| s3_bytes_used_total{access_key_id=<keyID>}           | int  |
| s3_bytes_used{access_key_id=<keyID>,bucket=<bucket>} | int  |

