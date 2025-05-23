# 1.5.0
- Read the Docs for detailed Changelogs and possible breaking changes before upgrading.
- Bump ArgoCD to v7.8.5
- Bump argoWorkflow to v0.45.8
- Bump Nginx Ingress to v4.12.1
- Bump Kyverno to v3.3.5 
- Bump Kube-Prometheus-Stack to v69.4.1
- Bump Sealed Secrets to v2.5.6
- Bump Trivy Operator to v0.25.0
- Bump x509 Exporter to v3.18.1


# 1.4.2
- Bump opensearch-operator version to v2.6.1

# 1.4.1
- Remove obsolete grafanaDashboard section since dashboards became part of the monitoring rules charts

# 1.4.0
- x509Exporter: monitor also Opaque secrets

# 1.3.4
- Fixed trivy version (was 0.19.4 instead of 0.19.1)

# 1.3.3
- Fixed trivy version (was 0.1.1 instead of 0.19.4)

# 1.3.2
- Bump opensearch Controller version

# 1.3.1
- Bump Taint Controller version and add a default config

# 1.3.0
- Added support for Grafana specific settings

# 1.2.1
- Fixed indent in velero default values

# 1.2.0
- Updated to 2.0.0 and disabled keyRenewPeriod in sealed secrets

# 1.1.0
- Added x509 exporter

# 1.0.1
- Pipeline fix and bump to 1.0.1

# 1.0.0
- Updated sealed-secrets from 1.6.0 to 2.0.0 (breaking changes, but none that affect us)
- Updated eck-operator from 2.10.0 to 2.11.1 (no breaking changes)
- Updated prometheus-operator from 56.8.0 to 57.1.1 (breaking changes, CRD update necessary)
  - CRD update: https://artifacthub.io/packages/helm/prometheus-community/kube-prometheus-stack
- Updated internal/public-ingress from 4.9.1 to 4.10.0 (no breaking changes)
- Updated argo-cd from 5.53.1 to 6.7.3 (breaking changes, but none that affect us)
- Updated velero from 5.1.7 to 6.0.0 (this version removes the nodeAgent.privileged field, you should use nodeAgent.containerSecurityContext.privileged instead)
- Updated metrics server from 3.11.0 to 3.12.0 (no breaking changes)
- Updated kyverno from 3.0.5 to 3.1.4 (breaking changes, but none that affect us right now)
- Updated kyverno policies from 0.0.3 to 0.0.5 (no breaking changes)
- Updated trivy operator from 0.18.1 to 1.19.0 (breaking changes, CRD update necessary)
  - CRD update: https://github.com/aquasecurity/trivy-operator/releases/tag/v0.19.0
- Updated grafana dashboards from 0.0.8 to 0.0.10 (no breaking changes)
- Updated argo-workflows from 0.38.0 to 0.41.0 (no breaking changes)
- Updated minio operator from 5.0.9 to 5.0.14 (no breaking changes)

# 0.0.104
- Fixed pipeline and bumped chart to 1.0.4

# 0.0.103
- Add taint controller

# 0.0.102
- Add OpenSearch Operator

# 0.0.101
- Fixed thanosServiceExternal

# 0.0.100
- Added missing hooks

# 0.0.99
- Added thanos service

# 0.0.98
- Nothing

# 0.0.97
- Added thanos ingress and external setting

# 0.0.96

- add Feature to add grafana smtp config

# 0.0.95

- update Readme

# 0.0.94

- bumped chart version of internal and public ingress controller to 4.9.0

# 0.0.93

- update Readme

# 0.0.92

- added replication dashboard for minio


# 0.0.91

- update minio dashboards datasources

# 0.0.90

- update minio dashboards datasources

# 0.0.89

- added minio dashboards

# 0.0.88

- update velero
- update kube-prometheus-stack

# 0.0.87

- update argo-cd
- update velero-aws-plugin
- update sealed-secrets

## Attention

If velero backups are used on the deployed plattform
it should be tested if it still works after updating to this version

# 0.0.86

- update sealed-secrets operator
- update ingress-nginx
- update eck-operator
- update velero
- update kube-prometheus stack

# 0.0.85
# MinIO Operator
- add MinIO Operator

