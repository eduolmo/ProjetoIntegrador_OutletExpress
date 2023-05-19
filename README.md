### Projeto Integrador - Vendas Outlet

# Sumário

### 1. COMPONENTES<br>

> Integrantes do grupo<br>
Ilanna dos Reis Cardoso cardosoilanna96@gmail.com<br>
Mariana Lopes marianalopesgovea@gmail.com<br>
Eduardo Olmo Santana eduardo.olmosantana@gmail.com<br>
Paulo Cezar Rocha Furtado paulocezarfurt@gmail.com<br>
...<br>

### 2.MINIMUNDO<br>

> Você gostaria de economizar na compra de vestuário e eletrônicos? Você já teve dificuldade em encontrar outlet? Gostaria de ter acesso a um sistema onde pudesse encontrar produtos com preços incríveis? 

Nossa plataforma irá prover uma forma de encontrar produtos outlet  possibilitando aos usuários  efetuar compras online de forma segura, rápida e fácil, contendo informações de apresentação do produto, como fotos, preço e descrição do produto outlet. Em nosso sistema o cliente terá acesso a uma variedade de vestuário e de produtos eletrônicos com ótimos descontos.

O sistema poderá ser utilizado por empresas e clientes que deverão fazer um login informando seu nome, telefone, email e senha para se cadastrarem, além disso a empresa informará seu CNPJ e o cliente seu CPF. 
As empresas podem cadastrar seus produtos colocando o nome, preço, descrição e avaria do produto, esses produtos serão divididos em categorias. O cliente poderá filtrar por categoria, valor, avaria e também por marca.  
Ao efetuar a compra o cliente informará a forma de pagamento e o endereço de entrega. Na compra será registrado a data/hora e também todas as informações dos produtos escolhidos.
<br>

