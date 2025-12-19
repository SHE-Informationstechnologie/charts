# minio-mirror

![Version: 0.4.1](https://img.shields.io/badge/Version-0.4.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: RELEASE.2024-04-18T16-45-29Z.1](https://img.shields.io/badge/AppVersion-RELEASE.2024--04--18T16--45--29Z.1-informational?style=flat-square)

A Helm chart that provides a minio mirror service

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| config.general.insecure | bool | `true` |  |
| config.general.minioUrl | string | `"https://minio.minio.svc.cluster.local:9000"` |  |
| config.general.targetUrl | string | `"https://s3.exanple.com"` |  |
| config.minioCredentials.existingSecret.name | string | `"secret-name"` |  |
| config.minioCredentials.existingSecret.volumeMount | object | `{}` |  |
| config.syncConfig[0].minioBucket | string | `"example-bucket"` |  |
| config.syncConfig[0].minioSecretKey | string | `"key-in-secret"` |  |
| config.syncConfig[0].targetBucket | string | `"example-bucket"` |  |
| config.syncConfig[0].targetPrefix | string | `"sub/"` |  |
| config.syncConfig[0].targetSecretKey | string | `"key-in-secret"` |  |
| config.targetCredentials.existingSecret.name | string | `"secret-name"` |  |
| config.targetCredentials.existingSecret.volumeMount | object | `{}` |  |
| extraVolumeMounts | list | `[]` |  |
| extraVolumes | list | `[]` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"mettendorfit/mc-plus"` |  |
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| livenessProbe.exec.command[0] | string | `"/opt/liveness-probe.sh"` |  |
| livenessProbe.failureThreshold | int | `1` |  |
| livenessProbe.initialDelaySeconds | int | `5` |  |
| livenessProbe.periodSeconds | int | `30` |  |
| metrics.additionalLabels."kubernetes.she.net/prometheus-instance" | string | `"default"` |  |
| metrics.basePort | int | `8000` |  |
| metrics.enabled | bool | `true` |  |
| metrics.labelSelectors."app.kubernetes.io/name" | string | `"minio-mirror"` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podLabels | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| readinessProbe.exec.command[0] | string | `"cat"` |  |
| readinessProbe.exec.command[1] | string | `"/tmp/healthy"` |  |
| readinessProbe.initialDelaySeconds | int | `5` |  |
| readinessProbe.periodSeconds | int | `5` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.automount | bool | `true` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| tolerations | list | `[]` |  |

----------------------------------------------
