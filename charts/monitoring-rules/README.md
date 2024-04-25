# monitoring-rules

![Version: 3.0.1](https://img.shields.io/badge/Version-3.0.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 3.0.1](https://img.shields.io/badge/AppVersion-3.0.1-informational?style=flat-square)

A Helm chart for Kubernetes

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| fullnameOverride | string | `""` |  |
| kubernetes.disabledRules | object | `{}` |  |
| kubernetes.enabled | bool | `true` |  |
| kubernetes.masterIsMissing.amount | int | `3` |  |
| kubernetes.masterIsMissing.role | string | `"master"` |  |
| logging.enabled | bool | `false` |  |
| logging.namespace | string | `"logging"` |  |
| logging.podMonitor | bool | `true` |  |
| minio.disabledRules | object | `{}` |  |
| minio.enabled | bool | `false` |  |
| minio.grafanaDashboards.enabled | bool | `true` |  |
| minio.grafanaDashboards.namespaceSelector.any | bool | `true` |  |
| minio.grafanaDashboards.selector.matchLabels."v1.min.io/tenant" | string | `"pgbackrest"` |  |
| minio.grafanaDashboards.tlsConfig.insecureSkipVerify | bool | `true` |  |
| minio.serviceMonitor.enabled | bool | `true` |  |
| minioMirror.disabledRules | object | `{}` |  |
| minioMirror.enabled | bool | `false` |  |
| nameOverride | string | `""` |  |
| postgres.disabledRules | object | `{}` |  |
| postgres.enabled | bool | `false` |  |
| postgres.pgBackrest.maxTimeSinceDiff | int | `129600` |  |
| postgres.pgBackrest.maxTimeSinceFull | int | `648000` |  |
| postgres.pgBackrest.maxTimeSinceIncr | int | `129600` |  |
| postgres.pgBackrest.stanza | string | `"db"` |  |
| postgres.podMonitor | bool | `true` |  |
| postgres.replication.maxReplicationBytesCrit | float | `1048576000` |  |
| postgres.replication.maxReplicationBytesWarn | float | `524288000` |  |
| prometheusLabels.release | string | `"kube-prometheus-stack"` |  |
| trivy.enabled | bool | `false` |  |
| trivy.grafanaDashboards.enabled | bool | `true` |  |
