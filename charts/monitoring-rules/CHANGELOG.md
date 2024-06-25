# 3.2.0
- Limited backup alerts for postgres to non-standby clusters

# 3.0.2
- Increased alert delay for minio rules

# 3.0.1
- Adjusted minio-mirror failed s3ops rule

# 3.0.0
- Updated minio rules and added minio mirror rules

# 2.1.1
- fix prometheus rule label indentation

# 2.1.0
- add filebeat metrics

# 2.0.8

- Fix prometheus rule label indentation
- add minio monitoring rules

# 2.0.6

# Fix templating issues with grafana dashboards

# 2.0.6
# Trivy Dashboards
- update Readme

# 2.0.5
# Trivy Dashboards
- Added Vulnerability Dashboard for trivy if trivy is enabled.

# 2.0.4
# MinIO Dashboards
- Added minio and minio-replication dashboards when mino.grafanaDashboards is enabled

# 2.0.3
# MinIO metrics
- Don't ask. Just use this version instead of 2.0.2 or 2.0.1 or 2.0.0

# 2.0.2
# Postgres metrics
- Removed special characters in podmonitor which prevent argocd to accept synced status

# 2.0.1
# MinIO metrics
- Added more documentation to MinIO settings

# 2.0.0
# General
- Application metrics like postgres and minio are new by default disabled

# MinIO metrics
- Added serviceMonitor and rules

# 1.3.0
# Postgres metrics
- Improved postgres database version dashboard

# 1.2.1
# Postgres metrics
- Minor improvements in Grafana dashboard

# 1.2.0
# Postgres metrics
- Made the podMonitor en-/disable

# 1.1.0
# Postgres metrics
- Added Grafana dashboard for databases and their versions

# 1.0.0
## BREAKING CHANGE
## Postgres metrics
- Added podMonitor

# 0.4.2
## Kubernetes metrics
- Removed all severity_num settings

# 0.4.1
## Postgres metrics
- Removed all severity_num settings

# 0.4.0
## Postgres metrics
- Made all alerts configurable (en-/disable)
- Improved various summaries and descriptions
- Made even more alert settings configurable

## Kubernetes metrics
- Added two metrics for missing master nodes