### 3.PMC<br>
a) inclusão do PMC desenvolvido pelo grupo <br>
![image](https://github.com/eduolmo/Projeto_Integrador_Outlet/assets/92120359/6c6ce363-2709-43a8-b3c7-38dd9f724090)


#### 3.1. EAP - Estrutura Analítica do Projeto

a) Incluír imagem da EAP <br>
<br>
<br>
![image](https://github.com/eduolmo/Projeto_Integrador_Outlet/assets/92120359/b3de355c-7ac6-435c-8e11-aae83a7340a1) <br>

b) Dicinário da EAP <br>
<br>
![image](https://github.com/eduolmo/Projeto_Integrador_Outlet/assets/92120359/361ca61c-109b-4b0e-9876-fc531e12938d) <br>
![image](https://github.com/eduolmo/Projeto_Integrador_Outlet/assets/92120359/d3fa7708-5251-4163-9cd4-e3d676de67c3) <br>


#### 3.2. Requisitos funcionais e não funcionais
Incluir informações de: Identificador , Descrição e Prioridade
Exemplos:<br>
a) ![image](https://github.com/eduolmo/Projeto_Integrador_Outlet/assets/92120359/13ca14ce-4422-4e49-8176-9fef2646e04b) <br>
   ![image](https://github.com/eduolmo/Projeto_Integrador_Outlet/assets/92120359/1d9ada6e-03d7-4069-9035-8ca6e8025e71) <br>
   ![image](https://github.com/eduolmo/Projeto_Integrador_Outlet/assets/92120359/92484391-03f9-41e8-9c6d-3f2a29ecbb9e) <br>
   ![image](https://github.com/eduolmo/Projeto_Integrador_Outlet/assets/92120359/84d7adad-7023-402c-9a75-572f0257976f) <br>


b) ![image](https://github.com/eduolmo/Projeto_Integrador_Outlet/assets/92120359/2c2d8b46-2560-41e7-b4f7-5b98f7ae722d) <br>
   ![image](https://github.com/eduolmo/Projeto_Integrador_Outlet/assets/92120359/037cea64-9b81-4202-a1d1-ac00fba74ef1) <br>


#### 3.3 Validação da Ideia.
a) Link do formulário desenvolvido <br>
https://forms.gle/Pn88dTiVuBodB2ga8 <br>
b) Link para Relatório/Apresentação de resultados obtidos <br>
https://docs.google.com/presentation/d/1wC2UMqXkExZeNRWGvXlknxjqf9vmGyY_2fWgcqEjh94/edit?usp=sharing <br>

### 4.Personas e Histórias de usuário<br>
<img src="https://neilpatel.com/wp-content/uploads/2019/07/exemplo-carlos.png" Personas src="https://neilpatel.com/wp-content/uploads/2019/07/exemplo-carlos.png" width="500" height="500" /> <br>
a) inclusão dos Persons desenvolvidos pelo grupo<br>
<br>
<img src="https://miro.medium.com/max/1400/1*r5GVnOvqpMdxnGUYNRXqbg.png" UserStory src="https://miro.medium.com/max/1400/1*r5GVnOvqpMdxnGUYNRXqbg.png" width="500" height="300" /> <br>
b) inclusão das Histórias de usuário desenvolvidas pelo grupo
<br>


### 5. PROTÓTIPOS DO SISTEMA<br>
Neste ponto a codificação não e necessária, somente as ideias de telas devem ser desenvolvidas. O princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas e/ou descartadas <br>


#### 5.1 PROTÓTIPO DO SISTEMA MOBILE<br>
https://quant-ux.com/#/test.html?h=a2aa10aMOyeiK2Lr10qx5isrrWTqOxg6Y4TpA36sZ3EqDJZtpGTHMoyNVMFS

#### 5.2 PROTÓTIPO DO SISTEMA WEB
https://eduolmo.github.io/outlet-web/html/index.html

#### 5.3 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM OS SISTEMA WEB/MOBILE PROPOSTOS?
    
> A empresa Outlet Express precisa inicialmente dos seguintes relatórios:
* Relatório que informe a quantidade de clientes em cada país
* Relatório que informe qual o tipo de avaria mais comum nos produtos
* Relatório que informe qual a categoria de avaria que é mais comprada
* Relatório que informe quantos clientes temos cadastrados nosso sistema
* Relatório que informe qual país compra mais produtos

### 6.MODELO CONCEITUAL<br>
    
![image](https://github.com/eduolmo/Projeto_Integrador_Outlet/assets/92120359/20afd872-db35-4cf0-b4d5-6e935bcb9a85)

#### 7.Descrição dos dados 
      USUARIO: Tabela que armazena as informações dos usuários
      Atributos: codigo (chave primária), nome, senha e email

      CLIENTE: Tabela que armazena as informações dos clientes
      Atributos: cpf

      EMPRESA: Tabela que armazena as informações das empresas
      Atributos: cnpj

      COMPRA: Tabela que armazena as informações das compras
      Atributos: codigo (chave primária) e forma_pagamento

      PRODUTOS: Tabela que armazena as informações dos produtos
      Atributos: codigo (chave primária), nome, valor, descricao e imagem

      CATEGORIA_PRODUTO: Tabela que armazena as informações das categorias dos produtos
      Atributos: codigo (chave primária) e descricao

      CATEGORIA_AVARIA: Tabela que armazena as informações das categorias das avarias
      Atributos: codigo (chave primária) e descricao

      ENDERECO: Tabela que armazena as informações dos endereços
      Atributos: codigo (chave primária), nome_logradouro, numero e cep

      PAIS: Tabela que armazena as informações dos paises
      Atributos: codigo (chave primária) e nome

      TIPO_LOGRADOURO: Tabela que armazena as informações dos tipos de logradouro
      Atributos: codigo (chave primária) e nome

      ESTADO: Tabela que armazena as informações dos estados
      Atributos: codigo (chave primária) e nome

      CIDADE: Tabela que armazena as informações das cidades
      Atributos: codigo (chave primária) e nome

      BAIRRO: Tabela que armazena as informações dos bairros
      Atributos: codigo (chave primária) e nome

      COMPRA/PRODUTO(Item_compra): Tabela que armazena as informações do item da compra
      Atributos: codigo (chave primária) e quantidade

### 8.RASTREABILIDADE DOS ARTEFATOS<br>
        a) Historia de usuários vs protótipo (Histórias de Usuário e em qual tela do protótipo aquela HU está sendo realizada).
        b) Protótipo vs Modelo conceitual (Histórias de Usuário e em quais tabelas aquele dado está sendo registrado).
        (modelos devem obrigatoriamente estar em conformidade de rastreabilidade)

### 9.MODELO LÓGICO<br>

![image](https://github.com/eduolmo/Projeto_Integrador_Outlet/assets/92120359/eaa8a2af-1949-4345-8304-c39572bcb7ea)

### 10.MODELO FÍSICO<br>
      DROP TABLE IF EXISTS CATEGORIA_PRODUTO,CATEGORIA_AVARIA,PAIS,TIPO_LOGRADOURO,ENDERECO,ESTADO,CIDADE,BAIRRO,USUARIO,EMPRESA,CLIENTE,COMPRA,PRODUTO,ITEM_COMPRA;

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
    
### 11.INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>  
      
      INSERT INTO CATEGORIA_PRODUTO (codigo, descricao) VALUES
      (10, 'Eletrônicos'),
      (20, 'Móveis'),
      (30, 'Roupas'),
      (40, 'Alimentos'),
      (50, 'Beleza');

      INSERT INTO CATEGORIA_AVARIA (codigo, descricao) VALUES
      (11, 'Arranhado'),
      (22, 'Quebrado'),
      (33, 'Faltando peças'),
      (44, 'Problemas elétricos'),
      (55, 'Manchas e sujeira');

      INSERT INTO PAIS (codigo, nome) VALUES 
      (1, 'Brasil'), 
      (2, 'Estados Unidos'), 
      (3, 'Canadá'), 
      (4, 'Austrália'), 
      (5, 'Japão');

      INSERT INTO TIPO_LOGRADOURO (codigo, nome) VALUES 
      (1, 'Rua'), 
      (2, 'Avenida'), 
      (3, 'Alameda'), 
      (4, 'Travessa'), 
      (5, 'Praça');

      INSERT INTO ENDERECO (codigo, nome_logradouro, numero, cep, FK_PAIS_codigo, FK_TIPO_LOGRADOURO_codigo) VALUES 
      (1, 'Rua A', 10, '12345-678', 1, 1), 
      (2, 'Avenida B', 20, '23456-789', 2, 2), 
      (3, 'Alameda C', 30, '34567-890', 3, 3), 
      (4, 'Travessa D', 40, '45678-901', 4, 4), 
      (5, 'Praça E', 50, '56789-012', 5, 5);

      INSERT INTO ESTADO (codigo, nome, FK_PAIS_codigo) VALUES
      (1, 'São Paulo', 1), 
      (2, 'Califórnia', 2), 
      (3, 'Quebec', 3), 
      (4, 'Nova Gales do Sul', 4),
      (5, 'Tóquio', 5);

      INSERT INTO CIDADE (codigo, nome, FK_ESTADO_codigo) VALUES 
      (1, 'São Paulo', 1), 
      (2, 'Los Angeles', 2),
      (3, 'Montreal', 3), 
      (4, 'Sydney', 4),
      (5, 'Tóquio', 5);

      INSERT INTO BAIRRO (codigo, nome, FK_CIDADE_codigo) VALUES 
      (1, 'Vila Olímpia', 1), 
      (2, 'Hollywood', 2), 
      (3, 'Plateau-Mont-Royal', 3), 
      (4, 'Bondi Beach', 4),
      (5, 'Shinjuku', 5);

      INSERT INTO USUARIO (codigo, nome, senha, email) VALUES
      (1, 'João Silva', '123456', 'joao@example.com'),
      (2, 'Maria Santos', 'abcdef', 'maria@example.com'),
      (3, 'Pedro Oliveira', '789456', 'pedro@example.com'),
      (4, 'Ana Costa', 'xyz123', 'ana@example.com'),
      (5, 'Carlos Pereira', 'abc123', 'carlos@example.com'),
      (6, 'Mariana Rodrigues', 'qwe123', 'mariana@example.com'),
      (7, 'Lucas Fernandes', 'pass123', 'lucas@example.com'),
      (8, 'Julia Lima', 'julia123', 'julia@example.com'),
      (9, 'Rafael Souza', 'rafa456', 'rafael@example.com'),
      (10, 'Patricia Santos', 'paty789', 'patricia@example.com');

      INSERT INTO EMPRESA (cnpj, FK_USUARIO_codigo) VALUES
      ('12345678901234', 6),
      ('98765432109876', 7),
      ('45678912304567', 8),
      ('78901234506789', 9),
      ('23456789014567', 10);

      INSERT INTO CLIENTE (cpf, FK_USUARIO_codigo, FK_ENDERECO_codigo) VALUES 
      ('12345678900', 1, 1), 
      ('98765432100', 2, 2), 
      ('65432198700', 3, 3), 
      ('78945612300', 4, 4),
      ('32165498700', 5, 5);

      INSERT INTO COMPRA (forma_pagamento, codigo, FK_CLIENTE_FK_USUARIO_codigo) VALUES
      ('Cartão de crédito', 1, 2),
      ('Boleto bancário', 2, 3),
      ('Pix', 3, 1),
      ('Transferência bancária', 4, 4),
      ('Dinheiro', 5, 5);

      INSERT INTO PRODUTO (codigo, nome, valor, descricao, imagem, FK_EMPRESA_FK_USUARIO_codigo, FK_CATEGORIA_PRODUTO_codigo, FK_CATEGORIA_AVARIA_codigo) VALUES 
      (1, 'Camisa Social Masculina', 89.90, 'Camisa social masculina com botões frontais', 'https://example.com/camisa-social.jpg', 6, 10, 33),
      (2, 'Calça Jeans Feminina', 129.90, 'Calça jeans feminina cintura alta', 'https://example.com/calca-jeans-feminina.jpg', 7, 30, 22),
      (3, 'Tênis Esportivo Masculino', 199.90, 'Tênis esportivo masculino para corrida', 'https://example.com/tenis-esportivo.jpg', 8, 20, 11),
      (4, 'Bolsa Feminina de Couro', 299.90, 'Bolsa feminina de couro com alça ajustável', 'https://example.com/bolsa-de-couro.jpg', 10, 50, 44),
      (5, 'Camiseta Básica Masculina', 39.90, 'Camiseta básica masculina em algodão', 'https://example.com/camiseta-basica.jpg', 9, 40, 55);

      INSERT INTO ITEM_COMPRA (FK_PRODUTO_codigo, FK_COMPRA_codigo, codigo, quantidade) VALUES
      (1, 1, 1, 2),
      (2, 1, 2, 1),
      (3, 2, 3, 3),
      (4, 3, 4, 2),
      (5, 3, 5, 1);

        
 <br> + insert para dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL

#### 12.PRINCIPAIS CONSULTAS DO SISTEMA 
 Inserir as principais consultas (relativas aos 5 principais relatórios) definidas previamente no iten 3.1 deste template.
 <br>
          a) Você deve apresentar as consultas em formato SQL para cad um dos relatórios.
         <br>
          b) Além da consulta deve ser apresentada uma imagem com o resultado obtido para cada consulta.<br>
          
      /* Relatório que informe a quantidade de clientes em cada país */
      select pais.nome, count(cliente.FK_USUARIO_codigo) as clientes from cliente
      inner join endereco
      on(cliente.FK_ENDERECO_codigo = endereco.codigo)
      inner join pais
      on(pais.codigo = endereco.FK_PAIS_codigo)
      group by pais.nome
      order by count(cliente.FK_USUARIO_codigo) desc;
      
