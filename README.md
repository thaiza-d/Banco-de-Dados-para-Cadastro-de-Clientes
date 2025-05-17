# Projeto: Cadastro de Clientes com MySQL

Este projeto foi criado com o objetivo de praticar a criação e manipulação de bancos de dados relacionais utilizando MySQL. Ele simula um sistema simples de cadastro de clientes, incluindo funcionalidades como:

- Criação de banco e tabelas
- Inserção e atualização de dados
- Alterações na estrutura da tabela
- Consultas SQL com filtros
- Localização de aniversariantes
- Uso de tipos de dados, `enum`, `timestamp`, `default`, `like`, `group by` e mais.

## Tecnologias Utilizadas:

- MySQL
- SQL
  
## Estrutura do Banco:
### Tabela 'clientes'
Contém os seguintes campos:

| Campo          | Tipo            | Descrição                           |
|----------------|-----------------|-------------------------------------|
| id             | int (PK)        | Identificador único do cliente      |
| nome           | varchar(100)    | Nome completo                       |
| sexo           | enum('M','F')   | Gênero                              |
| nascimento     | date            | Data de nascimento                  |
| celular        | varchar(20)     | Número de celular                   |
| email          | varchar(100)    | E-mail                              |
| data_cadastro  | timestamp       | Data e hora do cadastro (automático)|

## Funcionalidades Implementadas:

- Criação e uso de banco com `utf8mb4`
- Inserção de múltiplos registros com `default` e `timestamp`
- Adição e alteração de colunas (`ALTER TABLE`)
- Atualizações com `UPDATE` e `WHERE`
- Consultas com `SELECT` filtrando por sexo e data
- Alteração do nome de colunas (`CHANGE COLUMN`)
- Localização de aniversariantes (`LIKE '%-05-%'`)
- Inserção de novos clientes
- Visualização geral dos dados da tabela

## Consultas:
**Selecionar todos os clientes:**
SELECT * FROM clientes;
**Consultar nome e data de nascimento de clientes do sexo feminino**
select nome, nascimento from clientes
where sexo = 'F';
**Localizar os aniversariantes do mês de maio**
select * from clientes
where nascimento like '%-05-%';

## Acessar o projeto:
cadastro_clientes.sql
