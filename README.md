### Projeto Integrador - Vendas Outlet

# Sumário

### 1. COMPONENTES<br>

> Integrantes do grupo<br>
Ilanna dos Reis Cardoso cardosoilanna96@gmail.com<br>
Mariana Lopes marianalopesgovea@gmail.com<br>
Eduardo Olmo Santana eduardo.olmosantana@gmail.com<br>
Paulo Cezar Rocha Furtado paulocezarfurt@gmail.com<br>
...<br>

### 2.INTRODUÇÃO E MOTIVAÇÃO<br>

> Você gostaria de economizar na compra de vestuário e eletrônicos? Você já teve dificuldade em encontrar outlet? Gostaria de ter acesso a um sistema onde pudesse encontrar produtos com preços incríveis? 

Nossa plataforma irá prover uma forma de encontrar produtos outlet  possibilitando aos usuários  efetuar compras online de forma segura, rápida e fácil, contendo informações de apresentação do produto, como fotos, preço e descrição do produto outlet. Em nosso sistema o cliente terá acesso a uma variedade de vestuário e de produtos eletrônicos com ótimos descontos.

O sistema poderá ser utilizado por empresas e clientes que deverão fazer um login informando seu nome, telefone, email e senha para se cadastrarem, além disso a empresa informará seu CNPJ e o cliente seu CPF. 
As empresas podem cadastrar seus produtos colocando o nome, preço, descrição e avaria do produto, esses produtos serão divididos em categorias. O cliente poderá filtrar por categoria, valor, avaria e também por marca.  
Ao efetuar a compra o cliente informará a forma de pagamento e o endereço de entrega. Na compra será registrado a data/hora e também todas as informações dos produtos escolhidos.
<br>

### 3.MODELO CONCEITUAL<br>

