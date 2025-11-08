# Guia de Contribuição

Obrigado por considerar contribuir para o projeto Regularização Já! Este documento fornece diretrizes e instruções para contribuir.

## Código de Conduta

Todos os contribuidores devem seguir nosso código de conduta:
- Seja respeitoso com outros contribuidores
- Aceite críticas construtivas
- Foque no que é melhor para a comunidade
- Mostre empatia com outros membros da comunidade

## Como Contribuir

### Reportar Bugs

Antes de criar um relatório de bug, verifique se o problema já não foi reportado. Se você encontrar um bug:

1. **Use um título claro e descritivo**
2. **Descreva os passos exatos** para reproduzir o problema
3. **Forneça exemplos específicos** para demonstrar os passos
4. **Descreva o comportamento observado** e o que você esperava
5. **Inclua screenshots** se possível
6. **Mencione sua versão** do Node.js, npm, e sistema operacional

### Sugerir Melhorias

Sugestões de melhorias são sempre bem-vindas! Para sugerir uma melhoria:

1. **Use um título claro e descritivo**
2. **Forneça uma descrição detalhada** da melhoria sugerida
3. **Liste alguns exemplos** de como a melhoria seria útil
4. **Mencione outras aplicações** que implementam essa funcionalidade

### Pull Requests

1. **Fork o repositório** e crie sua branch a partir de `main`
2. **Siga o estilo de código** do projeto
3. **Escreva commits claros** com mensagens descritivas
4. **Escreva testes** para novas funcionalidades
5. **Atualize a documentação** se necessário
6. **Faça push para sua branch** e abra um Pull Request

## Processo de Desenvolvimento

### Setup Local

```bash
# 1. Fork e clone o repositório
git clone https://github.com/seu-usuario/regularizacao-ja.git
cd regularizacao-ja

# 2. Instalar dependências
npm install

# 3. Criar branch para sua feature
git checkout -b feature/sua-feature

# 4. Fazer alterações e testar
npm run dev

# 5. Commit e push
git add .
git commit -m "feat: Descrever sua feature"
git push origin feature/sua-feature
```

### Padrão de Commits

Usamos o padrão Conventional Commits:

```
<tipo>(<escopo>): <assunto>

<corpo>

<rodapé>
```

**Tipos:**
- `feat`: Nova funcionalidade
- `fix`: Correção de bug
- `docs`: Mudanças na documentação
- `style`: Formatação, sem mudança de lógica
- `refactor`: Refatoração de código
- `perf`: Melhoria de performance
- `test`: Adição ou atualização de testes
- `chore`: Tarefas de manutenção

**Exemplos:**
```
feat(formulario): Adicionar validação de CNPJ

fix(mobile): Corrigir redirecionamento WhatsApp em menu

docs(readme): Atualizar instruções de instalação

refactor(components): Simplificar componente de botão
```

### Estilo de Código

- Use TypeScript para type safety
- Siga as convenções ESLint do projeto
- Use Prettier para formatação
- Componentes React em PascalCase
- Funções e variáveis em camelCase
- Constantes em UPPER_SNAKE_CASE

```bash
# Verificar linting
npm run lint

# Formatar código
npm run format
```

### Testes

```bash
# Executar testes
npm run test

# Testes em modo watch
npm run test:watch

# Cobertura de testes
npm run test:coverage
```

## Estrutura de Branches

```
main                    # Produção
├── feature/*           # Novas funcionalidades
├── fix/*               # Correções de bugs
├── docs/*              # Documentação
└── refactor/*          # Refatoração
```

## Checklist para Pull Request

- [ ] Meu código segue o estilo de código do projeto
- [ ] Atualizei a documentação conforme necessário
- [ ] Adicionei testes para novas funcionalidades
- [ ] Todos os testes passam localmente
- [ ] Meu commit segue o padrão Conventional Commits
- [ ] Não há conflitos com a branch `main`

## Processo de Review

1. **Pelo menos um maintainer** revisar o PR
2. **Testes automatizados** devem passar
3. **Sem conflitos** com a branch `main`
4. **Código aprovado** pelos reviewers
5. **Merge** para a branch `main`

## Dúvidas?

- Abra uma issue para discussão
- Entre em contato com Patrícia Bittencourt
- Consulte a documentação do projeto

## Licença

Ao contribuir, você concorda que suas contribuições serão licenciadas sob a Licença MIT do projeto.

---

**Obrigado por contribuir! 🎉**
