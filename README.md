# 🍿 RottenPotatoes

Aplicação web desenvolvida em Ruby on Rails para gerenciamento, listagem e avaliação de filmes.

---

## 📌 Sobre a Implementação

A aplicação foi construída seguindo o padrão arquitetural **MVC (Model-View-Controller)** e as convenções REST do Rails:

* **Model (`Movie`):** Implementa validações de dados (obrigatoriedade de título e data de lançamento, além de restrição de classificações indicativas válidas) para garantir a integridade no banco de dados.
* **Controller (`MoviesController`):** Gerencia o fluxo das requisições RESTful e inclui lógica de ordenação segura baseada em *whitelisting* de parâmetros (`title` e `release_date`), prevenindo SQL Injection.
* **Views:** Desenvolvidas com o template engine **Haml**, oferecendo uma interface limpa para listagem, ordenação, criação, edição e exclusão de registros.
* **Testes:** Cobertura de testes unitários de modelo e testes de integração de controller utilizando **Minitest**.

---

## 🚀 Como Instalar e Executar

Siga os passos abaixo no terminal para rodar o projeto em seu ambiente local:

### 1. Pré-requisitos
* **Ruby** (versão 3.x recomendada)
* **Bundler**
* **Rails**

### 2. Clonar o repositório
```bash
git clone [https://github.com/GustavoHenriqueGB/rotten_potatoes.git](https://github.com/GustavoHenriqueGB/rotten_potatoes.git)
cd rotten_potatoes
