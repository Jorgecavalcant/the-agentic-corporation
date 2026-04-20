# 🔌 Habilidades e Conectores

Este documento cataloga as capacidades técnicas (Habilidades) e as integrações (Conectores) dos agentes da **Empresa 100% IA**.

> [!IMPORTANT]
> **Regra de Conexão:** Sempre dar preferência para conexões via **MCP (Model Context Protocol)**. Quando não for tecnicamente possível, utilizar conexão via **API**.

## 🧠 Habilidades (Skills)
Capacidades técnicas fundamentais executadas diretamente pelo ambiente do agente.

| Habilidade | Descrição | Uso Principal |
|---|---|---|
| **WebSearch** | Pesquisa avançada na internet. | Pesquisa de mercado, notícias e tendências. |
| **WebFetch** | Extração de conteúdo de URLs (Markdown). | Leitura de artigos e documentações. |
| **CodeInterpreter** | Execução de scripts (Python/JS). | Análise de dados e automação técnica. |
| **Filesystem** | Gestão de arquivos (Local D: e VPS). | O local de instalação serve como o **Banco de Dados** oficial. |
| **Architect** | Criação e refatoração de agentes. | Auto-expansão e melhoria contínua da empresa. |
| **Vision** | Análise de imagens e interfaces. | Auditoria visual e análise de criativos. |

---

## 🔗 Conectores (Connectors)
Integrações com sistemas externos para execução de fluxos de trabalho.

### ⚙️ Automação e Orquestração
- **n8n (Preferência via MCP):** Atua como o sistema nervoso para conectar diversas APIs e disparar fluxos complexos.
- **GitHub API:** Gestão de repositórios, controle de versão e deploy.

### 💬 Comunicação e Alertas
- **WhatsApp:** Tratado apenas por agentes específicos via fluxos no **n8n**.
- **Telegram:** Notificações de sistema e comandos remotos via **n8n**.
- **Interface Direta:** A comunicação principal entre usuário e agentes ocorre dentro das **CLIs**, **IDEs** ou via **Paperclip AI**.

### 📅 Produtividade e Agendamento
- **Google Calendar:** Sincronização de agendas, prazos e lembretes de reuniões.

### ☁️ Infraestrutura
- **SSH/VPS:** Execução de comandos e gestão do ambiente de produção remoto.
- **Docker:** Isolamento de serviços e containers locais/remotos.

---

## 🛠️ Segurança e Configuração
Nenhuma credencial deve ser escrita nos arquivos de agente. Toda configuração de conector deve seguir este fluxo:

1. As chaves/tokens são armazenadas exclusivamente no arquivo `.env` local.
2. O **JC Agent Manager** lê essas variáveis para injetar nos agentes necessários.
3. Agentes acessam conectores apenas quando estritamente necessário para sua função.
