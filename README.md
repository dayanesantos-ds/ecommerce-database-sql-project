# 🛍️ Projeto Lógico de Banco de Dados – E-commerce

Este repositório contém o desenvolvimento completo do projeto lógico de banco de dados para um **cenário de E-commerce**, elaborado como parte do desafio da DIO (
Construindo seu Primeiro Projeto Lógico de Banco de Dados).  
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

📌 O arquivo do diagrama EER está em:  
`/esquema.mwb`

---

## 🛠 Tecnologias Utilizadas

- MySQL Server  
- MySQL Workbench  
- SQL (DDL, DML e Queries analíticas)

---

## 📂 Estrutura do Repositório

| Arquivo | Descrição |
|--------|----------|
| `esquema.mwb` | Modelo lógico e diagrama EER |
| `inserts.sql` | Script completo de inserção de dados |
| `queries.sql` | Consultas SQL solicitadas no desafio |
| `prints/` | Capturas de tela dos resultados das consultas |

---

## ▶️ Como Executar o Projeto

1️⃣ Abra o MySQL Workbench  
2️⃣ Execute o script de criação do banco e tabelas  
3️⃣ Execute o arquivo **`inserts.sql`** para carregar os dados  
4️⃣ Execute o arquivo **`queries.sql`** para rodar as consultas analíticas  

---

## 🔎 Consultas Criadas

As queries desenvolvidas respondem às perguntas:

- Quantos pedidos cada cliente realizou  
- Relação de produtos x fornecedores  
- Relação de produtos, fornecedores e quantidade fornecida  
- Recuperação de pedidos com seus produtos associados  
- Relação nomes de fornecedores x nomes de produtos  

Os resultados foram validados no Workbench.

📌 Prints dos resultados estão na pasta  
`/prints`

---

## 🧪 Exemplos de Resultados

### ✔️ Pedidos por Cliente
(consulta agrupando pedidos por cliente)

### ✔️ Produtos por Fornecedor
(join entre fornecedores e produtos)

### ✔️ Pedidos e Itens
(consulta exibindo cliente, pedido e produto associado)

> Os prints das consultas podem ser visualizados na pasta `prints`.

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

Projeto desenvolvido por **Dayane** como parte do programa de formação em Banco de Dados e Análise de Dados.


