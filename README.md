
# Contador de Capacidade

Este é um aplicativo Flutter simples que implementa um contador de capacidade com interface gráfica. Ele permite que o usuário incremente ou decremente o número de pessoas em um espaço, com base em uma capacidade máxima de 20.

## Pré-requisitos

Antes de executar o código, certifique-se de que você possui os seguintes requisitos configurados:

1. **Flutter Instalado**: 
   - Certifique-se de que o Flutter está instalado corretamente em sua máquina. Consulte a [documentação oficial](https://flutter.dev/docs/get-started/install) para orientações de instalação.

2. **Configuração do Ambiente de Desenvolvimento**: 
   - Configure um editor de texto ou IDE compatível com Flutter, como o [Android Studio](https://developer.android.com/studio) ou [Visual Studio Code](https://code.visualstudio.com/).

3. **Dependências do Projeto**:
   - Este código faz referência a um recurso de imagem localizado em `assets/images/image2.jpg`. 
   - Você precisará criar a estrutura de diretório `assets/images` no mesmo nível do arquivo `main.dart` e adicionar a imagem correspondente.

4. **Atualização do `pubspec.yaml`**:
   - Certifique-se de declarar os ativos no arquivo `pubspec.yaml` para que o Flutter reconheça os recursos adicionados. Adicione o seguinte ao seu arquivo:
     ```yaml
     flutter:
       assets:
         - assets/images/image2.jpg
     ```

## Como Executar

1. Clone este repositório ou copie o arquivo `main.dart` para um novo projeto Flutter.
2. Configure os ativos mencionados em `pubspec.yaml`.
3. Execute o comando abaixo no terminal para instalar as dependências:
   ```bash
   flutter pub get
   ```
4. Inicie o aplicativo em um emulador ou dispositivo físico com o comando:
   ```bash
   flutter run
   ```

## Funcionamento

- O aplicativo apresenta uma interface simples com um contador e dois botões:
  - **Entrou**: Incrementa o contador, até o máximo de 20 pessoas.
  - **Saiu**: Decrementa o contador, até o mínimo de 0 pessoas.
- A interface muda dinamicamente de acordo com o estado atual:
  - Mostra "Lotado" em vermelho quando o contador atinge 20.
  - Mostra "Pode entrar" em branco quando o contador está abaixo de 20.
- A capacidade máxima é exibida na parte inferior da tela.

## Problemas Comuns

1. **Erro de recurso ausente**:
   - Certifique-se de que a imagem `image2.jpg` está no local correto e foi declarada no `pubspec.yaml`.
2. **Erro de dependências**:
   - Execute `flutter pub get` para baixar todas as dependências necessárias.

## Licença

Este projeto está licenciado sob a [MIT License](LICENSE).
