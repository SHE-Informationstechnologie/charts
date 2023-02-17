# 0.0.19

- Rename ingressClass of the public ingress controller from `nginx` to `public` to make it more obvious that things are made accessible by using this class.

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

