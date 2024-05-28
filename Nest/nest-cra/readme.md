# Cra

Por certos problemas não teremos a parte de front codificado, apenas o propototipo em figma

```
https://www.figma.com/file/vabya32E6wesH8J04PF6PO/Hackathon-CRA?type=design&node-id=0-1&mode=design&t=AY300ywCmnd2uKsN-0
```

O score automático é uma forma de incentivar os colaboradores a concluir projetos rapidamente. Os pontos podem ser usados para desbloquear conquistas, que podem ser recompensas, como vales-presente, dias de folga ou promoções.

A seção de 1x1 é uma oportunidade para os colaboradores discutir seu desempenho e objetivos com seus gestores. Isso pode ajudar os colaboradores a se desenvolverem e alcançarem seus objetivos.

A seção de projetos permite que os colaboradores visualizem o status dos projetos em andamento e comentem sobre eles. Isso pode ajudar a melhorar a comunicação e a colaboração entre os colaboradores.

A seção de posts permite que os colaboradores criem e visualizem posts sobre eventos, dicas e outros assuntos relevantes para os funcionários. Isso pode ajudar os colaboradores a se manterem informados e atualizados.

### Como instalar a parte do Back

Certifique-se de ter o Node.js instalado em sua máquina.

Instalar o projeto.

```
npm install
```

Iniciar o projeto:

```
nest start
localhost:3000/api
```

# Casos de uso

# Design Patterns (Backend)

- Decorators
- Singleton
- Factory

# External Packages (Backend)

- NestJs
- Jest

# Arquitetura usada (Backend)

- Hexagonal Architecture
- Modular

# Exemplo

Aqui está um exemplo de como o aplicativo pode ser usado:

- Um colaborador pode usar o quadro de comunicação para visualizar comunicados da empresa sobre eventos, datas importantes, implantação de novos projetos e feriados.
- Um colaborador pode usar a seção "Meus projetos" para visualizar seus projetos em andamento, feedbacks de projetos, conquistas e score automático.
- Um colaborador pode usar a seção "Feedback" para dar feedback ao seu gestor e vice-versa.
- Um colaborador pode usar a seção "Conquistas" para acompanhar suas conquistas recentes.
- Um colaborador pode usar a seção "Converse com a gente!" para entrar em contato com seu gestor, colegas de equipe, RH ou deixar um comentário.
- Um colaborador pode usar a seção "Agenda" para visualizar suas tarefas e compromissos.
- Um colaborador pode usar a seção "1x1" para marcar um encontro com seu gestor para discutir seu desempenho e objetivos.
- Um colaborador pode usar a seção "Projetos" para visualizar os projetos em andamento na empresa, bem como seu status e comentários.
- Um colaborador pode usar a seção "Posts" para criar e visualizar posts sobre eventos, dicas e outros assuntos relevantes para os funcionários.

## Futuro

Os próximos passos para o projeto incluem:

- Adição da seção "Agenda" para visualizar tarefas e compromissos.
- Adição da seção "Conquistas" para visualizar conquistas recentes.
- Adicionar uma seção para gerenciar tarefas.
- Adicionar uma seção para gerenciar reuniões.
- Adicionar uma seção para gerenciar eventos.
- Adicionar uma seção para gerenciar despesas.
- Implementação das funcionalidades adicionais descritas na seção "Outras ideias de funcionalidades".
- Melhorias na interface do usuário e na experiência do usuário.
- Testes e depuração do aplicativo.

## Arquitetura do projeto

```
├── .vscode
│   └── ...
├── prisma
│   └── schema.prisma
├── src
│   ├── config
│   │   ├── interceptor
│   │   │   └── ...
│   │   ├──  middleware
│   │   │   └── ...
│   │   ├──  prisma
│   │   │   └── ...
│   │   ├──  swagger
│   │   │   └── ...
│   │   └── ...
│   ├── context
│   │   ├──  controller
│   │   │   └── ...
│   │   ├──  entity
│   │   │   └── ...
│   │   ├──  service
│   │   │   └── ...
│   │   └── ...
│   ├── util
│   │  └── ...
│   ├── view
│   │  ├──  dto
│   │  │   └── ...
│   │  └── interface
│   │      └── ...
│   ├── app.module.ts
│   └── main.ts
├── README.MD
└── ...
```

## Modelos

### Feedback

```
* idFeedback: Int (ID, autoincrement)
* Message: String
* Author: String
```

### Projects

```
* idProjects: Int (ID, autoincrement)
* Project: String
* Status: String
```

### Communication

```
* idCommunication: Int (ID, autoincrement)
* Post: String
* Company: String
```

### Login

```
* idLogin: Int (ID, autoincrement)
* IsLogged: Boolean
```

### User

```
* idUser: Int (ID, autoincrement)
* Email: String (unique)
* Score: String
* UUID: String (unique)

* Feedback: Feedback (relação um-para-um)
* Projects: Projects (relação um-para-muitos)
* Communication: Communication (relação um-para-muitos)
* Login: Login (relação um-para-um)
```
