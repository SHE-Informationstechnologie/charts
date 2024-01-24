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