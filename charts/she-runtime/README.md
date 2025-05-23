# she-runtime

![Version: 1.5.0](https://img.shields.io/badge/Version-1.5.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.5.0](https://img.shields.io/badge/AppVersion-1.5.0-informational?style=flat-square)

SHE default K8s cluster toolset

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| argo.project | string | `"default"` |  |
| argo.targetCluster | string | `"in-cluster"` |  |
| argo.targetClusterAltName | string | `nil` |  |
| argoApp.enabled | bool | `false` |  |
| argoApp.name | string | `"argo"` |  |
| argoApp.namespace | string | `"argocd"` |  |
| argoApp.source.chart | string | `"argo-cd"` |  |
| argoApp.source.helm.parameters[0].name | string | `"server.ingress.enabled"` |  |
| argoApp.source.helm.parameters[0].value | string | `"true"` |  |
| argoApp.source.helm.parameters[1].name | string | `"controller.metrics.enabled"` |  |
| argoApp.source.helm.parameters[1].value | string | `"true"` |  |
| argoApp.source.repoURL | string | `"https://argoproj.github.io/argo-helm"` |  |
| argoApp.source.targetRevision | string | `"7.8.5"` |  |
| argoWorkflow.enabled | bool | `false` |  |
| argoWorkflow.name | string | `"argo-workflows"` |  |
| argoWorkflow.namespace | string | `"argo-workflows"` |  |
| argoWorkflow.source.chart | string | `"argo-workflows"` |  |
| argoWorkflow.source.helm.values | string | `"controller:\n  metricsConfig:\n    enabled: true\n  telemetryConfig:\n    enabled: true\n  serviceMonitor:\n    enabled: true\n    additionalLabels:\n      kubernetes.she.net/prometheus-instance: default\n    namespace: \"monitoring\"\nworkflow:\n  serviceAccount:\n    create: true\n    name: \"argo-workflows\"\nserver:\n  authMode: \"server\"\n"` |  |
| argoWorkflow.source.repoURL | string | `"https://argoproj.github.io/argo-helm"` |  |
| argoWorkflow.source.targetRevision | string | `"0.45.8"` |  |
| customerApplications.enabled | bool | `false` |  |
| customerApplications.name | string | `"customer-applications"` |  |
| customerApplications.namespace | string | `"she-vendor"` |  |
| customerApplications.source.directory.recurse | bool | `false` |  |
| customerApplications.source.path | string | `"path/to/app"` |  |
| customerApplications.source.repoURL | string | `"my.repo.url"` |  |
| customerApplications.source.targetRevision | string | `"HEAD"` |  |
| eckOperator.enabled | bool | `false` |  |
| eckOperator.name | string | `"eck-operator"` |  |
| eckOperator.namespace | string | `"eck-operator"` |  |
| eckOperator.source.chart | string | `"eck-operator"` |  |
| eckOperator.source.repoURL | string | `"https://helm.elastic.co"` |  |
| eckOperator.source.targetRevision | string | `"2.11.1"` |  |
| internalIngressController.enabled | bool | `true` |  |
| internalIngressController.name | string | `"internal-ingress"` |  |
| internalIngressController.namespace | string | `"internal-ingress"` |  |
| internalIngressController.source.chart | string | `"ingress-nginx"` |  |
| internalIngressController.source.helm.parameters[0].name | string | `"controller.ingressClass"` |  |
| internalIngressController.source.helm.parameters[0].value | string | `"nginx-internal"` |  |
| internalIngressController.source.helm.parameters[1].name | string | `"controller.watchIngressWithoutClass"` |  |
| internalIngressController.source.helm.parameters[1].value | string | `"true"` |  |
| internalIngressController.source.helm.parameters[2].name | string | `"controller.ingressClassResource.name"` |  |
| internalIngressController.source.helm.parameters[2].value | string | `"nginx-internal"` |  |
| internalIngressController.source.helm.parameters[3].name | string | `"controller.ingressClassResource.default"` |  |
| internalIngressController.source.helm.parameters[3].value | string | `"true"` |  |
| internalIngressController.source.repoURL | string | `"https://kubernetes.github.io/ingress-nginx"` |  |
| internalIngressController.source.targetRevision | string | `"4.12.1"` |  |
| kyverno.enabled | bool | `false` |  |
| kyverno.name | string | `"kyverno"` |  |
| kyverno.namespace | string | `"kyverno"` |  |
| kyverno.source.chart | string | `"kyverno"` |  |
| kyverno.source.helm.parameters[0].name | string | `"admissionController.replicas"` |  |
| kyverno.source.helm.parameters[0].value | string | `"3"` |  |
| kyverno.source.repoURL | string | `"https://kyverno.github.io/kyverno"` |  |
| kyverno.source.targetRevision | string | `"3.3.5"` |  |
| kyvernoPolicies.enabled | bool | `false` |  |
| kyvernoPolicies.name | string | `"kyverno-policies"` |  |
| kyvernoPolicies.namespace | string | `"kyverno"` |  |
| kyvernoPolicies.source.chart | string | `"kyverno-policies"` |  |
| kyvernoPolicies.source.repoURL | string | `"https://she-informationstechnologie.github.io/charts"` |  |
| kyvernoPolicies.source.targetRevision | string | `"0.0.5"` |  |
| metrics.enabled | bool | `false` |  |
| metrics.name | string | `"metrics"` |  |
| metrics.namespace | string | `"kube-system"` |  |
| metrics.source.chart | string | `"metrics-server"` |  |
| metrics.source.helm.values | string | `"defaultArgs:\n  - --cert-dir=/tmp\n  - --kubelet-preferred-address-types=InternalIP,ExternalIP,Hostname\n  - --kubelet-use-node-status-port\n  - --metric-resolution=15s\n  - --kubelet-insecure-tls\n"` |  |
| metrics.source.repoURL | string | `"https://kubernetes-sigs.github.io/metrics-server"` |  |
| metrics.source.targetRevision | string | `"3.12.2"` |  |
| minioOperator.enabled | bool | `false` |  |
| minioOperator.name | string | `"minio-operator"` |  |
| minioOperator.namespace | string | `"minio-operator"` |  |
| minioOperator.source.chart | string | `"operator"` |  |
| minioOperator.source.repoURL | string | `"https://operator.min.io"` |  |
| minioOperator.source.targetRevision | string | `"5.0.14"` |  |
| opensearchOperator.enabled | bool | `false` |  |
| opensearchOperator.name | string | `"opensearch-operator"` |  |
| opensearchOperator.namespace | string | `"opensearch-operator"` |  |
| opensearchOperator.source.chart | string | `"opensearch-operator"` |  |
| opensearchOperator.source.repoURL | string | `"https://opensearch-project.github.io/opensearch-k8s-operator/"` |  |
| opensearchOperator.source.targetRevision | string | `"2.6.1"` |  |
| postgresOperator.enabled | bool | `true` |  |
| postgresOperator.name | string | `"postgres-operator"` |  |
| postgresOperator.namespace | string | `"postgres-operator"` |  |
| postgresOperator.source.path | string | `"kustomize/install"` |  |
| postgresOperator.source.repoURL | string | `"https://github.com/SHE-Informationstechnologie/postgres-operator-examples.git"` |  |
| postgresOperator.source.targetRevision | string | `"v5.3.1-she-3"` |  |
| prometheusOperator.alertmanager.alertmanagerSpec.secrets | list | `[]` |  |
| prometheusOperator.alertmanager.alertmanagerSpec.storage | object | `{}` |  |
| prometheusOperator.alertmanager.config | object | `{}` |  |
| prometheusOperator.alertmanager.enabled | bool | `true` |  |
| prometheusOperator.alertmanager.ingress | object | `{}` |  |
| prometheusOperator.alertmanager.storage | object | `{}` |  |
| prometheusOperator.commonLabels | object | `{}` |  |
| prometheusOperator.enabled | bool | `true` |  |
| prometheusOperator.global | object | `{}` |  |
| prometheusOperator.grafana.enabled | bool | `true` |  |
| prometheusOperator.grafana.ingress | object | `{}` |  |
| prometheusOperator.grafana.serviceMonitor.labels."kubernetes.she.net/prometheus-instance" | string | `"default"` |  |
| prometheusOperator.helm.values | string | `""` |  |
| prometheusOperator.ingress | object | `{}` |  |
| prometheusOperator.kubeStateMetrics.prometheus.monitor.additionalLabels."kubernetes.she.net/prometheus-instance" | string | `"default"` |  |
| prometheusOperator.name | string | `"prom-operator"` |  |
| prometheusOperator.namespace | string | `"monitoring"` |  |
| prometheusOperator.prometheus.crunchyPostgresExporter.enabled | bool | `true` |  |
| prometheusOperator.prometheus.enabled | bool | `true` |  |
| prometheusOperator.prometheus.ingress | object | `{}` |  |
| prometheusOperator.prometheus.prometheusSpec.storageSpec | object | `{}` |  |
| prometheusOperator.prometheus.thanosIngress.enabled | bool | `false` |  |
| prometheusOperator.prometheus.thanosService.enabled | bool | `true` |  |
| prometheusOperator.prometheus.thanosServiceExternal.enabled | bool | `false` |  |
| prometheusOperator.prometheusNodeExporter.hostNetwork | bool | `true` |  |
| prometheusOperator.prometheusNodeExporter.prometheus.monitor.additionalLabels."kubernetes.she.net/prometheus-instance" | string | `"default"` |  |
| prometheusOperator.prometheusOperator | object | `{}` |  |
| prometheusOperator.source.chart | string | `"kube-prometheus-stack"` |  |
| prometheusOperator.source.repoURL | string | `"https://prometheus-community.github.io/helm-charts"` |  |
| prometheusOperator.source.targetRevision | string | `"69.4.1"` |  |
| publicIngressController.enabled | bool | `true` |  |
| publicIngressController.name | string | `"public-ingress"` |  |
| publicIngressController.namespace | string | `"public-ingress"` |  |
| publicIngressController.source.chart | string | `"ingress-nginx"` |  |
| publicIngressController.source.helm.parameters[0].name | string | `"controller.ingressClassResource.controllerValue"` |  |
| publicIngressController.source.helm.parameters[0].value | string | `"k8s.io/ingress-nginx-public"` |  |
| publicIngressController.source.repoURL | string | `"https://kubernetes.github.io/ingress-nginx"` |  |
| publicIngressController.source.targetRevision | string | `"4.12.1"` |  |
| sealedSecrets.enabled | bool | `true` |  |
| sealedSecrets.name | string | `"sealed-secrets"` |  |
| sealedSecrets.namespace | string | `"sealed-secrets"` |  |
| sealedSecrets.source.chart | string | `"sealed-secrets"` |  |
| sealedSecrets.source.helm.parameters[0].name | string | `"skipRecreate"` |  |
| sealedSecrets.source.helm.parameters[0].value | string | `"true"` |  |
| sealedSecrets.source.helm.parameters[1].name | string | `"keyRenewPeriod"` |  |
| sealedSecrets.source.helm.parameters[1].value | string | `"0"` |  |
| sealedSecrets.source.helm.parameters[2].name | string | `"global.security.allowInsecureImages"` |  |
| sealedSecrets.source.helm.parameters[2].value | string | `"true"` |  |
| sealedSecrets.source.repoURL | string | `"registry-1.docker.io/bitnamicharts"` |  |
| sealedSecrets.source.targetRevision | string | `"2.5.6"` |  |
| taintController.enabled | bool | `false` |  |
| taintController.name | string | `"taint-controller"` |  |
| taintController.namespace | string | `"taint-controller"` |  |
| taintController.source.chart | string | `"tainter"` |  |
| taintController.source.helm.values | string | `"config:\n  data: |\n    labelTaints:\n      - taint:\n          key: dedicated\n          value: database\n          effect: NoSchedule\n        selector:\n          key: node-role.kubernetes.io/database\n      - taint:\n          key: dedicated\n          value: minio\n          effect: NoSchedule\n        selector:\n          key: node-role.kubernetes.io/minio\n    ignoreLabel:\n      key: node-role.kubernetes.io/control-plane\n"` |  |
| taintController.source.repoURL | string | `"https://bagaluten.github.io/charts/"` |  |
| taintController.source.targetRevision | string | `"0.1.4"` |  |
| trivyOperator.enabled | bool | `false` |  |
| trivyOperator.name | string | `"trivy-operator"` |  |
| trivyOperator.namespace | string | `"trivy-operator"` |  |
| trivyOperator.source.chart | string | `"trivy-operator"` |  |
| trivyOperator.source.helm.values | string | `"serviceMonitor:\n  enabled: true\n  labels:\n    kubernetes.she.net/prometheus-instance: default\ntrivy:\n  ignoreUnfixed: false\noperator:\n  metricsVulnIdEnabled: true\n"` |  |
| trivyOperator.source.repoURL | string | `"https://aquasecurity.github.io/helm-charts/"` |  |
| trivyOperator.source.targetRevision | string | `"0.25.0"` |  |
| velero.enabled | bool | `true` |  |
| velero.name | string | `"velero"` |  |
| velero.namespace | string | `"velero"` |  |
| velero.source.chart | string | `"velero"` |  |
| velero.source.helm.values | string | `"initContainers:\n- name: velero-plugin-for-aws\n  image: velero/velero-plugin-for-aws:v1.11.0\n  imagePullPolicy: IfNotPresent\n  volumeMounts:\n  - mountPath: /target\n    name: plugins\n# - name: velero-plugin-for-azure\n#   image: velero/velero-plugin-for-microsoft-azure:v1.11.0\n#   imagePullPolicy: IfNotPresent\n#   volumeMounts:\n#   - mountPath: /target\n#     name: plugins\n"` |  |
| velero.source.repoURL | string | `"https://vmware-tanzu.github.io/helm-charts"` |  |
| velero.source.targetRevision | string | `"8.3.0"` |  |
| x509Exporter.enabled | bool | `true` |  |
| x509Exporter.name | string | `"x509-exporter"` |  |
| x509Exporter.namespace | string | `"monitoring"` |  |
| x509Exporter.source.chart | string | `"x509-certificate-exporter"` |  |
| x509Exporter.source.helm.values | string | `"prometheusServiceMonitor:\n  extraLabels:\n    kubernetes.she.net/prometheus-instance: default\nprometheusRules:\n  extraLabels:\n    kubernetes.she.net/prometheus-instance: default\n  disableBuiltinAlertGroup: false\nsecretsExporter:\n  secretTypes:\n  - type: kubernetes.io/tls\n    key: tls.crt\n  - type: Opaque\n    key: tls.crt\n  resources:\n    requests:\n      cpu: 20m\n      memory: 20Mi\n    limits:\n      cpu: null\n      memory: 150M\n"` |  |
| x509Exporter.source.repoURL | string | `"https://charts.enix.io"` |  |
| x509Exporter.source.targetRevision | string | `"3.18.1"` |  |

----------------------------------------------
