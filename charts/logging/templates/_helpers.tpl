{{/*
Expand the name of the chart.
*/}}
{{- define "logging.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "logging.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "logging.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "logging.labels" -}}
helm.sh/chart: {{ include "logging.chart" . }}
{{ include "logging.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "logging.selectorLabels" -}}
app.kubernetes.io/name: {{ include "logging.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
General settings
*/}}
{{- define "general" -}}
version: {{ .Values.general.version }}
{{- end }}

{{/*
Elasticsearch generated settings
*/}}
{{- define "elasticsearch.spec" -}}
{{- merge .Values.elasticsearch (fromYaml (include "general" .)) | toYaml }}
{{- end }}

{{/*
Filebeat ILM policy
*/}}
{{- define "filebeat.ilmPolicy" -}}
{{- if and .Values.filebeat.ilm.custom.enabled .Values.filebeat.ilm.overwrite -}}
{{ .Values.filebeat.ilm.custom.customFile }}
{{- else if .Values.filebeat.ilm.overwrite }}
policy:
  phases:
    hot:
      min_age: 0ms
      actions:
        rollover:
          max_age: {{ .Values.filebeat.ilm.rotateAfter }}
    delete:
      min_age: {{ .Values.filebeat.ilm.deleteAfter }}
      actions:
        delete: {}
{{- end }}
{{- end }}

{{/*
Filebeat ILM config
*/}}
{{- define "filebeat.ilmConfig" -}}
{{- if and .Values.filebeat.ilm.enabled -}}
config:
  setup:
    ilm:
      enabled: {{ .Values.filebeat.ilm.enabled }}
      {{- if .Values.filebeat.ilm.overwrite }}
      overwrite: true
      policy_file: /etc/filebeat-ilm.json
      {{- end }}
{{- end }}
{{- end }}

{{/*
Filebeat generated settings
*/}}
{{- define "filebeat.spec" -}}
{{- $elasticsearchRef := dict "elasticsearchRef" (dict "name" (include "logging.fullname" .) )}}
{{- $kibanaRef := dict "kibanaRef" (dict "name" (include "logging.fullname" .)) }}
{{- $fileBeatConfig := unset (deepCopy .Values.filebeat) "ilm" }}
{{- mustMerge $fileBeatConfig (fromYaml (include "general" .)) (fromYaml (include "filebeat.ilmConfig" .)) $elasticsearchRef $kibanaRef | toYaml }}
{{- end }}

{{/*
Kibana config
*/}}
{{- define "kibana.config" -}}
{{- if and .Values.kibana.ingress.enabled -}}
config:
  {{- if $first := first .Values.kibana.ingress.tls }}
  {{- $firstHost := first $first.hosts }}
  server.publicBaseUrl: {{ print "https://" $firstHost }}
  {{- else }}
  {{- $firstHost := first .Values.kibana.ingress.hosts }}
  server.publicBaseUrl: {{ print "http://" $firstHost.host }}
  {{- end }}
{{- end }}
{{- end }}

{{/*
Kibana generated settings
*/}}
{{- define "kibana.spec" -}}
{{- $elasticsearchRef := dict "elasticsearchRef" (dict "name" (include "logging.fullname" .)) }}
{{- $kibanaConfig := unset (deepCopy .Values.kibana) "ingress" }}
{{- merge $kibanaConfig (fromYaml (include "general" .)) (fromYaml (include "kibana.config" .)) $elasticsearchRef | toYaml }}
{{- end }}
