# helmwave-demo

[![Deploy](https://github.com/Jasstkn/helmwave-demo/actions/workflows/deploy.yml/badge.svg)](https://github.com/Jasstkn/helmwave-demo/actions/workflows/deploy.yml)

This is demo repository for testing helmwave features with enabled CI/CD and multi-environments feature.

```mermaid
graph TB;
    A[Prepare environment]
    B[Run tests]
    C[Deploy to prod]
    D[Deploy to stage]
    A---->B;
    B--is branch main?-->C;
    B--is branch not main?-->D;
```

## commands

Generate `helmwave.yml` from template.

```bash
helmwave yml
```

Generate manifests

```bash
helmwave build
```

Deploy by one command

```bash
helmwave up --yml --build --kubedog
```

Destroy all

```bash
helmwave down
```
