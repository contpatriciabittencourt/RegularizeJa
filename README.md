# Regularização Já - Patrícia Bittencourt

[![Node.js](https://img.shields.io/badge/Node.js-18%2B-green)](https://nodejs.org/)
[![React](https://img.shields.io/badge/React-19-blue)](https://react.dev/)
[![TypeScript](https://img.shields.io/badge/TypeScript-5-blue)](https://www.typescriptlang.org/)
[![License](https://img.shields.io/badge/License-MIT-green)](LICENSE)

Plataforma web profissional para contadora especializada em regularização empresarial, com foco em MEI, regularização fiscal, trabalhista e contábil.

## 🎯 Características

### Frontend
- ✅ Landing page responsiva (mobile-first)
- ✅ Formulário "Quero Regularizar" com captura de leads
- ✅ Integração WhatsApp com redirecionamento automático
- ✅ Galeria carousel de eventos e capacitações
- ✅ Seção de planos (START, SMART, STAR)
- ✅ Menu mobile funcional
- ✅ Botão flutuante de WhatsApp
- ✅ Design profissional com cores corporativas

### Backend
- ✅ API REST com tRPC
- ✅ Banco de dados com Drizzle ORM
- ✅ Autenticação de usuários
- ✅ Gerenciamento de formulários

### SEO & Analytics
- ✅ Meta tags otimizadas
- ✅ Schema.org structured data
- ✅ Sitemap.xml e robots.txt
- ✅ Google Analytics 4 integrado
- ✅ Rastreamento de eventos e conversões

## 🚀 Quick Start

### Pré-requisitos
- Node.js 18+
- npm ou pnpm
- PostgreSQL (ou SQLite para desenvolvimento)

### Instalação Local

```bash
# 1. Clonar repositório
git clone https://github.com/seu-usuario/regularizacao-ja.git
cd regularizacao-ja

# 2. Instalar dependências
npm install
# ou
pnpm install

# 3. Configurar variáveis de ambiente
cp .env.example .env.local
# Edite .env.local com suas configurações

# 4. Migrar banco de dados
npm run db:push

# 5. Iniciar servidor de desenvolvimento
npm run dev
```

O site estará disponível em `http://localhost:3000`

## 📁 Estrutura do Projeto

```
regularizacao-ja/
├── client/                    # Frontend React
│   ├── src/
│   │   ├── pages/            # Páginas (Home, Admin)
│   │   ├── components/       # Componentes reutilizáveis
│   │   ├── contexts/         # React Contexts
│   │   ├── hooks/            # Custom hooks
│   │   ├── lib/              # Utilitários (analytics, etc)
│   │   ├── App.tsx           # Router principal
│   │   ├── main.tsx          # Entry point
│   │   └── index.css         # Estilos globais
│   ├── public/               # Arquivos estáticos
│   │   ├── index.html        # Template HTML
│   │   ├── logo-full.png     # Logo com nome
│   │   ├── patricia-photo.png # Foto da contadora
│   │   ├── gallery-*.jpg     # Fotos da galeria
│   │   ├── sitemap.xml       # Mapa do site
│   │   └── robots.txt        # Configuração para buscadores
│   └── vite.config.ts        # Configuração Vite
│
├── server/                    # Backend Node.js
│   ├── routers.ts            # APIs tRPC
│   ├── db.ts                 # Funções de banco de dados
│   ├── auth.ts               # Autenticação
│   └── index.ts              # Entry point servidor
│
├── drizzle/                   # Schema do banco de dados
│   ├── schema.ts             # Definição das tabelas
│   └── migrations/           # Histórico de migrações
│
├── shared/                    # Código compartilhado
│   └── const.ts              # Constantes
│
├── package.json              # Dependências
├── tsconfig.json             # Configuração TypeScript
├── vite.config.ts            # Configuração Vite
├── drizzle.config.ts         # Configuração Drizzle
└── README.md                 # Este arquivo
```

## 🛠️ Comandos Disponíveis

```bash
# Desenvolvimento
npm run dev              # Inicia servidor de desenvolvimento
npm run build           # Build para produção
npm run start           # Inicia servidor de produção
npm run preview         # Preview do build

# Banco de dados
npm run db:push         # Migra schema para banco de dados
npm run db:generate     # Gera migrations
npm run db:studio       # Abre Drizzle Studio

# Linting & Formatting
npm run lint            # Verifica erros de linting
npm run format          # Formata código

# Testes
npm run test            # Executa testes
npm run test:watch      # Testes em modo watch
```

## 🗄️ Banco de Dados

### Schema

#### Tabela: contacts
Armazena formulários de contato coletados

```sql
CREATE TABLE contacts (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  phone VARCHAR(20) NOT NULL,
  email VARCHAR(255) NOT NULL,
  cnpj VARCHAR(20),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

#### Tabela: users
Usuários do sistema (admin)

```sql
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email VARCHAR(255) UNIQUE NOT NULL,
  password_hash VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

### Configuração

**PostgreSQL (Produção):**
```env
DATABASE_URL="postgresql://user:password@localhost:5432/regularizacao_ja"
```

**SQLite (Desenvolvimento):**
```env
DATABASE_URL="file:./dev.db"
```

## 🔐 Variáveis de Ambiente

Crie um arquivo `.env.local` na raiz do projeto:

```env
# Banco de dados
DATABASE_URL="postgresql://user:password@localhost:5432/regularizacao_ja"

# JWT
JWT_SECRET="sua-chave-secreta-muito-segura-aqui"

# OAuth
OAUTH_SERVER_URL="https://seu-oauth-server.com"

# Google Analytics
VITE_ANALYTICS_ENDPOINT="https://www.google-analytics.com/g/collect"
VITE_ANALYTICS_WEBSITE_ID="G-YSFR2M7X4N"

# App Config
VITE_APP_TITLE="Regularização Já"
VITE_APP_ID="regularizacao-ja"
VITE_APP_LOGO="/logo-full.png"

# URLs
VITE_FRONTEND_FORGE_API_URL="http://localhost:3000/api"
VITE_OAUTH_PORTAL_URL="http://localhost:3000"

# Node Environment
NODE_ENV="development"
```

## 📱 Responsividade

O site é totalmente responsivo com breakpoints:
- **Mobile**: < 640px
- **Tablet**: 640px - 1024px
- **Desktop**: > 1024px

## 🎨 Design System

### Cores Principais
- **Verde Primário**: #03321e
- **Azul Secundário**: #1a2d3d
- **Fundo Claro**: #faf4e0

### Tipografia
- **Títulos**: Poppins (700)
- **Corpo**: Inter (400, 500)
- **Destaque**: Poppins (600)

## 📊 Google Analytics

Rastreamento de eventos implementados:
- Submissão de formulário
- Cliques em botões CTA
- Cliques em planos
- Navegação entre seções
- Contatos (WhatsApp, email, Instagram)

ID de Medição: `G-YSFR2M7X4N`

## 🚢 Deploy

### Opção 1: Heroku
```bash
heroku create seu-app-name
heroku addons:create heroku-postgresql:hobby-dev
git push heroku main
```

### Opção 2: DigitalOcean / AWS / Azure
Veja `DEPLOY-NODEJS.md` para instruções completas

### Opção 3: Docker
```bash
docker build -t regularizacao-ja .
docker run -p 3000:3000 regularizacao-ja
```

## 🔍 SEO

- ✅ Meta tags otimizadas
- ✅ Open Graph tags
- ✅ Twitter Card
- ✅ Schema.org JSON-LD
- ✅ Sitemap.xml
- ✅ Robots.txt
- ✅ Canonical URLs
- ✅ Alt text em imagens

## 📝 Funcionalidades

### Página Principal
- Hero section com CTA
- Formulário "Quero Regularizar"
- Seção de serviços (6 categorias)
- Planos de acompanhamento (3 opções)
- Benefícios da contadora
- Sobre Patrícia Bittencourt
- Depoimentos de clientes
- Galeria de eventos
- Footer com contatos

### Página Admin
- Visualizar todos os formulários coletados
- Dados: nome, telefone, email, CNPJ
- Links diretos para WhatsApp
- Deletar registros
- Autenticação de usuários

### Integrações
- WhatsApp (redirecionamento automático)
- Instagram (link direto)
- Google Analytics 4
- Google Search Console

## 🤝 Contribuindo

1. Fork o projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## 📄 Licença

Este projeto está licenciado sob a Licença MIT - veja o arquivo [LICENSE](LICENSE) para detalhes.

## 👤 Autor

**Patrícia Bittencourt**
- Contadora Especialista
- WhatsApp: (82) 99965-7538
- Email: cont.patriciabittencourt@gmail.com
- Instagram: [@cont.patriciabittencourt](https://www.instagram.com/cont.patriciabittencourt/)

## 🙏 Agradecimentos

- React 19 e Vite para desenvolvimento rápido
- Tailwind CSS para styling
- shadcn/ui para componentes
- Drizzle ORM para banco de dados
- tRPC para type-safe APIs

## 📞 Suporte

Para dúvidas ou sugestões sobre o projeto, entre em contato com Patrícia Bittencourt através dos canais acima.

---

**Desenvolvido com ❤️ para regularizar sua empresa**
