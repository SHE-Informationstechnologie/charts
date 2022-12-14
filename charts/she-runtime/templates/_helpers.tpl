{{- define "argo.targetCluster" }}
  {{- .Values.argo.targetCluster | required "A value for argo.targetCluster is required" }}
{{- end }}

{{- define "argo.targetCluster.name" }}
  {{- .Values.argo.targetClusterAltName | default (include "argo.targetCluster" . )}}
{{- end }}

{{- define "argo.project" }}
  {{- .Values.argo.project | required "A Value for argo.project is required" }}
{{- end }}

{{- define "application.name" }}
  {{- .name | required "a name is required for the application to be deployed"}}
{{- end }}

{{- define "application.namespace" }}
  {{- .namespace | required "a namespace is required for the application to be deployed"}}
{{- end }}

{{- define "application.source" }}
  {{- $releaseName := dict "releaseName" (include "application.name" . ) }}
  {{- if .source.chart }}
    {{- if .source.helm }}
        {{- $helmsource := dict "helm" (merge $releaseName .source.helm) }}
        {{- $source := merge $helmsource .source }}
        {{- toYaml $source }}
    {{- else }}
        {{- $helmsource := dict "helm" $releaseName  }}
        {{- $source := merge $helmsource .source }}
        {{- toYaml $source }}
    {{- end }}
  {{- else }}
    {{- toYaml .source }}
  {{- end }}
{{- end }}
