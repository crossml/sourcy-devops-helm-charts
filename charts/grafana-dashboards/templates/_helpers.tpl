{{/*
Expand the name of the chart.
*/}}
{{- define "grafana-dashboards.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "grafana-dashboards.labels" -}}
helm.sh/chart: {{ include "grafana-dashboards.name" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}
