# Projeto Exemplo

Este projeto contém dois subprojetos: 
- `api/`: Um projeto Node.js simples que serve como a API backend.
- `example_dart/`: Um projeto Dart, que consome a API.

## Estrutura do Projeto

```
/estudo_pattern
│
├── api/       # Projeto Node.js (API Backend)
│   ├── src/
│   ├── package.json
│   └── ...
│
└── example_dart/       # Projeto Dart (Aplicação )
    ├── bin/ 
    ├── lib/
    ├── pubspec.yaml
    └── ...
```

## Pré-requisitos

Certifique-se de ter as seguintes ferramentas instaladas para rodar os projetos:

- [Node.js](https://nodejs.org/) (versão 16.x ou superior)
- [Dart SDK](https://dart.dev/get-dart) (versão 3.x ou superior)

## Como rodar o projeto

### 1. Configurar e rodar a API (Node.js)

1. Navegue até a pasta `api/`:

    ```bash
    cd api/
    ```

2. Instale as dependências:

    ```bash
    npm install
    ```

3. Inicie a API:

    ```bash
    npm run start
    ```

A API estará rodando em [http://localhost:3000](http://localhost:3000).

### 2. Configurar e rodar o App (Dart)

1. Navegue até a pasta `example_dart/`:

    ```bash
    cd example_dart/
    ```

2. Instale as dependências:

    ```bash
    dart pub get
    ```

3. Rode o projeto Dart:

    ```bash
    dart run bin/example.dart
    ```
