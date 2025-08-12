{{/*
Expand the name of the chart.
*/}}
{{- define "hola-mundo-helm.name" -}}
{{- .Chart.Name -}}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate to 63 chars to conform to Kubernetes name limits.
*/}}
{{- define "hola-mundo-helm.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Common labels
*/}}
{{- define "hola-mundo-helm.labels" -}}
app.kubernetes.io/name: {{ include "hola-mundo-helm.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}
