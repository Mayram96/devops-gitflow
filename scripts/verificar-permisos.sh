#!/bin/bash
# Auditoría de permisos para usuario devops-deploy
echo "Verificando permisos de seguridad..."
[ -w "/var/log" ] && echo "Alerta: /var/log tiene permisos de escritura" || echo "OK"
