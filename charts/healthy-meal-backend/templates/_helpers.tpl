{{/* templates/_helpers.tpl */}}

{{/*
애플리케이션의 전체 이름을 정의합니다.
*/}}
{{- define "healthy-meal-backend.fullname" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
공통 레이블을 정의합니다.
*/}}
{{- define "healthy-meal-backend.labels" -}}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app: {{ .Chart.Name }}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{/*
Service가 Deployment를 찾을 때 사용할 Selector 레이블을 정의합니다.
*/}}
{{- define "healthy-meal-backend.selectorLabels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}