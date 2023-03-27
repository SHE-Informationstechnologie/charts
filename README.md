# SHE Helm Charts Repository

This is the SHE public helm charts repository.



## Installing charts

In order to install charts from this repository you need to add it to your local helm repositories.

```shell
helm repo add she https://she-informationstechnologie.github.io/charts/
helm repo update
```

## Listing SHE charts


```shell
helm search repo she


NAME           	CHART VERSION	APP VERSION	DESCRIPTION
she/she-runtime	0.0.1        	0.0.1      	SHE Default K8s cluster toolset
```