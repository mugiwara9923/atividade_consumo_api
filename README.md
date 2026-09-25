# 🔴 Pokédex Dart

Projeto desenvolvido em Dart para a disciplina de Programação para Dispositivos Móveis, com o objetivo de praticar o consumo de APIs utilizando requisições HTTP, JSON, programação assíncrona e organização de código.

## 📌 Sobre o projeto

A aplicação é uma Pokédex executada diretamente pelo terminal.

O usuário pode pesquisar um Pokémon informando seu nome ou número. O sistema realiza uma requisição para uma API pública, recebe os dados em formato JSON, transforma essas informações em um objeto Dart e apresenta os principais dados do Pokémon no terminal.

Também é possível consultar vários Pokémon durante a mesma execução e visualizar o histórico das consultas realizadas.

## 🌐 API utilizada

O projeto utiliza a **PokeAPI**, uma API pública de Pokémon que não exige chave de acesso.

API:

https://pokeapi.co/

Endpoint utilizado:

https://pokeapi.co/api/v2/pokemon/{nome-ou-id}

### Exemplo

Para consultar o Pikachu:

https://pokeapi.co/api/v2/pokemon/pikachu

Também é possível pesquisar utilizando o número:

https://pokeapi.co/api/v2/pokemon/25

## ⚙️ Tecnologias utilizadas

- Dart
- Pacote `http`
- PokeAPI
- JSON
- Programação assíncrona (`Future`, `async` e `await`)
- Git e GitHub

## 📂 Estrutura do projeto

```text
atividade_consumo_api/
├── bin/
│   └── atividade_consumo_api.dart
│
├── lib/
│   ├── models/
│   │   └── pokemon.dart
│   │
│   └── services/
│       └── pokemon_service.dart
│
├── test/
├── pubspec.yaml
└── README.md

🎮 Funcionalidades

O sistema possui um menu com as seguintes opções:

1 - Consultar Pokémon

Permite pesquisar um Pokémon pelo nome ou número.

São exibidas informações como:

Nome
ID
Altura
Peso
Tipos
Experiência base
Habilidades
2 - Exibir histórico

Mostra os Pokémon que foram consultados durante a execução do programa.

3 - Limpar histórico

Remove todos os Pokémon armazenados no histórico.

0 - Encerrar

Finaliza o programa.

🛡️ Tratamento de erros

O sistema possui tratamento para algumas situações, como:

Entrada vazia;
Pokémon não encontrado;
Erros de conexão;
Resposta inválida da API;
Erros internos da API;
Opções inválidas no menu.
🔄 Funcionamento

O fluxo principal da aplicação funciona da seguinte forma:

Usuário
   ↓
Escolhe uma opção
   ↓
Informa o Pokémon
   ↓
PokemonService
   ↓
Requisição HTTP
   ↓
PokeAPI
   ↓
JSON
   ↓
Pokemon.fromJson()
   ↓
Objeto Pokemon
   ↓
Informações exibidas no terminal
📚 Objetivo acadêmico

O projeto foi desenvolvido como atividade prática para colocar em prática conceitos de:

Consumo de APIs;
Requisições HTTP;
JSON;
async e await;
Classes e objetos em Dart;
Tratamento de exceções;
Organização de arquivos;
Uso de pacotes externos.
💡 Dificuldades encontradas

Durante o desenvolvimento, algumas das principais dificuldades foram entender como realizar uma requisição HTTP em Dart, interpretar os dados retornados em JSON e transformar esses dados em objetos da classe Pokemon.

Também foi necessário entender o funcionamento de programação assíncrona com Future, async e await, além da organização do projeto em modelos e serviços.

👨‍💻 Autor

Matheus de Oliveira

Projeto desenvolvido para fins acadêmicos.
