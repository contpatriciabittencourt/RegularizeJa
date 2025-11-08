# Regularização Já - Guia do Usuário

## Sobre o Site

**Propósito:** Página profissional para apresentar serviços de regularização empresarial, contabilidade fiscal, trabalhista e tributária para pequenos e médios empresários.

**Acesso:** Público - qualquer pessoa pode acessar e entrar em contato.

## Powered by Manus

Este site foi desenvolvido com tecnologias de ponta para garantir melhor desempenho e experiência do usuário.

**Stack Tecnológico:**
- **Frontend:** React 19 com TypeScript e componentes UI modernos (shadcn/ui)
- **Estilo:** Tailwind CSS 4 com design responsivo mobile-first
- **Ícones:** Lucide React para ícones profissionais
- **Deployment:** Infraestrutura auto-escalável com CDN global

## Usando Seu Site

### Seção Principal (Hero)

Ao acessar o site, o visitante vê o **título impactante** "Regularize sua empresa de forma rápida e segura" com um **formulário de contato** destacado. O formulário solicita três informações essenciais:

1. **Nome** - Nome completo do visitante
2. **Telefone** - Número para contato direto
3. **Email** - Endereço de email para retorno

Após preencher e clicar em "Quero Regularizar", o visitante é automaticamente redirecionado para o **WhatsApp** com uma mensagem pré-formatada contendo seus dados.

### Navegação por Seções

O menu no topo permite navegar facilmente entre as principais seções:

- **Início** - Retorna ao topo da página
- **Serviços** - Lista completa dos seis serviços oferecidos
- **Sobre** - Informações sobre Patrícia Bittencourt e diferenciais
- **Contato** - Seção de rodapé com informações de contato

No mobile, o menu se transforma em um **menu hambúrguer** (ícone de três linhas) para melhor usabilidade.

### Seção de Serviços

Apresenta os seis principais serviços com ícones e descrições:

1. **Abertura de Empresa** - Constituição legal e registro
2. **Regularização Fiscal** - Alinhamento tributário federal
3. **Declarações Obrigatórias** - ECF, DCTF, GIAS em dia
4. **Certidões Negativas** - Obtenção junto aos órgãos públicos
5. **Enquadramento Tributário** - Regime mais vantajoso
6. **Regularização Trabalhista** - Conformidade com legislação

### Seção de Benefícios

Destaca quatro razões principais para escolher os serviços:

- **Economia de Tempo** - Deixe a burocracia conosco
- **Especialistas Certificados** - Equipe experiente e atualizada
- **Preços Competitivos** - Soluções acessíveis
- **Atendimento Personalizado** - Dedicação exclusiva

### Seção Sobre

Apresenta a história profissional de Patrícia Bittencourt, sua experiência de 15+ anos e diferenciais competitivos, com destaque para certificações e especialidades.

### Depoimentos

Mostra três depoimentos de clientes satisfeitos com avaliação de 5 estrelas, criando confiança e credibilidade.

## Gerenciando Seu Site

### Atualizando Informações de Contato

Para atualizar número de WhatsApp, telefone ou email, acesse o painel **Settings** → **Secrets** no Management UI e procure pelas variáveis de ambiente. Você também pode editar o arquivo `Home.tsx` diretamente nos dados de contato no rodapé.

### Personalizando Cores e Branding

As cores profissionais (#03321e verde escuro, #1a2d3d azul escuro, #faf4e0 bege claro) estão definidas no arquivo `client/src/index.css`. Para alterar a paleta, modifique as variáveis CSS neste arquivo.

### Atualizando Logos

As logos estão armazenadas em `client/public/`:
- `logo-icon.png` - Apenas o ícone "B"
- `logo-full.png` - Logo completa com nome

Para substituir, faça upload dos novos arquivos com os mesmos nomes.

### Adicionando Novos Serviços

Para adicionar um novo serviço, edite o array `services` no arquivo `Home.tsx` e adicione um novo objeto com ícone, título e descrição.

### Modificando Depoimentos

Os depoimentos estão no array `testimonials` em `Home.tsx`. Adicione, remova ou edite os depoimentos conforme necessário.

## Próximos Passos

Fale com Manus AI a qualquer momento para solicitar mudanças, adicionar novos recursos ou melhorar o site. Você pode:

- Adicionar integração com formulário de email
- Implementar agenda de atendimento
- Criar página de blog com dicas fiscais
- Adicionar chat ao vivo
- Integrar sistema de agendamento

Seu site está pronto para atrair e converter clientes! Comece a compartilhar o link com seus contatos e acompanhe os leads chegando pelo WhatsApp.
