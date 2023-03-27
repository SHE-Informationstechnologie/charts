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

