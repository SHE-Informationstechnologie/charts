# kyverno-policies

![Version: 0.0.5](https://img.shields.io/badge/Version-0.0.5-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.0.5](https://img.shields.io/badge/AppVersion-0.0.5-informational?style=flat-square)

A collection of policies for kyverno

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| policies.protectResourceByLabel.action | string | `"Enforce"` |  |
| policies.protectResourceByLabel.enabled | bool | `true` |  |
| policies.protectResourceByLabel.message | string | `"If you want to delete it anyways make sure to remove the kubernetes.she.net/protected label"` |  |
