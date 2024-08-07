# monitoring-rules

![Version: 3.3.6](https://img.shields.io/badge/Version-3.3.6-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 3.3.6](https://img.shields.io/badge/AppVersion-3.3.6-informational?style=flat-square)

A curated set of prometheus alerting rules for Kubernetes.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| amphora.enabled | bool | `false` |  |
| amphora.endpoints.addresses[0].ip | string | `"1.2.3.4"` |  |
| amphora.endpoints.enabled | bool | `true` |  |
| amphora.grafanaDashboards.enabled | bool | `true` |  |
| amphora.prometheusRules.disabledRules | object | `{}` |  |
| amphora.prometheusRules.enabled | bool | `true` |  |
| amphora.service.enabled | bool | `true` |  |
| amphora.service.port | int | `8080` |  |
| amphora.serviceMonitor.enabled | bool | `true` |  |
| argocd.disabledRules | object | `{}` |  |
| argocd.enabled | bool | `false` |  |
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

----------------------------------------------
