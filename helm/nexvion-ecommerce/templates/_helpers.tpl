{{- define "nexvion-ecommerce.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "nexvion-ecommerce.fullname" -}}
{{- printf "%s" (include "nexvion-ecommerce.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
