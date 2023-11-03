# 0.0.82
# Update nginx-ingress

- take ingress update from renovate

# 0.0.81
# Update argocd

- take argocd update from ronvate

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

