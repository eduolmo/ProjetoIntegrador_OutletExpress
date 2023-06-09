/* logico_PI_NOVO_RES: */

CREATE TABLE CLIENTE (
    cpf varchar(20),
    FK_ENDERECO_codigo serial
);

CREATE TABLE PRODUTO (
    imagem varchar(255),
    descricao varchar(255),
    valor float,
    nome varchar(255),
    codigo serial PRIMARY KEY,
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
    codigo serial PRIMARY KEY,
    forma_pagamento varchar(50)
);

CREATE TABLE Item_compra (
    fk_PRODUTO_codigo serial,
    fk_COMPRA_codigo serial,
    codigo serial PRIMARY KEY,
    quantidade integer
);
 
ALTER TABLE CLIENTE ADD CONSTRAINT FK_CLIENTE_1
    FOREIGN KEY (FK_ENDERECO_codigo)
    REFERENCES ENDERECO (codigo)
    ON DELETE RESTRICT;
 
ALTER TABLE PRODUTO ADD CONSTRAINT FK_PRODUTO_2
    FOREIGN KEY (FK_CATEGORIA_PRODUTO_codigo)
    REFERENCES CATEGORIA_PRODUTO (codigo)
    ON DELETE CASCADE;
 
ALTER TABLE PRODUTO ADD CONSTRAINT FK_PRODUTO_3
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
 
ALTER TABLE Item_compra ADD CONSTRAINT FK_Item_compra_2
    FOREIGN KEY (fk_PRODUTO_codigo)
    REFERENCES PRODUTO (codigo)
    ON DELETE RESTRICT;
 
ALTER TABLE Item_compra ADD CONSTRAINT FK_Item_compra_3
    FOREIGN KEY (fk_COMPRA_codigo)
    REFERENCES COMPRA (codigo)
    ON DELETE SET NULL;
