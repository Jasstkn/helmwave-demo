version: 0.18.0

.options: &options
  namespace: microservices-demo
  wait: true
  timeout: 300s
  create_namespace: true

releases:
{{- with readFile "releases.yaml" | fromYaml | get "releases" }}
{{ range $v := . }}
- name: {{ $v | get "name" }}
  chart:
    name: charts/{{ $v | get "name" }}
  tags: [{{ $v | get "name" }}]
  values:
    - envs-values/{{ requiredEnv "CI_ENVIRONMENT_NAME"}}/{{ $v | get "name" }}.yaml
  <<: *options
{{ end }}
{{- end }}
