# DevOps Portfolio - Path

Demostracion del flujo Gitflow aplicado a scripts de administracion Linux.

## Flujo de trabajo

| Rama | Proposito | Se crea desde | Merge hacia |
|---|---|---|---|
| `main` | Codigo en produccion | - | - |
| `develop` | Integracion continua | `main` | `main` |
| `feature/*` | Nuevas funcionalidades | `develop` | `develop` |
| `release/*` | Preparacion de version | `develop` | `main` + `develop` |
| `hotfix/*` | Correcciones urgentes | `main` | `main` + `develop` |

## Comandos esenciales

```bash
# Nueva feature
git checkout develop
git checkout -b feature/nombre

# Merge con historial
git merge --no-ff feature/nombre

# Ver historial grafico
git log --oneline --graph --all
```

## Scripts incluidos

- `scripts/sistema.sh`
  - backup
  - limpieza
  - reporte del sistema

- `scripts/verificar-permisos.sh`
  - auditoria de usuario devops-deploy

- `scripts/fix-log-perms.sh`
  - hotfix de permisos

## Versiones

- `v1.0`
  - release inicial

- `v1.1`
  - hotfix permisos logs


