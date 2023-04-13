# s3-monitoring
Installs an S3 monitoring solution which monitors a user's S3 usage and provides Prometheus metrics.

## Required Secrets
For the monitoring to work a config file is required. This config file must be provided as a secret named `{{  .Release.Name }}-secret`. The config file must have the following format:
```
# Access Key ID       # Secret Key                              # Region  # API Host       # Quota Limit   # Warn bytes free  # Crit bytes free  # Warn percent free  # Crit percent free
CD170ZOYAMZBYKYHJWKY  UVK8C3LHIDVMKOW1NVBR6ZOGM9XND4GOEFIXA9JP  default   s3-api.host.tld  10995116277760  0                  0                  10                   5
YKWJHYKYBZMAYOZ071DC  PJ9AXIFEOG4DNX9MGOZ6RBVN1WOKMVDIHL3C8KVU  default   s3-api.host.tld  5497558138880   10737418240        5368709120         10                   5
```
The columns `Warn ... free` and `Crit ... free` can be zeroed out to suppress alerts being generated before the storage is full.
In the example above the first entry has alerts for percentages configured while the second entry has alerts for bytes configured.

## Configuration
| Name                   | Default                  | Required |
|------------------------|--------------------------|----------|
| s3monitoringEnabled    | false                    | no       |
| prometheusEnabled      | false                    | no       |
| prometheusLabels       | {}                       | no       |
| prometheusNamespace    | {{ .Release.Namespace }} | no       |
| serviceMonitorEnabled  | false                    | no       |

## Prometheus metrics
| Name                                                           | Type  |
|----------------------------------------------------------------|-------|
| s3_bytes_quota_limit{access_key_id="accessKeyID"}              | int   |
| s3_bytes_used{access_key_id="accessKeyID",bucket="bucketName"} | int   |
| s3_bytes_used_total{access_key_id="accessKeyID"}               | int   |
| s3_bytes_free_total_warn{access_key_id="accessKeyID"}          | int   |
| s3_bytes_free_total_crit{access_key_id="accessKeyID"}          | int   |
| s3_percentage_used_total{access_key_id="accessKeyID"}          | float |
| s3_percentage_free_total_warn{access_key_id="accessKeyID"}     | float |
| s3_percentage_free_total_warn{access_key_id="accessKeyID"}     | float |

