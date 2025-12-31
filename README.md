# 🛍️ Projeto Lógico de Banco de Dados – E-commerce

Este repositório contém o desenvolvimento completo do projeto lógico de banco de dados para um **cenário de E-commerce**, elaborado como parte do desafio da DIO (Construindo seu Primeiro Projeto Lógico de Banco de Dados).  
O projeto inclui modelagem, criação do schema, inserção de dados fictícios e execução de consultas SQL para análise do negócio.

---

## 🎯 Objetivo do Projeto

- Construir um modelo lógico e físico para um banco de dados de e-commerce  
- Mapear entidades como clientes, pedidos, produtos, fornecedores, pagamentos e entregas  
- Garantir integridade por meio de **chaves primárias e estrangeiras**  
- Popular o banco com dados consistentes para testes  
- Criar consultas SQL com foco analítico  

---

## 🧩 Modelagem do Banco de Dados

A modelagem contempla as seguintes entidades principais:

- **Clientes (PF e PJ)**
- **Produtos e categorias**
- **Pedidos e itens de pedido**
- **Pagamentos**
- **Entregas com rastreio**
- **Fornecedores**
- **Produtos por fornecedor**
- **Estoque**

O modelo foi estruturado seguindo boas práticas de normalização e relacionamento entre tabelas.

📌 Arquivo do diagrama EER:  
👉 **[esquema.mwb](https://github.com/dayanesantos-ds/ecommerce-database-sql-project/blob/main/esquema.mwb)**  

📌 Visualização do diagrama (print):  
![Diagrama do Banco](https://github.com/dayanesantos-ds/ecommerce-database-sql-project/blob/main/imagens/print%20esquema%201.png)

---

## 🛠 Tecnologias Utilizadas

- MySQL Server  
- MySQL Workbench  
- SQL (DDL, DML e consultas analíticas)

---

## 📂 Estrutura do Repositório

| Arquivo / Pasta | Descrição |
|----------------|----------|
| **[esquema.mwb](https://github.com/dayanesantos-ds/ecommerce-database-sql-project/blob/main/esquema.mwb)** | Modelo lógico e diagrama EER |
| **[insets.sql](https://github.com/dayanesantos-ds/ecommerce-database-sql-project/blob/main/insets.sql)** | Script completo de inserção de dados |
| **[queries.sql](https://github.com/dayanesantos-ds/ecommerce-database-sql-project/blob/main/queries.sql)** | Consultas SQL solicitadas no desafio |
| **[imagens/](https://github.com/dayanesantos-ds/ecommerce-database-sql-project/tree/main/imagens)** | Capturas de tela dos resultados das consultas |

---

## ▶️ Como Executar o Projeto

1️⃣ Abra o MySQL Workbench  
2️⃣ Execute o script de criação do banco e tabelas  
3️⃣ Execute o arquivo **[insets.sql](https://github.com/dayanesantos-ds/ecommerce-database-sql-project/blob/main/insets.sql)** para carregar os dados  
4️⃣ Execute o arquivo **[queries.sql](https://github.com/dayanesantos-ds/ecommerce-database-sql-project/blob/main/queries.sql)** para rodar as consultas analíticas  

---

## 🔎 Consultas Criadas

As queries desenvolvidas respondem às perguntas:

- Quantos pedidos cada cliente realizou  
- Relação de pedidos com seus produtos associados  
- Relação de produtos, fornecedores e quantidade de produtos
- Relação nomes de fornecedores x nomes de produtos  

📌 Prints dos resultados estão disponíveis na pasta:  
👉 **[imagens/](https://github.com/dayanesantos-ds/ecommerce-database-sql-project/tree/main/imagens)**

---

## 🧪 Exemplos de Resultados

### ✔️ Pergunta 1 – Pedidos por Cliente
![Resultado Pergunta 1](https://github.com/dayanesantos-ds/ecommerce-database-sql-project/blob/main/imagens/pergunta%201.png)

---

### ✔️ Pergunta 2 – Pedidos com Produtos Associados
![Resultado Pergunta 2](https://github.com/dayanesantos-ds/ecommerce-database-sql-project/blob/main/imagens/pergunta%202.png)

---

### ✔️ Pergunta 3 – Fornecedores, Produtos e Estoque
![Resultado Pergunta 3](https://github.com/dayanesantos-ds/ecommerce-database-sql-project/blob/main/imagens/pergunta%203.png)

---

### ✔️ Pergunta 4 – Fornecedores e Nome de Produtos
![Resultado Pergunta 4](https://github.com/dayanesantos-ds/ecommerce-database-sql-project/blob/main/imagens/pergunta%204.png)

---

## ✅ Conclusão

Este projeto consolida o uso de SQL em um contexto realista de e-commerce, explorando:

- Modelagem de banco de dados  
- Criação de schema relacional  
- Popular dados para testes  
- Integração entre tabelas  
- Consultas com JOIN, GROUP BY e HAVING  

É um excelente exercício de prática e documentação profissional para portfólio.

---

## ✨ Autor(a)

Projeto desenvolvido por **Dayane Santos**, como parte do programa de formação em Análise de Dados da DIO.





