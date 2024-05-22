# logging-opensearch

![Version: 1.0.6](https://img.shields.io/badge/Version-1.0.6-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.5](https://img.shields.io/badge/AppVersion-1.0.5-informational?style=flat-square)

A Helm chart which deploys a Opensearch cluster manifests, its configuation and fluent bit

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://fluent.github.io/helm-charts | fluentbit(fluent-bit) | 0.46.7 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| fluentbit.config.customParsers | string | `"[PARSER]\n    Name docker_no_time\n    Format json\n    Time_Keep Off\n    Time_Key time\n    Time_Format %Y-%m-%dT%H:%M:%S.%L\n\n[PARSER]\n    Name        accesslogs\n    Format      regex\n    Regex       ^(?<remote_addr>[^ ]+) - (?<user_identity>[^ ]+) \\[(?<timestamp>[^\\]]+)\\] \\\"(?<method>\\S+)(?: +(?<request_uri>\\S+)(?: +(?<protocol>\\S+))?)?\\\" (?<status>\\d+) (?<bytes_sent>\\d+) \\\"(?<referrer>[^\"]*)\\\" \\\"(?<user_agent>[^\"]*)\\\" (?<request_length>[^ ]*) (?<request_time>[^ ]*) \\[(?<proxy_upstream_name>[^ ]*)\\] \\[(?<proxy_alternative_upstream_name>[^ ]*)\\] (?<upstream_addr>[^ ]*) (?<upstream_response_length>[^ ]*) (?<upstream_response_time>[^ ]*) (?<upstream_status>[^ ]*) (?<reg_id>[^ ]*).*$\n"` |  |
| fluentbit.config.filters | string | `"[FILTER]\n    Name kubernetes\n    Match kube.*\n    Merge_Log On\n    Keep_Log Off\n    K8S-Logging.Parser On\n    K8S-Logging.Exclude On\n\n[FILTER]\n    Name kubernetes\n    Match ingress-nginx.*\n    Merge_Log On\n    Keep_Log Off\n    K8S-Logging.Parser On\n    K8S-Logging.Exclude On\n\n[FILTER]\n    Name parser\n    Match ingress-nginx.*\n    Key_Name log\n    Parser accesslogs\n    Reserve_Data On\n\n[FILTER]\n    Name grep\n    Match ingress-nginx.*\n    Exclude log ^.+$\n"` |  |
| fluentbit.config.inputs | string | `"[INPUT]\n    Name tail\n    Path /var/log/containers/*.log\n    Exclude_Path *ingress-nginx*\n    Tag kube.*\n    multiline.parser cri\n    Mem_Buf_Limit 5m\n    Skip_Long_Lines On\n    Buffer_Chunk_Size 15m\n    Buffer_Max_Size 64m\n\n[INPUT]\n    Name tail\n    Path /var/log/containers/*ingress-nginx*.log\n    Tag ingress-nginx.*\n    multiline.parser cri\n    Mem_Buf_Limit 5m\n    Buffer_Chunk_Size 15m\n    Buffer_Max_Size 64m\n\n[INPUT]\n    Name tail\n    Path /var/log/audit/*.log\n    Tag audit.*\n    Parser json\n    Mem_Buf_Limit 5m\n    Skip_Long_Lines On\n    Buffer_Chunk_Size 15m\n    Buffer_Max_Size 64m\n"` |  |
| fluentbit.config.outputs | string | `"[OUTPUT]\n    Name opensearch\n    Match kube.*\n    Host opensearch-cluster.logging.svc\n    Port 9200\n    Index container-%Y.%m\n    Retry_Limit 3\n    Suppress_Type_Name On\n    tls On\n    tls.verify Off\n    HTTP_User fluentbit\n    HTTP_Passwd ${password}\n    Trace_Error On\n    Replace_Dots On\n\n[OUTPUT]\n    Name opensearch\n    Match audit.*\n    Host opensearch-cluster.logging.svc\n    Port 9200\n    Index audit-%Y.%m\n    Retry_Limit 3\n    Suppress_Type_Name On\n    tls On\n    tls.verify Off\n    HTTP_User fluentbit\n    HTTP_Passwd ${password}\n    Trace_Error On\n\n[OUTPUT]\n    Name opensearch\n    Match ingress-nginx.*\n    Host opensearch-cluster.logging.svc\n    Port 9200\n    Index access-logs-%Y.%m\n    Retry_Limit 3\n    Suppress_Type_Name On\n    tls On\n    tls.verify Off\n    HTTP_User fluentbit\n    HTTP_Passwd ${password}\n    Trace_Error On\n"` |  |
| fluentbit.dashboards.enabled | bool | `true` |  |
| fluentbit.dashboards.labelKey | string | `"grafana_dashboard"` |  |
| fluentbit.dashboards.labelValue | int | `1` |  |
| fluentbit.dashboards.namespace | string | `"monitoring"` |  |
| fluentbit.envFrom[0].secretRef.name | string | `"fluentbit-password"` |  |
| fluentbit.logLevel | string | `"info"` |  |
| fluentbit.tolerations[0].effect | string | `"NoSchedule"` |  |
| fluentbit.tolerations[0].operator | string | `"Exists"` |  |
| fullnameOverride | string | `""` |  |
| global | object | `{}` |  |
| nameOverride | string | `""` |  |
| opensearch.enabled | bool | `true` |  |
| opensearch.indexTemplates.additionalTemplates | list | `[]` |  |
| opensearch.indexTemplates.defaultTemplates.access | bool | `true` |  |
| opensearch.indexTemplates.defaultTemplates.audit | bool | `true` |  |
| opensearch.indexTemplates.defaultTemplates.container | bool | `true` |  |
| opensearch.indexTemplates.global | string | `nil` |  |
| opensearch.ingress.annotations | object | `{}` |  |
| opensearch.ingress.className | string | `""` |  |
| opensearch.ingress.enabled | bool | `false` |  |
| opensearch.ingress.hosts[0].host | string | `"chart-example.local"` |  |
| opensearch.ingress.hosts[0].paths[0].path | string | `"/"` |  |
| opensearch.ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| opensearch.ingress.tls | list | `[]` |  |
| opensearch.ismPolicies.defaultPolicies.logRollOver | bool | `false` |  |
| opensearch.roles[0].clusterPermissions[0] | string | `"cluster_composite_ops"` |  |
| opensearch.roles[0].clusterPermissions[1] | string | `"cluster_monitor"` |  |
| opensearch.roles[0].indexPermissions[0].allowedActions[0] | string | `"create_index"` |  |
| opensearch.roles[0].indexPermissions[0].allowedActions[1] | string | `"index"` |  |
| opensearch.roles[0].indexPermissions[0].allowedActions[2] | string | `"write"` |  |
| opensearch.roles[0].indexPermissions[0].indexPatterns[0] | string | `"audit-*"` |  |
| opensearch.roles[0].indexPermissions[0].indexPatterns[1] | string | `"container-*"` |  |
| opensearch.roles[0].indexPermissions[0].indexPatterns[2] | string | `"access-*"` |  |
| opensearch.roles[0].name | string | `"fluentbit"` |  |
| opensearch.service.overrideName | string | `"opensearch-cluster"` |  |
| opensearch.settings.confMgmt.smartScaler | bool | `true` |  |
| opensearch.settings.dashboards.enable | bool | `true` |  |
| opensearch.settings.dashboards.opensearchCredentialsSecret.name | string | `"dashboards-credentials-secret"` |  |
| opensearch.settings.dashboards.replicas | int | `1` |  |
| opensearch.settings.dashboards.version | string | `"2.11.1"` |  |
| opensearch.settings.general.httpPort | int | `9200` |  |
| opensearch.settings.general.monitoring.enable | bool | `true` |  |
| opensearch.settings.general.monitoring.scrapeInterval | string | `"30s"` |  |
| opensearch.settings.general.pluginsList[0] | string | `"repository-s3"` |  |
| opensearch.settings.general.serviceName | string | `"opensearch-cluster"` |  |
| opensearch.settings.general.setVMMaxMapCount | bool | `true` |  |
| opensearch.settings.general.vendor | string | `"opensearch"` |  |
| opensearch.settings.general.version | string | `"2.11.1"` |  |
| opensearch.settings.nodePools[0].component | string | `"nodes"` |  |
| opensearch.settings.nodePools[0].diskSize | string | `"200Gi"` |  |
| opensearch.settings.nodePools[0].nodeSelector | string | `nil` |  |
| opensearch.settings.nodePools[0].pdb.enable | bool | `true` |  |
| opensearch.settings.nodePools[0].pdb.maxUnavailable | int | `1` |  |
| opensearch.settings.nodePools[0].persistence.pvc.accessModes[0] | string | `"ReadWriteOnce"` |  |
| opensearch.settings.nodePools[0].persistence.pvc.storageClass | string | `"block-encrypted-storage-beta"` |  |
| opensearch.settings.nodePools[0].replicas | int | `3` |  |
| opensearch.settings.nodePools[0].roles[0] | string | `"cluster_manager"` |  |
| opensearch.settings.nodePools[0].roles[1] | string | `"data"` |  |
| opensearch.settings.nodePools[0].roles[2] | string | `"ingest"` |  |
| opensearch.settings.security.config.adminCredentialsSecret.name | string | `"admin-credentials-secret"` |  |
| opensearch.settings.security.config.securityConfigSecret.name | string | `"securityconfig-secret"` |  |
| opensearch.settings.security.tls.http.generate | bool | `true` |  |
| opensearch.settings.security.tls.transport.generate | bool | `true` |  |
| opensearch.users[0].backendRoles[0] | string | `"kibanauser"` |  |
| opensearch.users[0].name | string | `"fluentbit"` |  |
| opensearch.users[0].passwordFrom.key | string | `"password"` |  |
| opensearch.users[0].passwordFrom.name | string | `"fluentbit-password"` |  |
| opensearch.users[0].roles[0] | string | `"fluentbit"` |  |

----------------------------------------------