![image](https://github.com/eduolmo/Projeto_Integrador_Outlet/assets/92120359/20afd872-db35-4cf0-b4d5-6e935bcb9a85)

### 4.MODELO LÓGICO<br>

![image](https://github.com/eduolmo/Projeto_Integrador_Outlet/assets/92120359/eaa8a2af-1949-4345-8304-c39572bcb7ea)

### 5.MODELO FÍSICO<br>

CREATE TABLE USUARIO (
    codigo serial PRIMARY KEY,
    nome varchar(255),
    senha varchar(50),
    email varchar(100)
);

CREATE TABLE CLIENTE (
    cpf varchar(20),
    FK_USUARIO_codigo serial PRIMARY KEY,
    FK_ENDERECO_codigo serial
);

CREATE TABLE EMPRESA (
    cnpj varchar(25),
    FK_USUARIO_codigo serial PRIMARY KEY
);

CREATE TABLE PRODUTO (
    imagem varchar(255),
    descricao varchar(255),
    valor float,
    nome varchar(255),
    codigo serial PRIMARY KEY,
    FK_EMPRESA_FK_USUARIO_codigo serial,
    FK_CATEGORIA_PRODUTO_codigo serial,
    FK_CATEGORIA_AVARIA_codigo serial
);

CREATE TABLE CATEGORIA_PRODUTO (
    codigo serial PRIMARY KEY,
    descricao varchar(255)
);

CREATE TABLE CATEGORIA_AVARIA (
    codigo serial PRIMARY KEY,
    descricao varchar(255)
);

CREATE TABLE ENDERECO (
    codigo serial PRIMARY KEY,
    nome_logradouro varchar(255),
    numero integer,
    cep varchar(15),
    FK_PAIS_codigo serial,
    FK_TIPO_LOGRADOURO_codigo serial
);

CREATE TABLE PAIS (
    codigo serial PRIMARY KEY,
    nome varchar(255)
);

CREATE TABLE TIPO_LOGRADOURO (
    codigo serial PRIMARY KEY,
    nome varchar(255)
);

CREATE TABLE ESTADO (
    codigo serial PRIMARY KEY,
    nome varchar(255),
    FK_PAIS_codigo serial
);

CREATE TABLE CIDADE (
    codigo serial PRIMARY KEY,
    nome varchar(255),
    FK_ESTADO_codigo serial
);

CREATE TABLE BAIRRO (
    codigo serial PRIMARY KEY,
    nome varchar(255),
    FK_CIDADE_codigo serial
);

CREATE TABLE COMPRA (
    forma_pagamento varchar(50),
    codigo serial PRIMARY KEY,
    FK_CLIENTE_FK_USUARIO_codigo serial
);

CREATE TABLE Item_compra (
    fk_PRODUTO_codigo serial,
    fk_COMPRA_codigo serial,
    codigo serial PRIMARY KEY,
    quantidade integer
);
 
ALTER TABLE CLIENTE ADD CONSTRAINT FK_CLIENTE_2
    FOREIGN KEY (FK_USUARIO_codigo)
    REFERENCES USUARIO (codigo)
    ON DELETE CASCADE;
 
ALTER TABLE CLIENTE ADD CONSTRAINT FK_CLIENTE_3
    FOREIGN KEY (FK_ENDERECO_codigo)
    REFERENCES ENDERECO (codigo)
    ON DELETE RESTRICT;
 
ALTER TABLE EMPRESA ADD CONSTRAINT FK_EMPRESA_2
    FOREIGN KEY (FK_USUARIO_codigo)
    REFERENCES USUARIO (codigo)
    ON DELETE CASCADE;
 
ALTER TABLE PRODUTO ADD CONSTRAINT FK_PRODUTO_2
    FOREIGN KEY (FK_EMPRESA_FK_USUARIO_codigo)
    REFERENCES EMPRESA (FK_USUARIO_codigo)
    ON DELETE RESTRICT;
 
ALTER TABLE PRODUTO ADD CONSTRAINT FK_PRODUTO_3
    FOREIGN KEY (FK_CATEGORIA_PRODUTO_codigo)
    REFERENCES CATEGORIA_PRODUTO (codigo)
    ON DELETE CASCADE;
 
ALTER TABLE PRODUTO ADD CONSTRAINT FK_PRODUTO_4
    FOREIGN KEY (FK_CATEGORIA_AVARIA_codigo)
    REFERENCES CATEGORIA_AVARIA (codigo)
    ON DELETE CASCADE;
 
ALTER TABLE ENDERECO ADD CONSTRAINT FK_ENDERECO_2
    FOREIGN KEY (FK_PAIS_codigo)
    REFERENCES PAIS (codigo)
    ON DELETE CASCADE;
 
ALTER TABLE ENDERECO ADD CONSTRAINT FK_ENDERECO_3
    FOREIGN KEY (FK_TIPO_LOGRADOURO_codigo)
    REFERENCES TIPO_LOGRADOURO (codigo)
    ON DELETE CASCADE;
 
ALTER TABLE ESTADO ADD CONSTRAINT FK_ESTADO_2
    FOREIGN KEY (FK_PAIS_codigo)
    REFERENCES PAIS (codigo)
    ON DELETE RESTRICT;
 
ALTER TABLE CIDADE ADD CONSTRAINT FK_CIDADE_2
    FOREIGN KEY (FK_ESTADO_codigo)
    REFERENCES ESTADO (codigo)
    ON DELETE RESTRICT;
 
ALTER TABLE BAIRRO ADD CONSTRAINT FK_BAIRRO_2
    FOREIGN KEY (FK_CIDADE_codigo)
    REFERENCES CIDADE (codigo)
    ON DELETE RESTRICT;
 
ALTER TABLE COMPRA ADD CONSTRAINT FK_COMPRA_2
    FOREIGN KEY (FK_CLIENTE_FK_USUARIO_codigo)
    REFERENCES CLIENTE (FK_USUARIO_codigo)
    ON DELETE RESTRICT;
 
ALTER TABLE Item_compra ADD CONSTRAINT FK_Item_compra_2
    FOREIGN KEY (fk_PRODUTO_codigo)
    REFERENCES PRODUTO (codigo)
    ON DELETE RESTRICT;
 
ALTER TABLE Item_compra ADD CONSTRAINT FK_Item_compra_3
    FOREIGN KEY (fk_COMPRA_codigo)
    REFERENCES COMPRA (codigo)
    ON DELETE SET NULL;
    
### 6.INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>  