# 0.0.84
# ArgoWorkflow
- add argoWorkflows stack

# 0.0.83
# Update kube-prometheus-stack
- update kube-prometheus-stack

# 0.0.82
# Update nginx-ingress
- take ingress update from renovate

# 0.0.81
# Update argocd
- take argocd update from renovate

# 0.0.80
# PrometheusOperator
- Made envFromConfigMaps in Grafana configurable

# 0.0.79
# PrometheusOperator
- Made envFromSecrets in Grafana configurable

# 0.0.78
# Update helmhart for dashboards
- update chart version of grafana-dashboard

# 0.0.77
# Update helmhart for dashboards
- update chart version of grafana-dashboard

# 0.0.76
# Update helmhart for dashboards
- update chart version of grafana-dashboard

# 0.0.75
# New helmchart for dashboards
- added chart to deploy grafana dashboards

# 0.0.74
# change file extension for trivy-dashboard.json
- added file extension .json to grafana-trivy-dashboard name

# 0.0.73
# configure scrape label for velero
- add scrape label in template for velero

# 0.0.72
# Configure cluster specific trivy dashboard
- change target-name for argocd to specific cluster

# 0.0.71
# Add possibility to change Grafana Service Monitor label
- added to additionalLabel to values.yaml for grafana

# 0.0.70
# update kube-state-metrics Service Monitor scrape label
- added to additionalLabel to values.yaml for kube-state-metrics and grafana operators

# 0.0.69
# test release
- nothing changed

# 0.0.68
# Define kube-state-metrics Service Monitor scrape label
- add `serviceMonitor.labels.kubernetes.she.net/prometheus-instance=default`

# 0.0.67
# Define Grafana Service Monitor scrape label
- fix misspelled label

# 0.0.66
# Define Grafana Service Monitor scrape label
- add `serviceMonitor.labels.kubernetes.she.net/prometheus-instance=default`

# 0.0.65
# PrometheusOperator fix that node labels are scraped again
- add `kubernetes.she.net/prometheus-instance` labels to node-exporter ServiceMonitor

# 0.0.64
# TrivyOperator
- Fixed Grafana Dashboard

# 0.0.63
# TrivyOperator
- Added Grafana Dashboard

# 0.0.62
# PrometheusOperator
### BREAKING CHANGES ####
- Simplified alertmanagerSpec settings. You need to move "alertmanager.secrets" now to "alertmanager.alertmanagerSpec.secrets"!

# 0.0.61
# PrometheusOperator
- Minor fix in nodeExporter

# 0.0.60
# PrometheusOperator
- Made kubeStateMetrics and prometheusOperator (sub-component) configurable

# 0.0.59
- removed merge marker

# 0.0.58
# PrometheusOperator
- made global section configurable

# 0.0.57

- fix: add vuln-id metrics and disable ignore unfixed

# 0.0.56

- fix: fix servicemonitor label for trivy operator

# 0.0.55

- feature: add trivy operator

# 0.0.54

- fix prometheus templating commonLabels error

# 0.0.53

- nstead of detecting ServiceMonitors, PodMonitors and PrometheusRules by the release label
  we use the kubernetes.she.net/prometheus-instance label now

# 0.0.52
- enable sealed secrets skipRecreate by default

# 0.0.51

- enable argocd metrics service

# 0.0.50

- update kyverno-polcies chart to 0.0.2

# 0.0.49

- Fix kyverno chart values (so that they do not get overriden by accident)

# 0.0.48

- Add kyverno-polcies chart in version 0.0.1

# 0.0.47

- Add kyverno to she-runtime

# 0.0.46
- Downgraded velero aws plugin to v1.7.1 since v1.8.0 is not released yet

# 0.0.45
- Fixed deployRestic setting in velero since its no longer supported

# 0.0.44
- Removed trailing whitespaces in values.yaml and CHANGELOG.md
- Fixed version of postgresOperator

# 0.0.43

## Updated all versions of included Helm-Charts/Images