![image](https://github.com/eduolmo/Projeto_Integrador_Outlet/assets/91472785/784164e2-63ea-42c5-adc0-63ab79b85fdf)

      /* Relatório que informe qual o tipo de avaria mais comum nos produtos */
      select ca.descricao, count(produto.FK_CATEGORIA_AVARIA_codigo) as produtos from categoria_avaria as ca
      inner join produto
      on(produto.FK_CATEGORIA_AVARIA_codigo = ca.codigo)
      group by ca.descricao;
      
![image](https://github.com/eduolmo/Projeto_Integrador_Outlet/assets/91472785/3bd3c772-e458-48f3-909b-d2c34aed729c)

      /* Relatório que informe qual a categoria de avaria que é mais comprada */
      select ca.descricao, sum(ic.quantidade) as qtd_produtos from categoria_avaria as ca
      inner join produto
      on(ca.codigo = produto.FK_CATEGORIA_AVARIA_codigo)
      inner join item_compra as ic
      on(ic.FK_PRODUTO_codigo = produto.codigo)
      group by ca.descricao
      order by sum(ic.quantidade) desc;
      
![image](https://github.com/eduolmo/Projeto_Integrador_Outlet/assets/91472785/549afc30-eaa9-4850-9984-dfc490a6d964)

      /* Relátorio que informe quantos produtos cada empresa tem no sistema */
      select usuario.nome, count(produto.FK_EMPRESA_FK_USUARIO_codigo) as qtd_produtos from usuario
      inner join empresa
      on(empresa.FK_USUARIO_codigo = usuario.codigo)
      inner join produto
      on(produto.FK_EMPRESA_FK_USUARIO_codigo = empresa.FK_USUARIO_codigo)
      group by usuario.nome
      order by count(produto.FK_EMPRESA_FK_USUARIO_codigo) desc;
      
![image](https://github.com/eduolmo/Projeto_Integrador_Outlet/assets/91472785/cde65985-7bd4-48ed-9209-4d587879716a)

      /* Relatório que informe categoria de produto é mais comprada */
      select cp.descricao, sum(ic.quantidade) from categoria_produto as cp
      inner join produto
      on(cp.codigo = produto.FK_CATEGORIA_PRODUTO_codigo)
      inner join item_compra as ic
      on(ic.FK_PRODUTO_codigo = produto.codigo)
      group by cp.descricao
      order by sum(ic.quantidade) desc;
      
![image](https://github.com/eduolmo/Projeto_Integrador_Outlet/assets/91472785/0e727e21-9d0e-4130-a682-1fc72bd4eb47)


 ### 13.Gráficos, relatórios, integração com Linguagem de programação e outras solicitações.<br>
     OBS: Observe as instruções relacionadas a cada uma das atividades abaixo.<br>
 #### 13.1	Integração com Linguagem de programação; <br>
 #### 13.2	Desenvolvimento de gráficos/relatórios pertinentes, juntamente com demais <br>
 #### solicitações feitas pelo professor. <br>
 
 ### 14.Slides e Apresentação em vídeo. <br>
     OBS: Observe as instruções relacionadas a cada uma das atividades abaixo.<br>
 #### 14.1 Slides; <br>
 #### 14.2 Apresentação em vídeo <br>

    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
   
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/

#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/

### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://sis4.com/brModelo/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")
