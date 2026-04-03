#!/bin/bash

# Script para criar workflow N8N: Telegram → Plugin SSH VPS

cat > /tmp/insert_workflow.sql << 'SQL'
-- Criar workflow Telegram → Plugin
INSERT INTO workflow
(name, active, "nodeIds", nodes, connections, "staticData", "settings", "pinData")
VALUES (
  'Telegram Plugin Trigger',
  true,
  '["webhook_trigger","validate_command","ssh_execute","telegram_notify"]',
  '[
    {
      "id": "webhook_trigger",
      "name": "Webhook Trigger",
      "type": "n8n-nodes-base.webhook",
      "typeVersion": 2,
      "position": [250, 300],
      "parameters": {
        "path": "telegram-plugin",
        "responseMode": "onReceived"
      }
    },
    {
      "id": "validate_command",
      "name": "Validar Comando",
      "type": "n8n-nodes-base.function",
      "typeVersion": 1,
      "position": [450, 300],
      "parameters": {
        "functionCode": "const msg = $input.all()[0].json.message || {};\nconst text = msg.text || '';\nconst match = text.match(/^\\\\/plugin\\\\s+(.+)$/);\nif (!match) return { valid: false, error: \"Formato inválido. Use: /plugin [comando]\" };\nreturn { valid: true, command: match[1], chat_id: msg.chat?.id, user_id: msg.from?.id };"
      }
    },
    {
      "id": "ssh_execute",
      "name": "Executar SSH",
      "type": "n8n-nodes-base.ssh",
      "typeVersion": 1,
      "position": [650, 300],
      "parameters": {
        "host": "46.224.55.18",
        "port": 22,
        "username": "jorge",
        "command": "/home/jorge/plugins/jc-runner.sh \"{{ $json.command }}\""
      }
    },
    {
      "id": "telegram_notify",
      "name": "Telegram Notify",
      "type": "n8n-nodes-base.telegramSendMessage",
      "typeVersion": 1,
      "position": [850, 300],
      "parameters": {
        "chatId": "{{ $json.chat_id }}",
        "text": "={{ $json.status === \"success\" ? \"✅ \" + $json.output : \"❌ \" + $json.error }}"
      }
    }
  ]',
  '{
    "webhook_trigger": {
      "main": [[{"node": "validate_command", "index": 0}]]
    },
    "validate_command": {
      "main": [[{"node": "ssh_execute", "index": 0}]]
    },
    "ssh_execute": {
      "main": [[{"node": "telegram_notify", "index": 0}]]
    }
  }',
  '{}',
  '{}',
  '{}'
);
SQL

# Copiar para container e executar
cp /tmp/insert_workflow.sql /home/jorge/insert_workflow.sql

echo "✅ SQL preparado em /home/jorge/insert_workflow.sql"
echo "📝 Execute manualmente no N8N database (se necessário)"
