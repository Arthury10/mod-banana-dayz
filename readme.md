# Banana Mod

Este repositório contém um mod simples para **DayZ** que adiciona um item de "Banana". Como não há um modelo 3D de banana disponível, o item reutiliza o modelo do pacote de arroz do próprio jogo.

## Estrutura
- **meta.cpp** e **mod.cpp**: arquivos de metadados do mod.
- **Addons/**: contém subdiretórios por categoria (ex.: `Food`, `Weapons`, `Clothes`, `Objects`).
  - **Addons/Food/Banana/**: definição do item de comida e arquivos de som e textura.

## Geração do PBO
Para utilizar o mod no jogo, compile o diretório `Addons/Food/Banana` em um arquivo PBO utilizando o DayZ Tools (Addon Builder).