- sealed-secrets 1.0.10 -> 1.5.2
- postgres-operator 5.3.1-she -> 5.3.1-she-3
Added PG13 Examples
- eck-operator 2.6.1 -> 2.9.0
https://www.elastic.co/guide/en/cloud-on-k8s/current/eck-release-notes.html
- prom-operator 44.3.0 -> 50.3.1
https://github.com/prometheus-community/helm-charts/tree/main/charts/kube-prometheus-stack#upgrading-an-existing-release-to-a-new-major-version
- ingress-nginx 4.4.2 -> 4.7.1
https://artifacthub.io/packages/helm/ingress-nginx/ingress-nginx?modal=changelog
- argo 5.19.12 -> 5.45.1
https://artifacthub.io/packages/helm/argo/argo-cd?modal=changelog
- velero-container 1.5.0 -> 1.8.0
- velero 2.32.1 -> 5.0.2
Included velero-version v1.9.2 -> v1.11.1
- metrics-server 3.10.0 -> 3.11.0
https://artifacthub.io/packages/helm/metrics-server/metrics-server?modal=changelog
Breaking changes are summarized below, refer to the original projects changelog for non-breaking changes.

### Breaking Change

- Major version upgrades of included components
- eck-operator 2.8.0
https://www.elastic.co/guide/en/cloud-on-k8s/current/release-notes-2.8.0.html
Use provided base path for stackconfigpolicys snapshot repository #6689 (issue: #6692)
APM Server: Fix secret token config for APM Server 8.0+ #6769 (issue: #6768)
- eck-operator 2.9.0
https://www.elastic.co/guide/en/cloud-on-k8s/current/release-notes-2.9.0.html
Add Support for volumeClaimTemplates for Logstash controller #6884
- prom-operator
https://artifacthub.io/packages/helm/ingress-nginx/ingress-nginx?modal=changelog
Manual upgrade of CRDs required
- velero
https://velero.io/docs/v1.10/upgrade-to-1.10/
https://velero.io/docs/v1.11/upgrade-to-1.11/
https://github.com/vmware-tanzu/helm-charts/blob/main/charts/velero/README.md#note
Manual upgrade-steps required

# 0.0.42

## Prometheus

- Enable Support for extraSecretMounts in Grafana deployment

# 0.0.41

## Prometheus

- Fix hostNetwork setting, so that is now actually possible to disable the hostNetwork on NodeExporter

# 0.0.40

## Prometheus

- Change handling of prometheusSpec to allow for more flexibility

# 0.0.38

## Prometheus

- update grafana sidecar

# 0.0.37

## Prometheus

- fix skip tls verify in grafana sidecar

# 0.0.36

## Prometheus

- fix 0.0.32 and set skip tls verification to true

# 0.0.32

## Prometheus
 - skip tls verify in grafana sidecars to allow dashboard refresh

# 0.0.32

## Prometheus
 - skip tls verify in grafana sidecars to allow dashboard refresh

# 0.0.31

## Prometheus
 - give grafana a pvc for alerting rules.


# 0.0.21
## Prometheus
- Allow configuration of additionalAlertManagerConfigs
- Make prometheus.serviceMonitorSelectors optional
- Remove prometheus.serviceMonitorSelectors default value, as leading to issues because it could not be overriden

### Breaking Change
- Remove prometheus.serviceMonitorSelectors default value, as leading to issues because it could not be overriden
  => Add following entry again on used installations, if needed:
```
  prometheusOperator:
    prometheus:
      serviceMonitorSelectors:
        matchLabels:
          prometheus: she
```

# 0.0.20
## Prometheus
- Allow configuration of ingress annotations for all subcharts
- Allow configuration of Grafana Oauth via .grafana.auth.generic_oauth
- Allow configuration of Prometheus default rules, to selectively enable/disable Prometheus Default Rules

# 0.0.19

- Allow alertmanager configuration

# 0.0.18

- Rewrite logic for serviceMonitorSelectors
- Make nginx-internal the default ingress controller, that also watches ingress resources without class

# 0.0.17

- Added dummy ingress

# 0.0.16

- prometheus Operator allow to set baseUrl for all components

# 0.0.15

- Removed ingressClass from prometheusOperator
- Fixed prometheusOperator.prometheus.serviceMonitorSelector
- Added server.ingress.enabled parameter to argoApp
