# Sistema de Locadora de Veículos 🚗

Este projeto foi desenvolvido como trabalho final da disciplina de Programação Orientada a Objetos, com o objetivo de criar um sistema de gerenciamento para uma locadora de veículos.

### Professor
- Leandro Cruz

## Equipe de Desenvolvimento 👥

- Kauã Flaubert Lima Gomes > 12725146129@ulife.com.br
- Caio Neves Passos > 12725120255@ulife.com.br
- Renan Abreu Prazeres > 12725146772@ulife.com.br
- Andrei Ribeiro Reis dos Santos > 12725172399@ulife.com.br
- Felipe Sobral Carneiro > 12725161414@ulife.com.br
- Ryan > example@ulife.com.br

## Comandos para Execução 🚀

```bash
# Executar a interface gráfica (recomendado)
npm run clean && npm run build && npm start

# Executar a versão console (alternativa)
npm run clean && npm run build && npm run start-console
```

## Sobre o Projeto 📋

Este projeto foi desenvolvido como parte da avaliação A3 da disciplina de Programação Orientada a Objetos. O objetivo principal é aplicar os conhecimentos adquiridos durante o semestre em um sistema de cadastro completo.

### Funcionalidades Implementadas ✨

1. Cadastro e gerenciamento de veículos (carros e motos)
2. Cadastro e gerenciamento de clientes
3. Realização e gerenciamento de locações
4. Interface gráfica moderna e intuitiva
5. Integração com banco de dados MySQL
6. Sistema de busca e filtros
7. Validações de dados
8. Cálculo automático de valores

## Estrutura do Projeto 🏗️

### Diretórios Principais

```
src/
├── model/          # Classes de modelo do sistema
├── view/           # Interface gráfica e componentes visuais
├── util/           # Classes utilitárias
├── sql/           # Scripts SQL para banco de dados
└── gui/           # Componentes específicos da interface gráfica
```

### Detalhamento das Pastas 📁

#### `src/model/`
- `Veiculo.java` - Classe abstrata base para veículos
- `Carro.java` - Implementação específica para carros (herança)
- `Moto.java` - Implementação específica para motos (herança)
- `Cliente.java` - Gerenciamento de clientes
- `Locacao.java` - Controle de locações

#### `src/view/gui/`
- `LocadoraGUI.java` - Interface gráfica principal
- `CadastroVeiculoGUI.java` - Tela de cadastro de veículos
- `CadastroClienteGUI.java` - Tela de cadastro de clientes
- `RealizarLocacaoGUI.java` - Tela de realização de locações
- Outras interfaces específicas para cada operação

#### `src/view/gui/util/`
- `GUIColors.java` - Definições de cores e estilos
- `ButtonFactory.java` - Fábrica de botões padronizados

#### `src/util/`
- `ConexaoMySQL.java` - Gerenciamento de conexão com banco de dados

#### `src/sql/`
- Scripts SQL para criação e manutenção do banco de dados

## Conceitos de POO Aplicados 📚

### Herança 🔄
- Hierarquia de veículos (Veiculo → Carro/Moto)
- Reutilização de código e especialização de comportamentos

### Polimorfismo 🔄
- Tratamento genérico de veículos
- Comportamentos específicos para cada tipo de veículo
- Método `calcularValorLocacao()` implementado diferentemente para cada tipo

### Encapsulamento 🔒
- Atributos privados com getters/setters
- Proteção de dados e validações

### Interfaces e Classes Abstratas 📋
- Definição de contratos
- Garantia de implementação de métodos necessários

## Interface Gráfica 🎨

O sistema possui uma interface gráfica moderna desenvolvida com Swing, apresentando:
- Design responsivo e intuitivo
- Paleta de cores profissional
- Feedback visual para ações do usuário
- Validações em tempo real
- Mensagens de erro informativas

## Banco de Dados 💾

O sistema utiliza MySQL para persistência dos dados, com:
- Tabelas normalizadas
- Relacionamentos bem definidos
- Constraints para integridade dos dados
- Queries otimizadas

## Material de Apoio 📚

Para o desenvolvimento deste projeto, foram utilizados os seguintes materiais e recursos:

### Roteiros da Disciplina
- Roteiro 8
- Roteiro 9
- Roteiro 10

### Ferramentas de IA
- ChatGPT - Auxílio em dúvidas e boas práticas de programação
- Cursor - IDE com recursos de IA para desenvolvimento

### Material do Professor
- Repositório GitHub do Professor: [AulaBDJAVA](https://github.com/profleandrocruz8/AulaBDJAVA)

## Requisitos do Sistema 💻

- Java JDK 8 ou superior
- MySQL 5.7 ou superior
- Node.js (para execução dos scripts)

## Instalação e Configuração 🔧

1. Clone o repositório
2. Configure o banco de dados MySQL
3. Execute o script de criação do banco (`src/sql/criar_banco.sql`)
4. Ajuste as credenciais do banco em `src/util/ConexaoMySQL.java`
5. Execute o sistema usando os comandos listados no início
