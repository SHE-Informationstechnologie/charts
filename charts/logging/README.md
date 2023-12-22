# logging

![Version: 1.0.3](https://img.shields.io/badge/Version-1.0.3-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 8.9.1](https://img.shields.io/badge/AppVersion-8.9.1-informational?style=flat-square)

A Helm chart for Kubernetes

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| elasticsearch.http.tls.selfSignedCertificate.disabled | bool | `true` |  |
| elasticsearch.nodeSets[0].config."node.roles"[0] | string | `"master"` |  |
| elasticsearch.nodeSets[0].config."node.roles"[1] | string | `"data"` |  |
| elasticsearch.nodeSets[0].config."node.roles"[2] | string | `"ingest"` |  |
| elasticsearch.nodeSets[0].config."node.store.allow_mmap" | bool | `false` |  |
| elasticsearch.nodeSets[0].count | int | `3` |  |
| elasticsearch.nodeSets[0].name | string | `"main-node"` |  |
| elasticsearch.nodeSets[0].podTemplate.spec.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution[0].labelSelector.matchExpressions[0].key | string | `"common.k8s.elastic.co/type"` |  |
| elasticsearch.nodeSets[0].podTemplate.spec.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution[0].labelSelector.matchExpressions[0].operator | string | `"In"` |  |
| elasticsearch.nodeSets[0].podTemplate.spec.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution[0].labelSelector.matchExpressions[0].values[0] | string | `"elasticsearch"` |  |
| elasticsearch.nodeSets[0].podTemplate.spec.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution[0].topologyKey | string | `"kubernetes.io/hostname"` |  |
| elasticsearch.nodeSets[0].podTemplate.spec.containers[0].env[0].name | string | `"ES_JAVA_OPTS"` |  |
| elasticsearch.nodeSets[0].podTemplate.spec.containers[0].env[0].value | string | `"-Xms2g -Xmx2g"` |  |
| elasticsearch.nodeSets[0].podTemplate.spec.containers[0].name | string | `"elasticsearch"` |  |
| elasticsearch.nodeSets[0].podTemplate.spec.containers[0].resources.limits.cpu | int | `1` |  |
| elasticsearch.nodeSets[0].podTemplate.spec.containers[0].resources.limits.memory | string | `"4Gi"` |  |
| elasticsearch.nodeSets[0].volumeClaimTemplates[0].metadata.name | string | `"elasticsearch-data"` |  |
| elasticsearch.nodeSets[0].volumeClaimTemplates[0].spec.accessModes[0] | string | `"ReadWriteOnce"` |  |
| elasticsearch.nodeSets[0].volumeClaimTemplates[0].spec.resources.requests.storage | string | `"200G"` |  |
| elasticsearch.nodeSets[0].volumeClaimTemplates[0].spec.storageClassName | string | `"cinder-rbd"` |  |
| filebeat.config."logging.json" | bool | `true` |  |
| filebeat.config.filebeat.autodiscover.providers[0].hints.default_config.paths[0] | string | `"/var/log/containers/*${data.kubernetes.container.id}.log"` |  |
| filebeat.config.filebeat.autodiscover.providers[0].hints.default_config.type | string | `"container"` |  |
| filebeat.config.filebeat.autodiscover.providers[0].hints.enabled | bool | `true` |  |
| filebeat.config.filebeat.autodiscover.providers[0].node | string | `"${NODE_NAME}"` |  |
| filebeat.config.filebeat.autodiscover.providers[0].type | string | `"kubernetes"` |  |
| filebeat.config.processors[0].add_host_metadata | object | `{}` |  |
| filebeat.daemonSet.podTemplate.spec.automountServiceAccountToken | bool | `true` |  |
| filebeat.daemonSet.podTemplate.spec.containers[0].env[0].name | string | `"NODE_NAME"` |  |
| filebeat.daemonSet.podTemplate.spec.containers[0].env[0].valueFrom.fieldRef.fieldPath | string | `"spec.nodeName"` |  |
| filebeat.daemonSet.podTemplate.spec.containers[0].name | string | `"filebeat"` |  |
| filebeat.daemonSet.podTemplate.spec.containers[0].securityContext.privileged | bool | `true` |  |
| filebeat.daemonSet.podTemplate.spec.containers[0].securityContext.runAsUser | int | `0` |  |
| filebeat.daemonSet.podTemplate.spec.containers[0].volumeMounts[0].mountPath | string | `"/etc/filebeat-ilm.json"` |  |
| filebeat.daemonSet.podTemplate.spec.containers[0].volumeMounts[0].name | string | `"ilmconfig"` |  |
| filebeat.daemonSet.podTemplate.spec.containers[0].volumeMounts[0].subPath | string | `"filebeat-ilm.json"` |  |
| filebeat.daemonSet.podTemplate.spec.containers[0].volumeMounts[1].mountPath | string | `"/var/log/containers"` |  |
| filebeat.daemonSet.podTemplate.spec.containers[0].volumeMounts[1].name | string | `"varlogcontainers"` |  |
| filebeat.daemonSet.podTemplate.spec.containers[0].volumeMounts[2].mountPath | string | `"/var/log/pods"` |  |
| filebeat.daemonSet.podTemplate.spec.containers[0].volumeMounts[2].name | string | `"varlogpods"` |  |
| filebeat.daemonSet.podTemplate.spec.containers[0].volumeMounts[3].mountPath | string | `"/var/lib/docker/containers"` |  |
| filebeat.daemonSet.podTemplate.spec.containers[0].volumeMounts[3].name | string | `"varlibdockercontainers"` |  |
| filebeat.daemonSet.podTemplate.spec.dnsPolicy | string | `"ClusterFirstWithHostNet"` |  |
| filebeat.daemonSet.podTemplate.spec.hostNetwork | bool | `true` |  |
| filebeat.daemonSet.podTemplate.spec.securityContext.runAsUser | int | `0` |  |
| filebeat.daemonSet.podTemplate.spec.serviceAccountName | string | `"filebeat"` |  |
| filebeat.daemonSet.podTemplate.spec.terminationGracePeriodSeconds | int | `30` |  |
| filebeat.daemonSet.podTemplate.spec.tolerations[0].effect | string | `"NoSchedule"` |  |
| filebeat.daemonSet.podTemplate.spec.tolerations[0].operator | string | `"Exists"` |  |
| filebeat.daemonSet.podTemplate.spec.volumes[0].configMap.name | string | `"filebeat-ilm"` |  |
| filebeat.daemonSet.podTemplate.spec.volumes[0].name | string | `"ilmconfig"` |  |
| filebeat.daemonSet.podTemplate.spec.volumes[1].hostPath.path | string | `"/var/log/containers"` |  |
| filebeat.daemonSet.podTemplate.spec.volumes[1].name | string | `"varlogcontainers"` |  |
| filebeat.daemonSet.podTemplate.spec.volumes[2].hostPath.path | string | `"/var/log/pods"` |  |
| filebeat.daemonSet.podTemplate.spec.volumes[2].name | string | `"varlogpods"` |  |
| filebeat.daemonSet.podTemplate.spec.volumes[3].hostPath.path | string | `"/var/lib/docker/containers"` |  |
| filebeat.daemonSet.podTemplate.spec.volumes[3].name | string | `"varlibdockercontainers"` |  |
| filebeat.ilm.custom.customFile | string | `"policy:\n  phases:\n    hot:\n      min_age: 0ms\n      actions:\n        rollover:\n          max_age: 7d\n    delete:\n      min_age: 53d\n      actions:\n        delete: {}\n"` |  |
| filebeat.ilm.custom.enabled | bool | `false` |  |
| filebeat.ilm.deleteAfter | string | `"21d"` |  |
| filebeat.ilm.enabled | bool | `true` |  |
| filebeat.ilm.overwrite | bool | `true` |  |
| filebeat.ilm.rotateAfter | string | `"7d"` |  |
| general.version | string | `"8.9.1"` |  |
| kibana.count | int | `1` |  |
| kibana.http.tls.selfSignedCertificate.disabled | bool | `true` |  |
| kibana.ingress.annotations | object | `{}` |  |
| kibana.ingress.className | string | `""` |  |
| kibana.ingress.enabled | bool | `true` |  |
| kibana.ingress.hosts[0].host | string | `"kibana.example.local"` |  |
| kibana.ingress.hosts[0].paths[0].path | string | `"/"` |  |
| kibana.ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| kibana.ingress.tls[0].hosts[0] | string | `"kibana.example.local"` |  |
| kibana.ingress.tls[0].secretName | string | `"example-tls"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.12.0](https://github.com/norwoodj/helm-docs/releases/v1.12.0)
