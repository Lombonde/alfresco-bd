#!/usr/bin/env bash
set -euo pipefail
# Permite autenticação por senha a partir de qualquer cliente IPv4 (host/conteiner na rede).
# SCRAM-SHA-256 é o padrão no PostgreSQL 13 para passwords.
{
  echo ""
  echo "# Conexões remotas (definido pela imagem Alfresco)"
  echo "host all all 0.0.0.0/0 scram-sha-256"
} >> "${PGDATA}/pg_hba.conf"
