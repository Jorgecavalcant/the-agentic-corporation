import os
import re

DEPARTAMENTOS_DIR = "D:\\TECH42\\PROJETOS\\empresa-100-ia\\departamentos"

# Padrões para remover ou substituir
padrao_cerbasi = re.compile(r'best-practices/comunicacao-cerbasi\.md', re.IGNORECASE)
cerbasi_word = re.compile(r'Cerbasi', re.IGNORECASE)

# Template Frontmatter
FRONTMATTER_TEMPLATE = """---
name: {name}
description: {desc}
dept: {dept}
role: {role}
idioma: pt-BR
empresa: ${{COMPANY_NAME:-Empresa IA}}
---
"""

# Template RAG
RAG_TEMPLATE = """
## 📚 BASE DE CONHECIMENTO & RAG
Como parte do ecossistema da Empresa 100% IA, você **NÃO atua no escuro**.
- Sempre que receber uma query, **antes de inferir a resposta**, procure no diretório do projeto local usando suas ferramentas de leitura.
"""

def extract_frontmatter(content):
    match = re.search(r'^---\s*(.*?)\s*---', content, re.DOTALL)
    if match:
        return match.group(1), content[match.end():]
    return "", content

def parse_frontmatter(fm_str):
    props = {}
    for line in fm_str.split('\n'):
        if ':' in line:
            parts = line.split(':', 1)
            props[parts[0].strip()] = parts[1].strip()
    return props

def process_file(filepath):
    # Identifying the department
    parts = filepath.split(os.sep)
    dept = "indefinido"
    try:
        dept_idx = parts.index('departamentos')
        dept = parts[dept_idx + 1]
    except ValueError:
        pass

    # Tentando ler com utf-8, fallback para cp1252 ou latin-1 se falhar
    try:
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()
    except UnicodeDecodeError:
        try:
            with open(filepath, 'r', encoding='latin-1') as f:
                content = f.read()
        except Exception:
            return

    # Skip files that are not agent files
    if not "# " in content and "role:" not in content:
        return

    # Extract original properties
    fm_str, body = extract_frontmatter(content)
    props = parse_frontmatter(fm_str)

    name = props.get('name', os.path.basename(filepath).replace('.md', ''))
    desc = props.get('description', 'Especialista da empresa.').replace('\n', ' ').replace('>', '')
    role = props.get('role', 'operacional')
    
    # ── Security Scrubber (Deep Cleaning) ──
    # 1. Names and Brands
    body = re.sub(r'jc-super-plugin', 'the-agentic-corporation', body, flags=re.IGNORECASE)
    body = re.sub(r'jcplanejamento\.com', 'empresa-ia.com', body, flags=re.IGNORECASE)
    body = re.sub(r'jc-tecnologia', 'empresa-ia', body, flags=re.IGNORECASE)
    body = re.sub(r'jc-(estrategia|financas|juridico|marketing|operacoes|pessoas|produto|tecnologia|vendas)', r'\1', body, flags=re.IGNORECASE)
    
    # 2. People (Jorge) -> Dynamic Placeholders
    body = re.sub(r'jorge', '${CEO_NAME:-CEO}', body, flags=re.IGNORECASE)
    body = re.sub(r'\s+LTDA', ' ${COMPANY_NAME:-Empresa IA}', body, flags=re.IGNORECASE)
    
    # 3. Paths and Infrastructure
    body = re.sub(r'/srv/jc/', '/srv/empresa/', body)
    body = re.sub(r'Hetzner CX22', 'VPS Linux Standard', body)
    body = re.sub(r'@[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}', '@${VPS_IP}', body)
    
    # 4. Old Methodology names
    body = padrao_cerbasi.sub('best-practices/comunicacao-executiva.md', body)
    body = cerbasi_word.sub('Executiva', body)

    # ── Logic Consistency ──
    # If it's a strategic agent or orchestrator
    if 'conselheiro' in name.lower() or 'diretor' in name.lower() or 'orchestrator' in name.lower() or role.lower() in ['ceo', 'manager', 'orchestrator', 'executivo', 'tatico']:
        if role == 'operacional': role = 'tatico' 
        is_strategic = True
    else:
        is_strategic = False

    # Standardize Frontmatter
    new_fm = FRONTMATTER_TEMPLATE.format(name=name, desc=desc, dept=dept, role=role)

    # For operational agents, we could truncate lengthy intro, but for now just injecting standard RAG
    if "BASE DE CONHECIMENTO" not in body.upper():
        body += RAG_TEMPLATE

    new_content = new_fm + body.strip() + "\n"

    with open(filepath, 'w', encoding='utf-8') as f:
        f.write(new_content)

if __name__ == "__main__":
    count = 0
    # Process project files (README, SPEC, etc)
    root_files = ["README.md", "SPEC.md", "PLUGIN.md", "PRD.md"]
    for rf in root_files:
        path = os.path.join("D:\\TECH42\\PROJETOS\\empresa-100-ia", rf)
        if os.path.exists(path):
            process_file(path)

    # Process all agents
    for root, dirs, files in os.walk(DEPARTAMENTOS_DIR):
        for file in files:
            if file.endswith('.md') or file.endswith('.yaml'):
                filepath = os.path.join(root, file)
                try:
                    process_file(filepath)
                    count += 1
                except Exception as e:
                    print(f"Error processing {filepath}: {e}")
    
    print(f"Refatoraçaõ e Higienização concluída! {count} arquivos processados.")
