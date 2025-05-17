-- Criando o banco de dados
create database cadastro_clientes
default character set utf8mb4
default collate utf8mb4_general_ci; -- Configura para sempre ser aceito acentos e pontuações

-- Entra no banco de dados criado
use cadastro_clientes;

-- Criando tabela para o banco de dados
create table clientes (
id int auto_increment not null primary key, -- O identificador de cada cliente individual
nome varchar(100) not null,
nascimento date,
telefone varchar(20) unique not null,
email varchar(100) unique not null, 
data_cadastro timestamp default current_timestamp -- Para preencher o cadastro com a data e hora atual
) default charset = utf8mb4; -- Configura para sempre ser aceito acentos e pontuações

-- Preenchendo a tabela
insert into clientes values
(default, 'Ana Souza', '1985-01-01', '(21)99999-9999', 'anaxxxxxx@xxx.com', default),
(default, 'Carlos Alberto', '1995-02-02', '(21)98888-8888', 'carlosxxxx@xxx.com', default),
(default, 'Marcia Silva', '2000-03-03', '(21)97777-7777', 'marciaxxxx@xxx.com', default),
(default, 'João Rocha', '2005-04-04', '(21)96666-6666', 'joaoxxxxx@xxx.com', default),
(default, 'Pedro Oliveira', '1980-05-05', '(21)95555-5555', 'pedroxxxx@xxx.com', default);

-- Adicionando uma coluna contendo o sexo de cada cliente
alter table clientes
add column sexo enum('M','F') after nome;

-- Preenchendo os clientes do sexo feminino
update clientes
set sexo = 'F'
where id in (1,3);

-- Preenchendo os clientes do sexo masculino
update clientes
set sexo = 'M'
where id in (2, 4, 5) ;

-- Consultar nome e data de nascimento de clientes do sexo feminino
select nome, nascimento from clientes
where sexo = 'F';

-- Adicionando mais clientes na tabela
insert into clientes values
(default, 'Bruno Costa', 'M', '1988-10-23', '(21)94444-4444', 'brunoxxxx@xxx.com', default),
(default, 'Henrique Dias', 'M', '1985-05-06', '(21)93333-3333', 'henriquexxxx@xxx.com', default),
(default, 'Felipe Souza', 'M', '2000-04-20', '(21)92222-2222', 'felipexxxx@xxx.com', default),
(default, 'Fabiana Martins', 'F', '1987-05-23', '(21)91111-1111', 'fabianaxxxx@xxx.com', default),
(default, 'Mariana Ribeiro', 'F', '1996-11-15', '(21)99999-8888', 'marianaxxxx@xxx.com', default),
(default, 'Priscila Gomes', 'F', '1983-04-21', '(21)98888-9999', 'priscilaxxxx@xxx.com', default);

-- Localizando os aniversariantes do mês de maio
select * from clientes
where nascimento like '%-05-%';

-- Mudando nome da coluna "telefone" por "celular" 
alter table clientes
change column telefone celular varchar (20);

-- Seleciona tudo da tabela clientes e mostra na tela os resultados
select * from clientes;
