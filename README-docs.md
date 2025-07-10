# Documentação ConnectVets Notes

Documentação oficial da plataforma ConnectVets Notes, construída com [Mintlify](https://mintlify.com).

## 🚀 Início Rápido

### Pré-requisitos

- Node.js 18+
- Yarn (recomendado)

### Instalação

```bash
# Instalar dependências
yarn install

# Executar em modo de desenvolvimento
yarn dev
```

A documentação estará disponível em `http://localhost:3000`

## 📁 Estrutura do Projeto

```
connectvets-docs/
├── mint.json              # Configuração principal do Mintlify
├── introduction.mdx       # Página inicial
├── quickstart.mdx        # Guia de início rápido
├── authentication.mdx    # Documentação de autenticação
├── concepts/             # Conceitos principais
│   ├── notes.mdx         # Como funcionam as notas
│   ├── tenants.mdx       # Sistema multi-clínica
│   ├── api-keys.mdx      # Gerenciamento de chaves
│   └── webhooks.mdx      # Notificações automáticas
├── api-reference/        # Referência completa da API
│   ├── overview.mdx      # Visão geral da API
│   ├── notes/           # Endpoints de notas
│   ├── api-keys/        # Endpoints de API keys
│   └── webhooks/        # Endpoints de webhooks
├── frontend/            # Documentação do frontend
├── examples/           # Exemplos práticos
└── integration/        # Guias de integração
```

## 🛠️ Scripts Disponíveis

```bash
# Desenvolvimento
yarn dev

# Build para produção
yarn build

# Preview do build
yarn preview
```

## 📝 Adicionando Conteúdo

### Criando uma Nova Página

1. Crie um arquivo `.mdx` na pasta apropriada
2. Adicione o frontmatter:

```yaml
---
title: 'Título da Página'
description: 'Descrição breve'
---
```

3. Adicione a página no `mint.json` na seção `navigation`

### Exemplo de Página

```mdx
---
title: 'Minha Nova Página'
description: 'Descrição da página'
---

## Introdução

Conteúdo da página aqui...

<CardGroup cols={2}>
  <Card
    title="Card 1"
    icon="star"
    href="/link"
  >
    Descrição do card
  </Card>
  <Card
    title="Card 2"
    icon="heart"
    href="/outro-link"
  >
    Descrição do card
  </Card>
</CardGroup>
```

## 🎨 Componentes Disponíveis

### Cards

```mdx
<Card
  title="Título"
  icon="icon-name"
  href="/link"
>
  Descrição
</Card>
```

### Callouts

```mdx
<Info>
  Informação importante
</Info>

<Warning>
  Aviso importante
</Warning>

<Tip>
  Dica útil
</Tip>
```

### Code Groups

```mdx
<CodeGroup>
  ```bash Terminal
  npm install
  ```
  
  ```javascript JavaScript
  console.log('Hello World');
  ```
</CodeGroup>
```

### Acordeons

```mdx
<AccordionGroup>
  <Accordion title="Pergunta 1">
    Resposta 1
  </Accordion>
  <Accordion title="Pergunta 2">
    Resposta 2
  </Accordion>
</AccordionGroup>
```

## 🔧 Configuração

### mint.json

O arquivo `mint.json` controla:

- **Branding**: Cores, logos, favicon
- **Navegação**: Estrutura de páginas e tabs
- **Configurações**: Links externos, redes sociais

### Customização de Cores

```json
{
  "colors": {
    "primary": "#2563eb",
    "light": "#3b82f6", 
    "dark": "#1d4ed8"
  }
}
```

## 📚 Conteúdo da Documentação

### Seções Principais

1. **Começando**
   - Introdução à plataforma
   - Guia de início rápido
   - Autenticação com API Keys

2. **Conceitos**
   - Notas e transcrições
   - Sistema multi-tenant
   - API Keys e permissões
   - Webhooks

3. **API Reference**
   - Visão geral da API
   - Endpoints de notas
   - Endpoints de API keys
   - Endpoints de webhooks

4. **Frontend**
   - Configuração do Next.js
   - Componentes disponíveis
   - Dados mockados
   - Deploy

5. **Exemplos**
   - Integrações básicas
   - Filtros avançados
   - Tratamento de webhooks

## 🌐 Deploy

### Mintlify Cloud

1. Conecte seu repositório no [Mintlify Dashboard](https://dashboard.mintlify.com)
2. Configure o domínio personalizado
3. Deploy automático via Git

### Hospedagem Própria

```bash
# Build estático
yarn build

# Os arquivos estarão em ./dist
```

## 📖 Baseado na Documentação Existente

Esta documentação foi criada com base na documentação existente dos projetos:

### Backend (notes/)
- `docs/api.md` - Referência completa da API
- `docs/filter_examples.md` - Exemplos de filtros
- `docs/openapi.yaml` - Especificação OpenAPI

### Frontend (notes-web/)
- `docs/api-keys-usage.md` - Uso de API Keys
- `docs/sistema-alertas.md` - Sistema de alertas
- `docs/endpoints_backend.txt` - Lista de endpoints

### Migrações
- Schemas do banco de dados
- Estrutura de tabelas
- Relacionamentos

## 🤝 Contribuindo

### Adicionando Nova Documentação

1. **Identifique a seção**: Conceitos, API, Frontend, ou Exemplos
2. **Crie o arquivo**: Use extensão `.mdx`
3. **Adicione frontmatter**: Título e descrição
4. **Atualize navegação**: Adicione no `mint.json`
5. **Teste localmente**: `yarn dev`

### Atualizando Conteúdo Existente

1. **Encontre o arquivo**: Navegue pela estrutura de pastas
2. **Edite o conteúdo**: Mantenha formatação MDX
3. **Teste as mudanças**: Verifique no desenvolvimento
4. **Commit as alterações**: Use mensagens descritivas

## 📞 Suporte

- **Mintlify Docs**: https://mintlify.com/docs
- **Slack da Mintlify**: Para suporte técnico
- **GitHub Issues**: Para bugs na documentação

## 📄 Licença

MIT - Veja o arquivo LICENSE para detalhes.
