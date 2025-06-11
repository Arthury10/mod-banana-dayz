# Banana Mod

Este repositório contém um mod simples para **DayZ** que adiciona um item de "Banana". Como não há um modelo 3D de banana disponível, o item reutiliza o modelo do pacote de arroz do próprio jogo, mas inclui textura e som personalizados.

## Estrutura
- **meta.cpp** e **mod.cpp**: arquivos de metadados do mod.
- **Addons/**: contém subdiretórios por categoria (ex.: `Food`, `Weapons`, `Clothes`, `Objects`).
 - **Addons/Food/Banana/**: definição do item de comida e arquivos de som e textura personalizados.

## Geração do PBO
Para utilizar o mod no jogo, compile o diretório `Addons/Food/Banana` em um arquivo PBO utilizando o DayZ Tools (Addon Builder).

## Compilação com VS Code
Uma maneira prática de compilar todos os mods é utilizando a tarefa **Build DayZ Mods** definida em `.vscode/tasks.json`.

1. Ajuste as variáveis de ambiente `DAYZ_TOOLS` (pasta de instalação do DayZ Tools) e `DAYZ_MOD_OUTPUT` (diretório onde os PBOs serão gerados). Elas podem ser configuradas diretamente no arquivo `tasks.json` ou no sistema operacional.
2. Execute a tarefa `Build DayZ Mods` no VS Code (``Ctrl+Shift+B``) para compilar todos os subdiretórios de `Addons` que possuam um `config.cpp`.

O script `scripts/build_mods.ps1` é responsável por chamar o **Addon Builder** para cada mod encontrado.

Além da tarefa de build, o arquivo `.vscode/tasks.json` inclui:

- **Validate DayZ Mods**: executa `scripts/validate_mods.ps1` para validar a sintaxe de todos os `config.cpp`.
- **Launch DayZ**: inicia o executável do jogo definido na variável `DAYZ_GAME`.

## Ambiente no VS Code

O diretório `.vscode` também possui configurações pensadas para facilitar o desenvolvimento de mods:

- `extensions.json` recomenda instalar as extensões **jm-dayztools** e **DayZ CE Schema**;
- `c_cpp_properties.json` aponta para a pasta `ce_sdk` que contém stubs básicos de classes e métodos do jogo;
- `dayz.code-snippets` disponibiliza um snippet simples para criação de classes de config.

Se você tiver acesso aos scripts originais do DayZ, copie-os para `ce_sdk` para obter um IntelliSense mais completo.
