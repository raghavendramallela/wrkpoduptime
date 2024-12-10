# Nginx Info Helm Chart

## Overview
This Helm chart deploys a Nginx application that displays pod and container information.

## Prerequisites
- Kubernetes 1.16+
- Helm 3.0+

## Installing the Chart
To install the chart with the release name `my-release`:

```bash
helm install my-release ./nginx-info
```

## Configuration
The following table lists the configurable parameters of the chart and their default values.

| Parameter | Description | Default |
|-----------|-------------|---------|
| `replicaCount` | Number of replicas | `1` |
| `image.repository` | Image repository | `raghavendramallela/podnameuptime` |
| `image.tag` | Image tag | `jammy` |
| `image.pullPolicy` | Image pull policy | `IfNotPresent` |
| `service.type` | Service type | `NodePort` |
| `service.port` | Service port | `80` |
| `service.nodePort` | Node port | `30069` |
| `readinessProbe.initialDelaySeconds` | Initial delay for readiness probe | `120` |

## Customizing the Chart
To override default values, use a custom `values.yaml` or `--set` flag:

```bash
helm install my-release ./nginx-info -f custom-values.yaml
```

## Uninstalling the Chart
To uninstall the chart:

```bash
helm uninstall my-release
```
