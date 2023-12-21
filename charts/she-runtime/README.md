# she-runtime

![Version: 0.0.92](https://img.shields.io/badge/Version-0.0.92-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.0.92](https://img.shields.io/badge/AppVersion-0.0.92-informational?style=flat-square)

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
| argoApp.source.targetRevision | string | `"5.51.6"` |  |
| argoWorkflow.enabled | bool | `false` |  |
| argoWorkflow.name | string | `"argo-workflows"` |  |
| argoWorkflow.namespace | string | `"argo-workflows"` |  |
| argoWorkflow.source.chart | string | `"argo-workflows"` |  |
| argoWorkflow.source.helm.values | string | `"controller:\n  metricsConfig:\n    enabled: true\n  telemetryConfig:\n    enabled: true\n  serviceMonitor:\n    enabled: true\n    additionalLabels:\n      kubernetes.she.net/prometheus-instance: default\n    namespace: \"monitoring\"\nworkflow:\n  serviceAccount:\n    create: true\n    name: \"argo-workflows\"\nserver:\n  authMode: \"server\"\n"` |  |
| argoWorkflow.source.repoURL | string | `"https://argoproj.github.io/argo-helm"` |  |
| argoWorkflow.source.targetRevision | string | `"0.38.0"` |  |
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
| eckOperator.source.targetRevision | string | `"2.10.0"` |  |
| grafanaDashboards.enabled | bool | `false` |  |
| grafanaDashboards.name | string | `"grafana-dashboards"` |  |
| grafanaDashboards.namespace | string | `"monitoring"` |  |
| grafanaDashboards.source.chart | string | `"grafana-dashboards"` |  |
| grafanaDashboards.source.repoURL | string | `"https://she-informationstechnologie.github.io/charts"` |  |
| grafanaDashboards.source.targetRevision | string | `"0.0.8"` |  |
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
| internalIngressController.source.targetRevision | string | `"4.8.4"` |  |
| kyverno.enabled | bool | `false` |  |
| kyverno.name | string | `"kyverno"` |  |
| kyverno.namespace | string | `"kyverno"` |  |
| kyverno.source.chart | string | `"kyverno"` |  |
| kyverno.source.helm.parameters[0].name | string | `"admissionController.replicas"` |  |
| kyverno.source.helm.parameters[0].value | string | `"3"` |  |
| kyverno.source.repoURL | string | `"https://kyverno.github.io/kyverno"` |  |
| kyverno.source.targetRevision | string | `"3.0.5"` |  |
| kyvernoPolicies.enabled | bool | `false` |  |
| kyvernoPolicies.name | string | `"kyverno-policies"` |  |
| kyvernoPolicies.namespace | string | `"kyverno"` |  |
| kyvernoPolicies.source.chart | string | `"kyverno-policies"` |  |
| kyvernoPolicies.source.repoURL | string | `"https://she-informationstechnologie.github.io/charts"` |  |
| kyvernoPolicies.source.targetRevision | string | `"0.0.2"` |  |
| metrics.enabled | bool | `false` |  |
| metrics.name | string | `"metrics"` |  |
| metrics.namespace | string | `"kube-system"` |  |
| metrics.source.chart | string | `"metrics-server"` |  |
| metrics.source.helm.values | string | `"defaultArgs:\n  - --cert-dir=/tmp\n  - --kubelet-preferred-address-types=InternalIP,ExternalIP,Hostname\n  - --kubelet-use-node-status-port\n  - --metric-resolution=15s\n  - --kubelet-insecure-tls\n"` |  |
| metrics.source.repoURL | string | `"https://kubernetes-sigs.github.io/metrics-server"` |  |
| metrics.source.targetRevision | string | `"3.11.0"` |  |
| minioOperator.enabled | bool | `false` |  |
| minioOperator.name | string | `"minio-operator"` |  |
| minioOperator.namespace | string | `"minio-operator"` |  |
| minioOperator.source.chart | string | `"operator"` |  |
| minioOperator.source.repoURL | string | `"https://operator.min.io"` |  |
| minioOperator.source.targetRevision | string | `"5.0.9"` |  |
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
| prometheusOperator.ingress.baseUrl | string | `"my.domain"` |  |
| prometheusOperator.ingress.enabled | bool | `true` |  |
| prometheusOperator.kubeStateMetrics.prometheus.monitor.additionalLabels."kubernetes.she.net/prometheus-instance" | string | `"default"` |  |
| prometheusOperator.name | string | `"prom-operator"` |  |
| prometheusOperator.namespace | string | `"monitoring"` |  |
| prometheusOperator.prometheus.crunchyPostgresExporter.enabled | bool | `true` |  |
| prometheusOperator.prometheus.enabled | bool | `true` |  |
| prometheusOperator.prometheus.ingress | object | `{}` |  |
| prometheusOperator.prometheus.prometheusSpec.storageSpec | object | `{}` |  |
| prometheusOperator.prometheusNodeExporter.hostNetwork | bool | `true` |  |
| prometheusOperator.prometheusNodeExporter.prometheus.monitor.additionalLabels."kubernetes.she.net/prometheus-instance" | string | `"default"` |  |
| prometheusOperator.prometheusOperator | object | `{}` |  |
| prometheusOperator.source.chart | string | `"kube-prometheus-stack"` |  |
| prometheusOperator.source.helm.values | string | `""` |  |
| prometheusOperator.source.repoURL | string | `"https://prometheus-community.github.io/helm-charts"` |  |
| prometheusOperator.source.targetRevision | string | `"55.3.0"` |  |
| publicIngressController.enabled | bool | `true` |  |
| publicIngressController.name | string | `"public-ingress"` |  |
| publicIngressController.namespace | string | `"public-ingress"` |  |
| publicIngressController.source.chart | string | `"ingress-nginx"` |  |
| publicIngressController.source.helm.parameters[0].name | string | `"controller.ingressClassResource.controllerValue"` |  |
| publicIngressController.source.helm.parameters[0].value | string | `"k8s.io/ingress-nginx-public"` |  |
| publicIngressController.source.repoURL | string | `"https://kubernetes.github.io/ingress-nginx"` |  |
| publicIngressController.source.targetRevision | string | `"4.8.4"` |  |
| sealedSecrets.enabled | bool | `true` |  |
| sealedSecrets.name | string | `"sealed-secrets"` |  |
| sealedSecrets.namespace | string | `"sealed-secrets"` |  |
| sealedSecrets.source.chart | string | `"sealed-secrets"` |  |
| sealedSecrets.source.helm.parameters[0].name | string | `"skipRecreate"` |  |
| sealedSecrets.source.helm.parameters[0].value | string | `"true"` |  |
| sealedSecrets.source.repoURL | string | `"https://charts.bitnami.com/bitnami"` |  |
| sealedSecrets.source.targetRevision | string | `"1.6.2"` |  |
| trivyOperator.enabled | bool | `false` |  |
| trivyOperator.name | string | `"trivy-operator"` |  |
| trivyOperator.namespace | string | `"trivy-operator"` |  |
| trivyOperator.source.chart | string | `"trivy-operator"` |  |
| trivyOperator.source.helm.values | string | `"serviceMonitor:\n  enabled: true\n  labels:\n    kubernetes.she.net/prometheus-instance: default\ntrivy:\n  ignoreUnfixed: false\noperator:\n  metricsVulnIdEnabled: true\n"` |  |
| trivyOperator.source.repoURL | string | `"https://aquasecurity.github.io/helm-charts/"` |  |
| trivyOperator.source.targetRevision | string | `"0.18.1"` |  |
| velero.enabled | bool | `true` |  |
| velero.initContainers[0].image | string | `"velero/velero-plugin-for-aws:v1.8.2"` |  |
| velero.initContainers[0].imagePullPolicy | string | `"IfNotPresent"` |  |
| velero.initContainers[0].name | string | `"velero-plugin-for-aws"` |  |
| velero.initContainers[0].volumeMounts[0].mountPath | string | `"/target"` |  |
| velero.initContainers[0].volumeMounts[0].name | string | `"plugins"` |  |
| velero.name | string | `"velero"` |  |
| velero.namespace | string | `"velero"` |  |
| velero.resources.limits.cpu | string | `"1000m"` |  |
| velero.resources.limits.memory | string | `"512Mi"` |  |
| velero.resources.requests.cpu | string | `"500m"` |  |
| velero.resources.requests.memory | string | `"128Mi"` |  |
| velero.source.chart | string | `"velero"` |  |
| velero.source.helm.values | string | `""` |  |
| velero.source.repoURL | string | `"https://vmware-tanzu.github.io/helm-charts"` |  |
| velero.source.targetRevision | string | `"5.1.7"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.3](https://github.com/norwoodj/helm-docs/releases/v1.11.3)
