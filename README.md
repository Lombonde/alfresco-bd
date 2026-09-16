# alfresco-bd

PostgreSQL para Alfresco Content Services (Docker Compose).

## Pré-requisitos

- Docker e Docker Compose
- Rede externa `alfresco-net`
- Ficheiro de ambiente em `../alfresco-app/.env` (ou ajustar o `env_file` no compose)

## Arranque

```bash
docker network create alfresco-net
docker compose up -d
```

## Serviços

| Serviço   | Imagem        | Porta padrão |
|-----------|---------------|--------------|
| postgres  | postgres:13.1 | 5432         |

Credenciais padrão (sobrescrevíveis via `.env`):

- `POSTGRES_USER=alfresco`
- `POSTGRES_PASSWORD=alfresco`
- `POSTGRES_DB=alfresco`

## Volumes

- `postgres_data` — dados do PostgreSQL
- `./alf_data` — contentstore/keystore do Alfresco (incluído no repositório para arranque)

## Init

O script `docker-entrypoint-initdb.d/01-remote-access.sh` permite autenticação remota (SCRAM-SHA-256) na primeira inicialização.
