<div align='center'>

<h1>Hackas</h1>
<p>They are all hackathons that I have already participated in as a back-end in both nest.js and go</p>

<h4> <span> · </span> <a href="https://github.com/Pizzy23/Hackatons/blob/master/README.md"> Documentation </a> <span> · </span> <a href="https://github.com/Pizzy23/Hackatons/issues"> Report Bug </a> <span> · </span> <a href="https://github.com/Pizzy23/Hackatons/issues"> Request Feature </a> </h4>

</div>

# :notebook_with_decorative_cover: Table of Contents

- [About the Repository](#star2-about-the-repository)
- [About the projects](#ghost-about-the-projects)

## :star2: About the Repository

### :space_invader: Tech Stack

<details> <summary>Client</summary> <ul>
<li>GoLang</li>
<li>Nest.js</li>
</ul> </details>
<details> <summary>Database</summary> <ul>
<li>Mysql</li>
</ul> </details>

### :dart: Features

- NestJs - TypeOrm
- Go - GinGonic
- Go - Swaggo
- NestJs - bcrypt
- Nestjs - Nodemailer
- Nestjs - Prisma
- Go - crypto

### :key: Environment Variables

To run this project, you will need to add the following environment variables to your .env file

Go

```env
Name=Chiliz
API_TOKEN= lumx api key
DB=user:password@tcp(route:3306)/db?charset=utf8mb4&parseTime=True&loc=Local
ENCRYPTION_KEY = 32 character key
SECRET_KEY = Word to use as an auth token generator
```

Nestjs

```env
DATABASE_URL = mysql://user:password@route:3306/db

EMAIL = Gmail
PASSWORD = Gmail
```

## :ghost: About the projects

:star2: For Hackas it just ideia but use back-end for confirmation <br>
:spades: For Hackas it code review <br>
:package: For Hackas that I didn't participate in, but I heard about the challenge and tried to do something back.

<details> <summary>GoLang</summary> <ul>
All the hacks I did with Go<br>

<details> <summary>:package: Synhelper</summary> <ul>

### Idea

Synhelper was a hacker in Europe whose I tried to take on the challenge of solving some problem, I tried to create an application that helped farmers see their plants and their plantation fields

### Work Tree

```
back-end-synhelper/
├── .vscode/
├── config/
│   └── router.go
├── docs/
├── internal/
│   ├── external/
│   │   ├── external.handler.go
│   │   ├── external.interface.go
│   │   └── external.service.go
│   ├── field/
│   │   ├── handler/
│   │   ├── interface/
│   │   ├── service/
│   │   └── storage/
├── repository/
├── util/
├── .env
├── .gitignore
├── go.mod
├── go.sum
├── main.go
└── todo

```

### How it was developed?

Well, I came up with this solution thinking that a simple monitoring system would be good in relation to how farmers and people in the fields are simple, so leaving everything centralized on the cell phone would be super simpler. However, I think the idea could be improved a lot.

</ul> </details>
<details> <summary>:spades: Lumx (4º Place)</summary> <ul>

### Idea

Our platform aims to revolutionize the concept of loyalty tokens by centralizing their management and providing transparent exchange mechanisms. Users can effortlessly convert their loyalty tokens into other forms, accompanied by clear explanations for each transaction, thereby fostering trust and transparency among merchants. Leveraging blockchain technology, we mitigate the risks associated with fraud and manipulation, ensuring the integrity of every transaction.

### Work Tree

```
back-end-Lumx/
├── .vscode/
├── cmd/
├── config/
├── db/
├── docs/
├── internal/
│   ├── mkt/
│   │   ├── handler/
│   │   │   └── mkt.handler.go
│   │   ├── interface/
│   │   │   └── mkt.interface.go
│   │   ├── service/
│   │   │   └── mkt.service.go
│   │   └── storage/
│   │       └── mkt.storage.go
│   ├── tokens/
│   │   ├── handler/
│   │   │   └── tokens.handler.go
│   │   ├── interface/
│   │   │   └── tokens.interface.go
│   │   ├── service/
│   │   │   └── tokens.service.go
│   │   └── storage/
│   │       └── tokens.storage.go
│   ├── user/
│   │   ├── handler/
│   │   │   └── user.handler.go
│   │   ├── interface/
│   │   │   └── user.interface.go
│   │   ├── service/
│   │   │   └── user.service.go
│   │   └── storage/
│   │       └── user.storage.go
├── middleware/
├── package/
├── util/
├── .env
├── .env.exemple
├── .gitignore
├── fanify.exe
├── go.mod
├── go.sum
├── go.work
├── go.work.sum
├── logfile.txt
├── main.go
└── Readme.md

```

### How it was developed?

We started with a simple idea of ​​a token that would be centralized where the user would have the token inside, talking to the mentors we arrived at a result where we would have our own currency, and it could be mined and exchanged for other loyalty tokens that we would have.

</ul> </details>
<details> <summary>:star2: Ran</summary> <ul>

### Idea

Transform pdfs into images, to help the national archive digitize files in poor condition

### Work Tree

```
back-end-han/
├── cmd/
├── config/
├── db/
├── docs/
├── internal/
│   ├── comunity/
│   │   ├── handler/
│   │   │   └── comunity.handler.go
│   │   ├── interface/
│   │   │   └── comu.interface.go
│   │   ├── service/
│   │   │   └── comunity.service.go
│   │   └── storage/
│   │       └── comunity.storage.go
│   ├── match/
│   │   ├── handler/
│   │   │   └── match.handler.go
│   │   ├── service/
│   │   │   └── match.service.go
│   │   └── storage/
│   │       └── match.storage.go
│   ├── rank/
│   │   ├── handler/
│   │   │   └── rank.handler.go
│   │   ├── interface/
│   │   │   └── rank.interface.go
│   │   ├── service/
│   │   │   └── rank.service.go
│   │   └── storage/
│   │       └── rank.storage.go
│   ├── search/
│   │   ├── handler/
│   │   │   └── search.handler.go
│   │   ├── interface/
│   │   │   └── search.interface.go
│   │   ├── service/
│   │   │   └── search.service.go
│   │   └── storage/
│   │       └── search.storage.go
├── middleware/
├── output/
├── pdftoimage/
├── uploads/
├── util/
├── __debug_bin1838066211.exe
├── .dockerfile
├── .env
├── .gitignore
├── go.mod
├── go.sum
├── logfile.txt
└── main.go

```

### How it was developed?

I ended up taking an approach with go and node, to be able to work with pdfs, I didn't find anything in go to facilitate manipulating pdfs, but everything went fine using line commands

```
  cmd := exec.Command("node", "index.js")
```

</ul> </details>
<details> <summary>:spades: Translate</summary> <ul>

### Idea

This did not contain the idea, it was just asked to program a pre-defined business

### Work Tree

```
hacka-translate/
├── .vscode/
├── api/
│   ├── login/
│   │   ├── login.controller.go
│   │   ├── login.repository.go
│   │   └── login.service.go
│   └── user/
│       ├── user.controller.go
│       ├── user.repository.go
│       └── user.service.go
├── model/
│   ├── connectDatabase.go
│   ├── login.model.go
│   └── user.model.go
├── module/
├── util/
├── .env
├── go.mod
├── go.sum
└── main.go

```

### How it was developed?

This did not contain the idea, it was just asked to program a pre-defined business but it's my first hack using go and the file architecture was horrible, I would change everything about this project.

</ul> </details>
<details> <summary>:spades: Chiliz (1º Place)</summary> <ul>
https://br.cointelegraph.com/news/crypto-news-chiliz-announces-hackathon-winners-bnb-chain-with-updates-rwa-tokens-and-other-news

### Idea

Our platform aims to revolutionize the concept of loyalty tokens by centralizing their management and providing transparent exchange mechanisms. Users can effortlessly convert their loyalty tokens into other forms, accompanied by clear explanations for each transaction, thereby fostering trust and transparency among merchants. Leveraging blockchain technology, we mitigate the risks associated with fraud and manipulation, ensuring the integrity of every transaction.

### Work Tree

```
back-end-Lumx/
├── .vscode/
├── cmd/
├── config/
├── db/
├── docs/
├── internal/
│   ├── tokens/
│   │   ├── handler/
│   │   │   └── tokens.handler.go
│   │   ├── interface/
│   │   │   └── tokens.interface.go
│   │   ├── service/
│   │   │   └── tokens.service.go
│   │   └── storage/
│   │       └── tokens.storage.go
│   ├── user/
│   │   ├── handler/
│   │   │   └── user.handler.go
│   │   ├── interface/
│   │   │   └── user.interface.go
│   │   ├── service/
│   │   │   └── user.service.go
│   │   └── storage/
│   │       └── user.storage.go
├── middleware/
├── package/
├── util/
├── .env
├── .env.exemple
├── .gitignore
├── fanify.exe
├── go.mod
├── go.sum
├── go.work
├── go.work.sum
├── logfile.txt
├── main.go
└── Readme.md

```

### How it was developed?

It follows almost the same idea as the lumx hack, after all we did the same work in both hacks.

</ul> </details>

</ul> </details>
<details> <summary>Nestjs</summary> <ul>
All the hacks I did with Nestjs

<details> <summary>:star2: Amazon-i-want</summary> <ul>

### Idea

### Work Tree

```

```

### How it was developed?

</ul> </details>

<details> <summary>:spades: Doc-Process</summary> <ul>

### Idea

### Work Tree

```

```

### How it was developed?

</ul> </details>
<details> <summary>:spades: Hackathon Amazonas</summary> <ul>

### Idea

### Work Tree

```

```

### How it was developed?

</ul> </details>
<details> <summary>:spades:Hackathon Correios (2º Place)</summary> <ul>

https://blog.correios.com.br/2023/08/04/correios-digital-inovacao-logistica-e-hackathon-na-campus-party-brasil-2023/#:~:text=Hackathon%20Correios&text=A%20equipe%20Cerrado%20Geeks%20ficou,incentivo%20de%20R%24%202%20mil.

### Idea

### Work Tree

```

```

### How it was developed?

</ul> </details>
<details> <summary>:star2: Crea (2º Place)</summary> <ul>
https://www.creasp.org.br/noticias/conheca-os-vencedores-do-1o-hackathon-do-crea-sp/

### Idea

### Work Tree

```

```

### How it was developed?

</ul> </details>
<details> <summary>:star2: Hackathon Ideiagov (3º Place)</summary> <ul>

### Idea

### Work Tree

```

```

### How it was developed?

</ul> </details>
<details> <summary>:star2: Amazonas-SerPro</summary> <ul>

### Idea

### Work Tree

```

```

### How it was developed?

</ul> </details>
<details> <summary>:star2: Olx</summary> <ul>

### Idea

### Work Tree

```

```

### How it was developed?

</ul> </details>
<details> <summary>:star2: Cra</summary> <ul>

### Idea

### Work Tree

```

```

### How it was developed?

</ul> </details>
<details> <summary>:star2: oftalmo (1º Place)</summary> <ul>

### Idea

### Work Tree

```

```

### How it was developed?

</ul> </details>
<details> <summary>:spades: pix-hackathon-citi (3º Place)</summary> <ul>

### Idea

### Work Tree

```

```

### How it was developed?

</ul> </details>
<details> <summary>:spades: Questrade (1º Place)</summary> <ul>
https://medium.com/@bellujrb/my-experience-at-the-questrade-hackathon-54e13ad00794
the links that show the result were removed from the air, however they contain my friend's post on a website, where he tells a little about his experience

### Idea

### Work Tree

```

```

### How it was developed?

</ul> </details>

</ul> </details>
