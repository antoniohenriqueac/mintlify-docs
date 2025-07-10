# Configuração de Imagens - ConnectVets Notes

Este documento descreve como as imagens e logos estão configuradas na documentação ConnectVets Notes.

## 📁 Estrutura de Imagens

```
connectvets-docs/
├── img/                   # Pasta principal de imagens
│   ├── Logo_Black.png     # Logo escura (587KB) - Para fundos claros
│   ├── Logo_White.png     # Logo clara (97KB) - Para fundos escuros
│   └── Logo_icon.png      # Ícone/Favicon (82KB)
└── logo/                  # Cópias organizadas
    ├── Logo_Black.png
    ├── Logo_White.png
    └── Logo_icon.png
```

## ⚙️ Configuração no mint.json

As logos estão configuradas no arquivo `mint.json`:

```json
{
  "logo": {
    "dark": "/img/Logo_White.png",
    "light": "/img/Logo_Black.png"
  },
  "favicon": "/img/Logo_icon.png"
}
```

### Explicação:
- **`dark`**: Logo usada no tema escuro (logo branca)
- **`light`**: Logo usada no tema claro (logo preta)
- **`favicon`**: Ícone exibido na aba do navegador

## 🎨 Uso nas Páginas

### Página de Introdução

A página `introduction.mdx` foi atualizada para usar as logos oficiais:

```mdx
<img
  className="block dark:hidden"
  src="/img/Logo_Black.png"
  alt="ConnectVets Notes Logo"
  style={{ maxWidth: '400px', margin: '0 auto' }}
/>
<img
  className="hidden dark:block"
  src="/img/Logo_White.png"
  alt="ConnectVets Notes Logo"
  style={{ maxWidth: '400px', margin: '0 auto' }}
/>
```

### Página de Recursos da Marca

Criada a página `brand-resources.mdx` que inclui:
- Visualização das logos com backgrounds apropriados
- Paleta de cores oficial
- Diretrizes de uso
- Exemplos de implementação em código
- Links para download

## 🎯 Melhores Práticas

### Para Desenvolvedores

1. **Use as logos corretas**:
   - Logo preta (`Logo_Black.png`) em fundos claros
   - Logo branca (`Logo_White.png`) em fundos escuros

2. **Mantenha proporções**:
   ```css
   .logo {
     max-width: 200px;
     height: auto;
   }
   ```

3. **Tema automático**:
   ```mdx
   <img className="block dark:hidden" src="/img/Logo_Black.png" />
   <img className="hidden dark:block" src="/img/Logo_White.png" />
   ```

### Para Design

1. **Cores oficiais**:
   - Primário: `#2563eb`
   - Claro: `#3b82f6`
   - Escuro: `#1d4ed8`

2. **Espaçamento**:
   - Margem mínima: 20px ao redor da logo
   - Não distorcer proporções

## 📋 Checklist de Implementação

- [x] Logos configuradas no `mint.json`
- [x] Favicon configurado
- [x] Logo na página de introdução
- [x] Página de recursos da marca criada
- [x] Documentação de uso adicionada
- [x] Estrutura de pastas organizada
- [x] README atualizado

## 🔄 Atualizações Futuras

Se precisar atualizar as logos:

1. Substitua os arquivos em `/img/`
2. Mantenha os nomes dos arquivos
3. Verifique se as proporções estão corretas
4. Teste em temas claro e escuro
5. Atualize a documentação se necessário

## 📞 Contato

Para dúvidas sobre o uso das imagens:
- Email: branding@connectvets.com.br
- Documentação: [Recursos da Marca](/brand-resources) 

## 🚨 Troubleshooting - Problemas Conhecidos

### Logo Pequena em Produção

**Problema**: A logo aparece no tamanho correto em desenvolvimento (localhost) mas fica pequena em produção.

**Causa**: O arquivo `Logo_Black.png` (587KB) é muito grande. O Mintlify aplica otimizações automáticas em produção que comprimem agressivamente imagens grandes, resultando em perda de qualidade e tamanho reduzido.

**Solução**:
1. **Otimizar o arquivo Logo_Black.png**:
   - Redimensionar para máximo 400 x 100px
   - Comprimir para menos de 100KB
   - Manter formato PNG

2. **Especificações recomendadas para Mintlify**:
   - Tamanho máximo do arquivo: 50-100KB
   - Dimensões ideais: 250 x 150px ou 400 x 100px
   - Altura máxima: 30px
   - Formato: PNG otimizado

3. **Ferramentas para otimização**:
   - TinyPNG (online)
   - ImageOptim (Mac)
   - Photoshop "Save for Web"
   - GIMP (gratuito)

**Status**: ⚠️ Logo_Black.png precisa ser otimizada 