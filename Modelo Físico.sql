-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 20-Out-2023 às 17:49
-- Versão do servidor: 8.1.0
-- versão do PHP: 7.4.3-4ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `outletexpress`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `BAIRRO`
--

CREATE TABLE `BAIRRO` (
  `codigo` int NOT NULL,
  `nome` varchar(255) NOT NULL,
  `codigo_cidade` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `CATEGORIA_AVARIA`
--

CREATE TABLE `CATEGORIA_AVARIA` (
  `codigo` int NOT NULL,
  `descricao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `CATEGORIA_PRODUTO`
--

CREATE TABLE `CATEGORIA_PRODUTO` (
  `codigo` int NOT NULL,
  `descricao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `CIDADE`
--

CREATE TABLE `CIDADE` (
  `codigo` int NOT NULL,
  `nome` varchar(255) NOT NULL,
  `codigo_estado` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `CLIENTE`
--

CREATE TABLE `CLIENTE` (
  `cpf` varchar(100) NOT NULL,
  `codigo_usuario` int NOT NULL,
  `codigo_endereco` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `COMENTARIO`
--

CREATE TABLE `COMENTARIO` (
  `codigo` int NOT NULL,
  `conteudo` varchar(255) NOT NULL,
  `avaliacao` float NOT NULL,
  `codigo_produto` int NOT NULL,
  `codigo_usuario_cliente` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `COMPRA`
--

CREATE TABLE `COMPRA` (
  `codigo` int NOT NULL,
  `forma_pagamento` varchar(50) NOT NULL,
  `data` datetime NOT NULL,
  `codigo_usuario_cliente` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `EMPRESA`
--

CREATE TABLE `EMPRESA` (
  `cnpj` varchar(100) NOT NULL,
  `link` varchar(255) NOT NULL,
  `codigo_usuario` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ENDERECO`
--

CREATE TABLE `ENDERECO` (
  `codigo` int NOT NULL,
  `nome_logradouro` varchar(255) NOT NULL,
  `numero` int NOT NULL,
  `cep` varchar(15) NOT NULL,
  `codigo_pais` int NOT NULL,
  `codigo_tipo_logradouro` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ESTADO`
--

CREATE TABLE `ESTADO` (
  `codigo` int NOT NULL,
  `nome` varchar(255) NOT NULL,
  `codigo_pais` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ITEM_COMPRA`
--

CREATE TABLE `ITEM_COMPRA` (
  `codigo` int NOT NULL,
  `quantidade` int NOT NULL,
  `valor_item` float NOT NULL,
  `codigo_produto` int NOT NULL,
  `codigo_compra` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `PAIS`
--

CREATE TABLE `PAIS` (
  `codigo` int NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `PRODUTO`
--

CREATE TABLE `PRODUTO` (
  `codigo` int NOT NULL,
  `desconto` float NOT NULL,
  `avaliacao` float NOT NULL,
  `nome` varchar(100) NOT NULL,
  `valor_atual` float NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `codigo_categoria_produto` int NOT NULL,
  `codigo_avaria_produto` int NOT NULL,
  `codigo_usuario_empresa` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `TIPO_LOGRADOURO`
--

CREATE TABLE `TIPO_LOGRADOURO` (
  `codigo` int NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `USUARIO`
--

CREATE TABLE `USUARIO` (
  `codigo` int NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `imagem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `BAIRRO`
--
ALTER TABLE `BAIRRO`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices para tabela `CATEGORIA_AVARIA`
--
ALTER TABLE `CATEGORIA_AVARIA`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices para tabela `CATEGORIA_PRODUTO`
--
ALTER TABLE `CATEGORIA_PRODUTO`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices para tabela `CIDADE`
--
ALTER TABLE `CIDADE`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `FK_ESTADO_codigo` (`codigo_estado`);

--
-- Índices para tabela `CLIENTE`
--
ALTER TABLE `CLIENTE`
  ADD PRIMARY KEY (`codigo_usuario`);

--
-- Índices para tabela `COMENTARIO`
--
ALTER TABLE `COMENTARIO`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `FK_CLIENTE_FK_USUARIO_codigocom` (`codigo_usuario_cliente`),
  ADD KEY `FK_PRODUTO_codigocoment` (`codigo_produto`);

--
-- Índices para tabela `COMPRA`
--
ALTER TABLE `COMPRA`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `FK_CLIENTE_FK_USUARIO_codigocomp` (`codigo_usuario_cliente`);

--
-- Índices para tabela `EMPRESA`
--
ALTER TABLE `EMPRESA`
  ADD PRIMARY KEY (`codigo_usuario`);

--
-- Índices para tabela `ENDERECO`
--
ALTER TABLE `ENDERECO`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `FK_PAIS_codigoend` (`codigo_pais`),
  ADD KEY `FK_TIPO_LOGRADOURO_codigoend` (`codigo_tipo_logradouro`);

--
-- Índices para tabela `ESTADO`
--
ALTER TABLE `ESTADO`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `FK_PAIS_codigo` (`codigo_pais`);

--
-- Índices para tabela `ITEM_COMPRA`
--
ALTER TABLE `ITEM_COMPRA`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `FK_PRODUTO_codigoitcomp` (`codigo_produto`),
  ADD KEY `FK_COMPRA_codigoitcomp` (`codigo_compra`);

--
-- Índices para tabela `PAIS`
--
ALTER TABLE `PAIS`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices para tabela `PRODUTO`
--
ALTER TABLE `PRODUTO`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `FK_CATEGORIA_PRODUTO_codigoprod` (`codigo_categoria_produto`),
  ADD KEY `FK_CATEGORIA_AVARIA_codigoprod` (`codigo_avaria_produto`),
  ADD KEY `FK_EMPRESA_FK_USUARIO_codigoprod` (`codigo_usuario_empresa`);

--
-- Índices para tabela `TIPO_LOGRADOURO`
--
ALTER TABLE `TIPO_LOGRADOURO`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices para tabela `USUARIO`
--
ALTER TABLE `USUARIO`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `BAIRRO`
--
ALTER TABLE `BAIRRO`
  MODIFY `codigo` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `CATEGORIA_AVARIA`
--
ALTER TABLE `CATEGORIA_AVARIA`
  MODIFY `codigo` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `CATEGORIA_PRODUTO`
--
ALTER TABLE `CATEGORIA_PRODUTO`
  MODIFY `codigo` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `CIDADE`
--
ALTER TABLE `CIDADE`
  MODIFY `codigo` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `COMENTARIO`
--
ALTER TABLE `COMENTARIO`
  MODIFY `codigo` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `COMPRA`
--
ALTER TABLE `COMPRA`
  MODIFY `codigo` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `ENDERECO`
--
ALTER TABLE `ENDERECO`
  MODIFY `codigo` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `ESTADO`
--
ALTER TABLE `ESTADO`
  MODIFY `codigo` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `ITEM_COMPRA`
--
ALTER TABLE `ITEM_COMPRA`
  MODIFY `codigo` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `PAIS`
--
ALTER TABLE `PAIS`
  MODIFY `codigo` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `PRODUTO`
--
ALTER TABLE `PRODUTO`
  MODIFY `codigo` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `TIPO_LOGRADOURO`
--
ALTER TABLE `TIPO_LOGRADOURO`
  MODIFY `codigo` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `USUARIO`
--
ALTER TABLE `USUARIO`
  MODIFY `codigo` int NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `CIDADE`
--
ALTER TABLE `CIDADE`
  ADD CONSTRAINT `FK_ESTADO_codigo` FOREIGN KEY (`codigo_estado`) REFERENCES `ESTADO` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `CLIENTE`
--
ALTER TABLE `CLIENTE`
  ADD CONSTRAINT `FK_USUARIO_codigocli` FOREIGN KEY (`codigo_usuario`) REFERENCES `USUARIO` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `COMENTARIO`
--
ALTER TABLE `COMENTARIO`
  ADD CONSTRAINT `FK_CLIENTE_FK_USUARIO_codigocom` FOREIGN KEY (`codigo_usuario_cliente`) REFERENCES `CLIENTE` (`codigo_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRODUTO_codigocoment` FOREIGN KEY (`codigo_produto`) REFERENCES `PRODUTO` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `COMPRA`
--
ALTER TABLE `COMPRA`
  ADD CONSTRAINT `FK_CLIENTE_FK_USUARIO_codigocomp` FOREIGN KEY (`codigo_usuario_cliente`) REFERENCES `CLIENTE` (`codigo_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `EMPRESA`
--
ALTER TABLE `EMPRESA`
  ADD CONSTRAINT `FK_USUARIO_codigoemp` FOREIGN KEY (`codigo_usuario`) REFERENCES `USUARIO` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `ENDERECO`
--
ALTER TABLE `ENDERECO`
  ADD CONSTRAINT `FK_PAIS_codigoend` FOREIGN KEY (`codigo_pais`) REFERENCES `PAIS` (`codigo`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_TIPO_LOGRADOURO_codigoend` FOREIGN KEY (`codigo_tipo_logradouro`) REFERENCES `TIPO_LOGRADOURO` (`codigo`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Limitadores para a tabela `ESTADO`
--
ALTER TABLE `ESTADO`
  ADD CONSTRAINT `FK_PAIS_codigo` FOREIGN KEY (`codigo_pais`) REFERENCES `PAIS` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `ITEM_COMPRA`
--
ALTER TABLE `ITEM_COMPRA`
  ADD CONSTRAINT `FK_COMPRA_codigoitcomp` FOREIGN KEY (`codigo_compra`) REFERENCES `COMPRA` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRODUTO_codigoitcomp` FOREIGN KEY (`codigo_produto`) REFERENCES `PRODUTO` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `PRODUTO`
--
ALTER TABLE `PRODUTO`
  ADD CONSTRAINT `FK_CATEGORIA_AVARIA_codigoprod` FOREIGN KEY (`codigo_avaria_produto`) REFERENCES `CATEGORIA_AVARIA` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATEGORIA_PRODUTO_codigoprod` FOREIGN KEY (`codigo_categoria_produto`) REFERENCES `CATEGORIA_PRODUTO` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EMPRESA_FK_USUARIO_codigoprod` FOREIGN KEY (`codigo_usuario_empresa`) REFERENCES `EMPRESA` (`codigo_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
