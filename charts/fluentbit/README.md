# fluentbit

![Version: 1.0.2](https://img.shields.io/badge/Version-1.0.2-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.48.6](https://img.shields.io/badge/AppVersion-0.48.6-informational?style=flat-square)

A Helm chart which deploys fluent bit

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://fluent.github.io/helm-charts | fluentbit(fluent-bit) | 0.48.6 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| fluentbit.config.customParsers | string | `"[PARSER]\n    Name docker_no_time\n    Format json\n    Time_Keep Off\n    Time_Key time\n    Time_Format %Y-%m-%dT%H:%M:%S.%L\n\n[PARSER]\n    Name        accesslogs\n    Format      regex\n    Regex       ^(?<remote_addr>[^ ]+) - (?<user_identity>[^ ]+) \\[(?<timestamp>[^\\]]+)\\] \\\"(?<method>\\S+)(?: +(?<request_uri>\\S+)(?: +(?<protocol>\\S+))?)?\\\" (?<status>\\d+) (?<bytes_sent>\\d+) \\\"(?<referrer>[^\"]*)\\\" \\\"(?<user_agent>[^\"]*)\\\" (?<request_length>[^ ]*) (?<request_time>[^ ]*) \\[(?<proxy_upstream_name>[^ ]*)\\] \\[(?<proxy_alternative_upstream_name>[^ ]*)\\] (?<upstream_addr>[^ ]*) (?<upstream_response_length>[^ ]*) (?<upstream_response_time>[^ ]*) (?<upstream_status>[^ ]*) (?<reg_id>[^ ]*).*$\n"` |  |
| fluentbit.config.filters | string | `"[FILTER]\n    Name kubernetes\n    Match kube.*\n    Merge_Log On\n    Keep_Log Off\n    K8S-Logging.Parser On\n    K8S-Logging.Exclude On\n    Buffer_Size 67108864B\n\n[FILTER]\n    Name kubernetes\n    Match ingress-nginx.*\n    Merge_Log On\n    Keep_Log Off\n    K8S-Logging.Parser On\n    K8S-Logging.Exclude On\n\n[FILTER]\n    Name parser\n    Match ingress-nginx.*\n    Key_Name log\n    Parser accesslogs\n    Reserve_Data On\n\n[FILTER]\n    Name grep\n    Match ingress-nginx.*\n    Exclude log ^.+$\n"` |  |
| fluentbit.config.inputs | string | `"[INPUT]\n    Name tail\n    Path /var/log/containers/*.log\n    Exclude_Path *ingress-nginx*\n    Tag kube.*\n    multiline.parser cri\n    Mem_Buf_Limit 5m\n    Skip_Long_Lines On\n    Buffer_Chunk_Size 15m\n    Buffer_Max_Size 64m\n\n[INPUT]\n    Name tail\n    Path /var/log/containers/*ingress-nginx*.log\n    Tag ingress-nginx.*\n    multiline.parser cri\n    Mem_Buf_Limit 5m\n    Buffer_Chunk_Size 15m\n    Buffer_Max_Size 64m\n\n[INPUT]\n    Name tail\n    Path /var/log/audit/*.log\n    Tag audit.*\n    Parser json\n    Mem_Buf_Limit 5m\n    Skip_Long_Lines On\n    Buffer_Chunk_Size 15m\n    Buffer_Max_Size 64m\n"` |  |
| fluentbit.config.outputs | string | `"[OUTPUT]\n    Name opensearch\n    Match kube.*\n    Host opensearch-cluster.logging.svc\n    Port 9200\n    Index container-%Y.%m\n    Retry_Limit 3\n    Suppress_Type_Name On\n    tls On\n    tls.verify Off\n    HTTP_User fluentbit\n    HTTP_Passwd ${password}\n    Trace_Error On\n    Replace_Dots On\n    Buffer_Size 67108864B\n\n[OUTPUT]\n    Name opensearch\n    Match audit.*\n    Host opensearch-cluster.logging.svc\n    Port 9200\n    Index audit-%Y.%m\n    Retry_Limit 3\n    Suppress_Type_Name On\n    tls On\n    tls.verify Off\n    HTTP_User fluentbit\n    HTTP_Passwd ${password}\n    Trace_Error On\n    Buffer_Size 67108864B\n\n[OUTPUT]\n    Name opensearch\n    Match ingress-nginx.*\n    Host opensearch-cluster.logging.svc\n    Port 9200\n    Index access-logs-%Y.%m\n    Retry_Limit 3\n    Suppress_Type_Name On\n    tls On\n    tls.verify Off\n    HTTP_User fluentbit\n    HTTP_Passwd ${password}\n    Trace_Error On\n    Buffer_Size 67108864B\n"` |  |
| fluentbit.dashboards.enabled | bool | `true` |  |
| fluentbit.dashboards.labelKey | string | `"grafana_dashboard"` |  |
| fluentbit.dashboards.labelValue | int | `1` |  |
| fluentbit.dashboards.namespace | string | `"monitoring"` |  |
| fluentbit.enabled | bool | `true` |  |
| fluentbit.envFrom[0].secretRef.name | string | `"fluentbit-password"` |  |
| fluentbit.image.repository | string | `"fluent/fluent-bit"` |  |
| fluentbit.logLevel | string | `"info"` |  |
| fluentbit.tolerations[0].effect | string | `"NoSchedule"` |  |
| fluentbit.tolerations[0].operator | string | `"Exists"` |  |

