# minio-mirror

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: RELEASE.2024-03-13T23-51-57Z](https://img.shields.io/badge/AppVersion-RELEASE.2024--03--13T23--51--57Z-informational?style=flat-square)

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
| config.syncConfig[0].syncDeletions | bool | `true` |  |
| config.syncConfig[0].targetBucket | string | `"example-bucket"` |  |
| config.syncConfig[0].targetPrefix | string | `"sub/"` |  |
| config.syncConfig[0].targetSecretKey | string | `"key-in-secret"` |  |
| config.targetCredentials.existingSecret.name | string | `"secret-name"` |  |
| config.targetCredentials.existingSecret.volumeMount | object | `{}` |  |
| extraVolumeMounts | list | `[]` |  |
| extraVolumes | list | `[]` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"minio/mc"` |  |
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| livenessProbe.exec.command[0] | string | `"cat"` |  |
| livenessProbe.exec.command[1] | string | `"/tmp/healthy"` |  |
| livenessProbe.initialDelaySeconds | int | `5` |  |
| livenessProbe.periodSeconds | int | `5` |  |
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
