# MediSync — Interface Flutter

Aplicativo acadêmico com uma tela inicial de agendamento médico. O projeto foi
desenvolvido por **Luiz Henrique dos Passos Silva** para praticar widgets e
organização de interfaces em Flutter.

## Recursos utilizados

- `MaterialApp`, `Scaffold` e `AppBar`;
- `Row` e `Column` com propriedades de alinhamento;
- textos com diferentes estilos;
- `ElevatedButton` com retorno visual por `SnackBar`;
- `ListView` para organizar as consultas;
- componentes separados em widgets próprios.

## Organização baseada na Aula 06

```text
lib/
├── main.dart
├── telas/
│   └── tela_inicial.dart
└── widgets/
    ├── cabecalho_usuario.dart
    ├── cartao_consulta.dart
    └── cartao_destaque.dart
```

O `main.dart` contém a classe `Principal`. A tela utiliza métodos privados para
montar o `AppBar` e o conteúdo, enquanto os componentes reutilizáveis ficam em
arquivos separados.

## Como executar

1. Tenha o Flutter instalado e configurado.
2. Abra a pasta do projeto no terminal.
3. Execute `flutter pub get`.
4. Execute `flutter run` e escolha o dispositivo.

Se alguma plataforma ainda não existir em sua instalação, execute
`flutter create .` uma vez dentro da pasta antes dos passos 3 e 4.
