# she-sso

![Version: 0.0.7](https://img.shields.io/badge/Version-0.0.7-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.0.7](https://img.shields.io/badge/AppVersion-0.0.7-informational?style=flat-square)

Integration internal cluster services into SHE SSO

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| oci://registry-1.docker.io/bitnamicharts | redis | 18.8.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| argocd.annotations."app.kubernetes.io/part-of" | string | `"argocd"` |  |
| argocd.config.cm."admin.enabled" | string | `"true"` |  |
| argocd.config.cm."application.instanceLabelKey" | string | `"argocd.argoproj.io/instance"` |  |
| argocd.config.cm."exec.enabled" | string | `"false"` |  |
| argocd.config.cm."oidc.config" | string | `"name: \"Example SSO\"\nclientID: client-id\nclientSecret: $oidc.keycloak.clientSecret\nissuer: https://sso.example.com/realms/example\nskipAudienceCheckWhenTokenHasNoAudience: true\nrequestedScopes: [\"openid\", \"profile\", \"email\", \"roles\"]\nrequestedIDTokenClaims: {\"roles\": {\"essential\": true}}\n"` |  |
| argocd.config.cm."oidc.tls.insecure.skip.verify" | string | `"true"` |  |
| argocd.config.cm."server.rbac.log.enforce.enable" | string | `"false"` |  |
| argocd.config.cm."timeout.hard.reconciliation" | string | `"0s"` |  |
| argocd.config.cm."timeout.reconciliation" | string | `"180s"` |  |
| argocd.config.cm.url | string | `"https://argocd.example.com"` |  |
| argocd.config.rbac."policy.csv" | string | `"g, devops_admin, role:admin\n"` |  |
| argocd.config.rbac."policy.default" | string | `"role:readonly"` |  |
| argocd.config.rbac.scopes | string | `"[roles]"` |  |
| argocd.enabled | bool | `true` |  |
| oAuthProxy.config.configFile | string | `"provider = \"keycloak-oidc\"\nemail_domains = [ \"*\" ]\ncookie_domains = \".example.org\"\ncookie_secure = \"true\"\noidc_issuer_url = \"https://sso.example.org/realms/example\"\nredirect_url = \"https://{{url}}/oauth2/callback\"\ncode_challenge_method = \"S256\"\nssl_insecure_skip_verify = \"true\"\nset_authorization_header = \"true\"\n"` |  |
| oAuthProxy.config.existingSecret | string | `"secret-config"` |  |
| oAuthProxy.image.repository | string | `"quay.io/oauth2-proxy/oauth2-proxy"` |  |
| oAuthProxy.imagePullSecrets | list | `[]` |  |
| oAuthProxy.redis.connectionUrl | string | `"redis://redis-master.default.svc.cluster.local:6379"` |  |
| oAuthProxy.redis.enabled | bool | `true` |  |
| oAuthProxy.redis.existingSecret | string | `"redis-password"` |  |
| oAuthProxy.redis.passwordKey | string | `"password"` |  |
| oAuthProxy.source.chart | string | `"oauth2-proxy"` |  |
| oAuthProxy.source.repoURL | string | `"https://oauth2-proxy.github.io/manifests"` |  |
| oAuthProxy.source.targetRevision | string | `"6.23.1"` |  |
| oAuthProxyServices | list | `[]` |  |
| redis.auth.existingSecret | string | `"redis-password"` |  |
| redis.auth.existingSecretPasswordKey | string | `"password"` |  |
| redis.enabled | bool | `true` |  |
| redis.image.pullSecrets | list | `[]` |  |
| redis.image.registry | string | `"docker.io"` |  |

----------------------------------------------
