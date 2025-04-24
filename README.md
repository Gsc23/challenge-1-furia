# Chatbot FURIA Esports - CS:GO

![FURIA Logo](https://furia.gg/wp-content/uploads/2020/09/furia-logo-dark.png)

## Descrição

Chatbot desenvolvido para os fãs do time de CS:GO da FURIA, proporcionando interações via Telegram, Web ou App. O bot oferece informações sobre jogadores, próximos jogos, resultados recentes e notícias do time.

## Tecnologias Utilizadas

### Backend
- ![NestJS](https://img.shields.io/badge/NestJS-E0234E?style=flat&logo=nestjs&logoColor=white)
- ![TypeScript](https://img.shields.io/badge/TypeScript-3178C6?style=flat&logo=typescript&logoColor=white)
- ![Socket.IO](https://img.shields.io/badge/Socket.IO-010101?style=flat&logo=socket.io)
- ![TypeORM](https://img.shields.io/badge/TypeORM-262627?style=flat&logo=typeorm)
- ![Mongoose](https://img.shields.io/badge/Mongoose-880000?style=flat&logo=mongodb)

### Bancos de Dados
- ![MongoDB](https://img.shields.io/badge/MongoDB-47A248?style=flat&logo=mongodb&logoColor=white)
- ![SQLite](https://img.shields.io/badge/SQLite-003B57?style=flat&logo=sqlite&logoColor=white)

### Infraestrutura
- ![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat&logo=docker&logoColor=white)

## Funcionalidades Principais

| Ícone | Funcionalidade               |
|-------|------------------------------|
| 📅    | Próximos jogos da FURIA      |
| 🎮    | Estatísticas dos jogadores   |
| 📊    | Resultados de partidas       |
| 📰    | Notícias do time             |
| 🤖    | Interação conversacional     |
| 🤖    | Escalação dos jogadores      |

## Instalação

### Pré-requisitos

- Node.js v16+
- Docker
- Docker Compose
- Conta no Telegram (opcional)

### Configuração

1. Clone o repositório:
```bash
git clone https://github.com/seu-usuario/furia-chatbot.git
cd furia-chatbot
```

2. Configure as variáveis de ambiente:

```bash
cp .env.example .env
```

3. Edite o .env com suas configurações:

| Variável          | Descrição                     | Exemplo de Valor                 |
|-------------------|-------------------------------|----------------------------------|
| TELEGRAM_TOKEN    | Token do Bot do Telegram      | Obter via @BotFather             |
| MONGO_PASSWORD    | Senha do usuário do MongoDB   | Senha de sua preferência         |
| SQLITE_PATH       | Caminho para arquivo SQLite   | ./data/chatbot.db                |

4. Inicie os containeres

```bash
docker-compose up -d --build
```