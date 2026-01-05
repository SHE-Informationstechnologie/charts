# opensearch-cluster

![Version: 1.1.0](https://img.shields.io/badge/Version-1.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 2.8.0](https://img.shields.io/badge/AppVersion-2.8.0-informational?style=flat-square)

A Helm chart which deploys a Opensearch cluster manifests and its configuation

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://opensearch-project.github.io/opensearch-k8s-operator/ | opensearch-cluster | 3.1.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| opensearch-cluster.actionGroups | list | `[]` | List of OpensearchActionGroup. Check values.yaml file for examples. |
| opensearch-cluster.cluster.annotations | object | `{}` | OpenSearchCluster annotations |
| opensearch-cluster.cluster.bootstrap.additionalConfig | object | `{}` | bootstrap additional configuration, key-value pairs that will be added to the opensearch.yml configuration |
| opensearch-cluster.cluster.bootstrap.affinity | object | `{}` | bootstrap pod affinity rules |
| opensearch-cluster.cluster.bootstrap.jvm | string | `""` | bootstrap pod jvm options. If jvm is not provided then the java heap size will be set to half of resources.requests.memory which is the recommend value for data nodes. If jvm is not provided and resources.requests.memory does not exist then value will be -Xmx512M -Xms512M |
| opensearch-cluster.cluster.bootstrap.nodeSelector | object | `{}` | bootstrap pod node selectors |
| opensearch-cluster.cluster.bootstrap.resources | object | `{}` | bootstrap pod cpu and memory resources |
| opensearch-cluster.cluster.bootstrap.tolerations | list | `[]` | bootstrap pod tolerations |
| opensearch-cluster.cluster.confMgmt.smartScaler | bool | `true` | Enable nodes to be safely removed from the cluster |
| opensearch-cluster.cluster.dashboards.additionalConfig | object | `{}` | Additional properties for opensearch_dashboards.yaml |
| opensearch-cluster.cluster.dashboards.affinity | object | `{}` | dashboards pod affinity rules |
| opensearch-cluster.cluster.dashboards.annotations | object | `{}` | dashboards annotations |
| opensearch-cluster.cluster.dashboards.basePath | string | `""` | dashboards Base Path for Opensearch Clusters running behind a reverse proxy |
| opensearch-cluster.cluster.dashboards.enable | bool | `true` | Enable dashboards deployment |
| opensearch-cluster.cluster.dashboards.env | list | `[]` | dashboards pod env variables |
| opensearch-cluster.cluster.dashboards.image | string | `"docker.io/opensearchproject/opensearch-dashboards"` | dashboards image |
| opensearch-cluster.cluster.dashboards.imagePullPolicy | string | `"IfNotPresent"` | dashboards image pull policy |
| opensearch-cluster.cluster.dashboards.imagePullSecrets | list | `[]` | dashboards image pull secrets |
| opensearch-cluster.cluster.dashboards.labels | object | `{}` | dashboards labels |
| opensearch-cluster.cluster.dashboards.nodeSelector | object | `{}` | dashboards pod node selectors |
| opensearch-cluster.cluster.dashboards.opensearchCredentialsSecret | object | `{"name":"dashboards-credentials-secret"}` | Secret that contains fields username and password for dashboards to use to login to opensearch, must only be supplied if a custom securityconfig is provided |
| opensearch-cluster.cluster.dashboards.pluginsList | list | `[]` | List of dashboards plugins to install |
| opensearch-cluster.cluster.dashboards.podSecurityContext | object | `{}` | dasboards pod security context configuration |
| opensearch-cluster.cluster.dashboards.replicas | int | `1` | number of dashboards replicas |
| opensearch-cluster.cluster.dashboards.resources | object | `{}` | dashboards pod cpu and memory resources |
| opensearch-cluster.cluster.dashboards.securityContext | object | `{}` | dashboards security context configuration |
| opensearch-cluster.cluster.dashboards.service.loadBalancerSourceRanges | list | `[]` | source ranges for a loadbalancer |
| opensearch-cluster.cluster.dashboards.service.type | string | `"ClusterIP"` | dashboards service type |
| opensearch-cluster.cluster.dashboards.tls.caSecret | object | `{}` | Secret that contains the ca certificate as ca.crt. If this and generate=true is set the existing CA cert from that secret is used to generate the node certs. In this case must contain ca.crt and ca.key fields |
| opensearch-cluster.cluster.dashboards.tls.enable | bool | `false` | Enable HTTPS for dashboards |
| opensearch-cluster.cluster.dashboards.tls.generate | bool | `true` | generate certificate, if false secret must be provided |
| opensearch-cluster.cluster.dashboards.tls.secret | string | `nil` | Optional, name of a TLS secret that contains ca.crt, tls.key and tls.crt data. If ca.crt is in a different secret provide it via the caSecret field |
| opensearch-cluster.cluster.dashboards.tolerations | list | `[]` | dashboards pod tolerations |
| opensearch-cluster.cluster.dashboards.version | string | `"2.3.0"` | dashboards version |
| opensearch-cluster.cluster.general.additionalConfig | object | `{}` | Extra items to add to the opensearch.yml |
| opensearch-cluster.cluster.general.additionalVolumes | list | `[]` | Additional volumes to mount to all pods in the cluster. Supported volume types configMap, emptyDir, secret (with default Kubernetes configuration schema) |
| opensearch-cluster.cluster.general.drainDataNodes | bool | `true` | Controls whether to drain data notes on rolling restart operations |
| opensearch-cluster.cluster.general.httpPort | int | `9200` | Opensearch service http port |
| opensearch-cluster.cluster.general.image | string | `"docker.io/opensearchproject/opensearch"` | Opensearch image |
| opensearch-cluster.cluster.general.imagePullPolicy | string | `"IfNotPresent"` | Default image pull policy |
| opensearch-cluster.cluster.general.keystore | list | `[]` | Populate opensearch keystore before startup |
| opensearch-cluster.cluster.general.monitoring.enable | bool | `true` | Enable cluster monitoring |
| opensearch-cluster.cluster.general.monitoring.monitoringUserSecret | string | `""` | Secret with 'username' and 'password' keys for monitoring user. You could also use OpenSearchUser CRD instead of setting it. |
| opensearch-cluster.cluster.general.monitoring.pluginUrl | string | `""` | Custom URL for the monitoring plugin |
| opensearch-cluster.cluster.general.monitoring.scrapeInterval | string | `"30s"` | How often to scrape metrics |
| opensearch-cluster.cluster.general.monitoring.tlsConfig | object | `{}` | Override the tlsConfig of the generated ServiceMonitor |
| opensearch-cluster.cluster.general.pluginsList | list | `["repository-s3"]` | List of Opensearch plugins to install |
| opensearch-cluster.cluster.general.podSecurityContext | object | `{}` | Opensearch pod security context configuration |
| opensearch-cluster.cluster.general.securityContext | object | `{}` | Opensearch securityContext |
| opensearch-cluster.cluster.general.serviceAccount | string | `""` | Opensearch serviceAccount name. If Service Account doesn't exist it could be created by setting `serviceAccount.create` and `serviceAccount.name` |
| opensearch-cluster.cluster.general.serviceName | string | `""` | Opensearch service name |
| opensearch-cluster.cluster.general.setVMMaxMapCount | bool | `true` | Enable setVMMaxMapCount. OpenSearch requires the Linux kernel vm.max_map_count option to be set to at least 262144 |
| opensearch-cluster.cluster.general.snapshotRepositories | list | `[]` | Opensearch snapshot repositories configuration |
| opensearch-cluster.cluster.general.vendor | string | `"Opensearch"` |  |
| opensearch-cluster.cluster.general.version | string | `"2.3.0"` | Opensearch version |
| opensearch-cluster.cluster.ingress.dashboards.annotations | object | `{}` | dashboards ingress annotations |
| opensearch-cluster.cluster.ingress.dashboards.className | string | `""` | Ingress class name |
| opensearch-cluster.cluster.ingress.dashboards.enabled | bool | `false` | Enable ingress for dashboards service |
| opensearch-cluster.cluster.ingress.dashboards.hosts | list | `[]` | Ingress hostnames |
| opensearch-cluster.cluster.ingress.dashboards.tls | list | `[]` | Ingress tls configuration |
| opensearch-cluster.cluster.ingress.opensearch.annotations | object | `{}` | Opensearch ingress annotations |
| opensearch-cluster.cluster.ingress.opensearch.className | string | `""` | Opensearch Ingress class name |
| opensearch-cluster.cluster.ingress.opensearch.enabled | bool | `false` | Enable ingress for Opensearch service |
| opensearch-cluster.cluster.ingress.opensearch.hosts | list | `[]` | Opensearch Ingress hostnames |
| opensearch-cluster.cluster.ingress.opensearch.tls | list | `[]` | Opensearch tls configuration |
| opensearch-cluster.cluster.initHelper.imagePullPolicy | string | `"IfNotPresent"` | initHelper image pull policy |
| opensearch-cluster.cluster.initHelper.imagePullSecrets | list | `[]` | initHelper image pull secret |
| opensearch-cluster.cluster.initHelper.resources | object | `{}` | initHelper pod cpu and memory resources |
| opensearch-cluster.cluster.initHelper.version | string | `"1.36"` | initHelper version |
| opensearch-cluster.cluster.labels | object | `{}` | OpenSearchCluster labels |
| opensearch-cluster.cluster.name | string | `""` | OpenSearchCluster name, by default release name is used |
| opensearch-cluster.cluster.nodePools | list | `[{"component":"nodes","diskSize":"200Gi","jvm":"-Xms4096M -Xmx4096M","nodeSelector":null,"pdb":{"enable":true,"maxUnavailable":1},"persistence":{"pvc":{"accessModes":["ReadWriteOnce"],"storageClass":null}},"replicas":3,"resources":{"limits":{"cpu":"4","memory":"8Gi"},"requests":{"cpu":"500m","memory":"4Gi"}},"roles":["master","data","cluster_manager","ingest"]}]` | Opensearch nodes configuration |
| opensearch-cluster.cluster.security.config.adminCredentialsSecret | object | `{"name":"admin-credentials-secret"}` | Secret that contains fields username and password to be used by the operator to access the opensearch cluster for node draining. Must be set if custom securityconfig is provided. |
| opensearch-cluster.cluster.security.config.adminSecret | object | `{}` | TLS Secret that contains a client certificate (tls.key, tls.crt, ca.crt) with admin rights in the opensearch cluster. Must be set if transport certificates are provided by user and not generated |
| opensearch-cluster.cluster.security.config.securityConfigSecret | object | `{"name":"securityconfig-secret"}` | Secret that contains the differnt yml files of the opensearch-security config (config.yml, internal_users.yml, etc) |
| opensearch-cluster.cluster.security.tls.http.caSecret | object | `{}` | Optional, secret that contains the ca certificate as ca.crt. If this and generate=true is set the existing CA cert from that secret is used to generate the node certs. In this case must contain ca.crt and ca.key fields |
| opensearch-cluster.cluster.security.tls.http.generate | bool | `true` | If set to true the operator will generate a CA and certificates for the cluster to use, if false - secrets with existing certificates must be supplied |
| opensearch-cluster.cluster.security.tls.http.secret | object | `{}` | Optional, name of a TLS secret that contains ca.crt, tls.key and tls.crt data. If ca.crt is in a different secret provide it via the caSecret field |
| opensearch-cluster.cluster.security.tls.transport.adminDn | list | `[]` | DNs of certificates that should have admin access, mainly used for securityconfig updates via securityadmin.sh, only used when existing certificates are provided |
| opensearch-cluster.cluster.security.tls.transport.caSecret | object | `{}` | Optional, secret that contains the ca certificate as ca.crt. If this and generate=true is set the existing CA cert from that secret is used to generate the node certs. In this case must contain ca.crt and ca.key fields |
| opensearch-cluster.cluster.security.tls.transport.generate | bool | `true` | If set to true the operator will generate a CA and certificates for the cluster to use, if false secrets with existing certificates must be supplied |
| opensearch-cluster.cluster.security.tls.transport.nodesDn | list | `[]` | Allowed Certificate DNs for nodes, only used when existing certificates are provided |
| opensearch-cluster.cluster.security.tls.transport.perNode | bool | `true` | Separate certificate per node |
| opensearch-cluster.cluster.security.tls.transport.secret | object | `{}` | Optional, name of a TLS secret that contains ca.crt, tls.key and tls.crt data. If ca.crt is in a different secret provide it via the caSecret field |
| opensearch-cluster.componentTemplates | list | `[]` | List of OpensearchComponentTemplate. Check values.yaml file for examples. |
| opensearch-cluster.enabled | bool | `true` |  |
| opensearch-cluster.fullnameOverride | string | `""` |  |
| opensearch-cluster.indexTemplates | list | `[]` | List of OpensearchIndexTemplate. Check values.yaml file for examples. |
| opensearch-cluster.ismPolicies | list | `[]` | List of OpenSearchISMPolicy. Check values.yaml file for examples. |
| opensearch-cluster.nameOverride | string | `""` |  |
| opensearch-cluster.roles | list | `[{"clusterPermissions":["cluster_composite_ops","cluster_monitor"],"indexPermissions":[{"allowedActions":["create_index","index","write"],"indexPatterns":["audit-*","container-*","access-*","ss4o_metrics-*","network-*"]}],"name":"fluentbit"}]` | List of OpensearchRole. Check values.yaml file for examples. |
| opensearch-cluster.serviceAccount.annotations | object | `{}` | Service Account annotations |
| opensearch-cluster.serviceAccount.create | bool | `false` | Create Service Account |
| opensearch-cluster.serviceAccount.name | string | `""` | Service Account name. Set `general.serviceAccount` to use this Service Account for the Opensearch cluster |
| opensearch-cluster.tenants | list | `[]` | List of additional tenants. Check values.yaml file for examples. |
| opensearch-cluster.users | list | `[{"backendRoles":["kibana_user"],"name":"fluentbit","roles":["fluentbit"],"secretKey":"password","secretName":"fluentbit-password"}]` | List of OpensearchUser. Check values.yaml file for examples. |
| opensearch-cluster.usersRoleBinding | list | `[{"name":"fluentbit-access","roles":["fluentbit"],"users":["fluentbit"]}]` | Allows to link any number of users, backend roles and roles with a OpensearchUserRoleBinding. Each user in the binding will be granted each role Check values.yaml file for examples. |

----------------------------------------------
