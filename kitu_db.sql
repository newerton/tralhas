-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 06/10/2017 às 18:16
-- Versão do servidor: 5.7.19-0ubuntu0.17.04.1
-- Versão do PHP: 7.1.10-1+ubuntu17.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `kitu_db`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `email` varchar(155) NOT NULL,
  `password` varchar(32) NOT NULL,
  `img` varchar(155) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `nome` varchar(45) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `comprador`
--

CREATE TABLE `comprador` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `cpf` varchar(45) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `endereco_id` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `comprador_senha_reset`
--

CREATE TABLE `comprador_senha_reset` (
  `id` int(11) NOT NULL,
  `token` varchar(45) NOT NULL,
  `comprador_id` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `endereco`
--

CREATE TABLE `endereco` (
  `id` int(11) NOT NULL,
  `rua` varchar(45) NOT NULL,
  `numero` varchar(45) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `complemento` varchar(45) NOT NULL,
  `city_id` int(11) NOT NULL,
  `uf_id` int(11) NOT NULL,
  `cep` varchar(45) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `entrega_pagamento`
--

CREATE TABLE `entrega_pagamento` (
  `id` int(11) NOT NULL,
  `entrega_id` int(11) NOT NULL,
  `pagamento_id` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `fatura`
--

CREATE TABLE `fatura` (
  `valor` int(11) NOT NULL,
  `referente` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `vencimento` varchar(45) NOT NULL,
  `id` int(11) NOT NULL,
  `id_plano` int(11) NOT NULL,
  `id_parceiro` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `forma_entrega`
--

CREATE TABLE `forma_entrega` (
  `id` int(11) NOT NULL,
  `forma` varchar(45) NOT NULL,
  `value` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `forma_pagamento`
--

CREATE TABLE `forma_pagamento` (
  `id` int(11) NOT NULL,
  `forma` varchar(45) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `horario_funcionomento`
--

CREATE TABLE `horario_funcionomento` (
  `id` int(11) NOT NULL,
  `day` varchar(45) NOT NULL,
  `start` varchar(45) NOT NULL,
  `end` varchar(45) NOT NULL,
  `id_parceiro` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `imgs_product`
--

CREATE TABLE `imgs_product` (
  `id` int(11) NOT NULL,
  `src` varchar(45) NOT NULL,
  `id_product` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `order`
--

CREATE TABLE `order` (
  `numero` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `id_comprador` int(11) NOT NULL,
  `id_pagamento` int(11) NOT NULL,
  `id_entrega` int(11) NOT NULL,
  `id_parceiro` int(11) NOT NULL,
  `status` varchar(45) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `parceiro`
--

CREATE TABLE `parceiro` (
  `username` varchar(16) NOT NULL,
  `email` varchar(155) NOT NULL,
  `password` varchar(32) NOT NULL,
  `cpf` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `raio_entrega` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `endereco_id` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `parceiro_forma_entrega`
--

CREATE TABLE `parceiro_forma_entrega` (
  `id` int(11) NOT NULL,
  `forma_id` int(11) NOT NULL,
  `parceiro_id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `plano`
--

CREATE TABLE `plano` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `valor` int(11) NOT NULL,
  `tempo` int(11) NOT NULL,
  `desconto` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `product`
--

CREATE TABLE `product` (
  `nome` varchar(100) NOT NULL,
  `value` int(11) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_parceiro` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto_ordenado`
--

CREATE TABLE `produto_ordenado` (
  `id` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `nome` varchar(45) NOT NULL,
  `abreviacao` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `user_senha_reset`
--

CREATE TABLE `user_senha_reset` (
  `id` int(11) NOT NULL,
  `token` varchar(45) NOT NULL,
  `parceiro_id` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `user_senha_reset_copy1`
--

CREATE TABLE `user_senha_reset_copy1` (
  `id` int(11) NOT NULL,
  `token` varchar(45) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state_id` (`state_id`);

--
-- Índices de tabela `comprador`
--
ALTER TABLE `comprador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `endereco_id` (`endereco_id`);

--
-- Índices de tabela `comprador_senha_reset`
--
ALTER TABLE `comprador_senha_reset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comprador_id` (`comprador_id`);

--
-- Índices de tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uf_id` (`uf_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Índices de tabela `entrega_pagamento`
--
ALTER TABLE `entrega_pagamento`
  ADD PRIMARY KEY (`id`,`pagamento_id`),
  ADD KEY `pagamento_id` (`pagamento_id`),
  ADD KEY `entrega_id` (`entrega_id`);

--
-- Índices de tabela `fatura`
--
ALTER TABLE `fatura`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_parceiro` (`id_parceiro`),
  ADD KEY `id_plano` (`id_plano`);

--
-- Índices de tabela `forma_entrega`
--
ALTER TABLE `forma_entrega`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `forma_pagamento`
--
ALTER TABLE `forma_pagamento`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `horario_funcionomento`
--
ALTER TABLE `horario_funcionomento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_parceiro` (`id_parceiro`);

--
-- Índices de tabela `imgs_product`
--
ALTER TABLE `imgs_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Índices de tabela `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_parceiro` (`id_parceiro`),
  ADD KEY `id_comprador` (`id_comprador`),
  ADD KEY `id_entrega` (`id_entrega`),
  ADD KEY `id_pagamento` (`id_pagamento`);

--
-- Índices de tabela `parceiro`
--
ALTER TABLE `parceiro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `endereco_id` (`endereco_id`);

--
-- Índices de tabela `parceiro_forma_entrega`
--
ALTER TABLE `parceiro_forma_entrega`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forma_id` (`forma_id`),
  ADD KEY `parceiro_id` (`parceiro_id`);

--
-- Índices de tabela `plano`
--
ALTER TABLE `plano`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_parceiro` (`id_parceiro`),
  ADD KEY `id_category` (`id_category`);

--
-- Índices de tabela `produto_ordenado`
--
ALTER TABLE `produto_ordenado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_order` (`id_order`),
  ADD KEY `id_product` (`id_product`);

--
-- Índices de tabela `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `user_senha_reset`
--
ALTER TABLE `user_senha_reset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parceiro_id` (`parceiro_id`);

--
-- Índices de tabela `user_senha_reset_copy1`
--
ALTER TABLE `user_senha_reset_copy1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `comprador`
--
ALTER TABLE `comprador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `comprador_senha_reset`
--
ALTER TABLE `comprador_senha_reset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `entrega_pagamento`
--
ALTER TABLE `entrega_pagamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `fatura`
--
ALTER TABLE `fatura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `forma_entrega`
--
ALTER TABLE `forma_entrega`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `forma_pagamento`
--
ALTER TABLE `forma_pagamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `horario_funcionomento`
--
ALTER TABLE `horario_funcionomento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `imgs_product`
--
ALTER TABLE `imgs_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `parceiro`
--
ALTER TABLE `parceiro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `parceiro_forma_entrega`
--
ALTER TABLE `parceiro_forma_entrega`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `plano`
--
ALTER TABLE `plano`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `produto_ordenado`
--
ALTER TABLE `produto_ordenado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `user_senha_reset`
--
ALTER TABLE `user_senha_reset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `user_senha_reset_copy1`
--
ALTER TABLE `user_senha_reset_copy1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`);

--
-- Restrições para tabelas `comprador`
--
ALTER TABLE `comprador`
  ADD CONSTRAINT `comprador_ibfk_1` FOREIGN KEY (`endereco_id`) REFERENCES `endereco` (`id`);

--
-- Restrições para tabelas `comprador_senha_reset`
--
ALTER TABLE `comprador_senha_reset`
  ADD CONSTRAINT `comprador_senha_reset_ibfk_1` FOREIGN KEY (`comprador_id`) REFERENCES `comprador` (`id`);

--
-- Restrições para tabelas `endereco`
--
ALTER TABLE `endereco`
  ADD CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`uf_id`) REFERENCES `state` (`id`),
  ADD CONSTRAINT `endereco_ibfk_2` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`);

--
-- Restrições para tabelas `entrega_pagamento`
--
ALTER TABLE `entrega_pagamento`
  ADD CONSTRAINT `entrega_pagamento_ibfk_1` FOREIGN KEY (`pagamento_id`) REFERENCES `forma_pagamento` (`id`),
  ADD CONSTRAINT `entrega_pagamento_ibfk_2` FOREIGN KEY (`entrega_id`) REFERENCES `parceiro_forma_entrega` (`id`);

--
-- Restrições para tabelas `fatura`
--
ALTER TABLE `fatura`
  ADD CONSTRAINT `fatura_ibfk_1` FOREIGN KEY (`id_parceiro`) REFERENCES `parceiro` (`id`),
  ADD CONSTRAINT `fatura_ibfk_2` FOREIGN KEY (`id_plano`) REFERENCES `plano` (`id`);

--
-- Restrições para tabelas `horario_funcionomento`
--
ALTER TABLE `horario_funcionomento`
  ADD CONSTRAINT `horario_funcionomento_ibfk_1` FOREIGN KEY (`id_parceiro`) REFERENCES `parceiro` (`id`);

--
-- Restrições para tabelas `imgs_product`
--
ALTER TABLE `imgs_product`
  ADD CONSTRAINT `imgs_product_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

--
-- Restrições para tabelas `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`id_parceiro`) REFERENCES `parceiro` (`id`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`id_comprador`) REFERENCES `comprador` (`id`),
  ADD CONSTRAINT `order_ibfk_3` FOREIGN KEY (`id_entrega`) REFERENCES `forma_entrega` (`id`),
  ADD CONSTRAINT `order_ibfk_4` FOREIGN KEY (`id_pagamento`) REFERENCES `forma_pagamento` (`id`);

--
-- Restrições para tabelas `parceiro`
--
ALTER TABLE `parceiro`
  ADD CONSTRAINT `parceiro_ibfk_1` FOREIGN KEY (`endereco_id`) REFERENCES `endereco` (`id`);

--
-- Restrições para tabelas `parceiro_forma_entrega`
--
ALTER TABLE `parceiro_forma_entrega`
  ADD CONSTRAINT `parceiro_forma_entrega_ibfk_1` FOREIGN KEY (`forma_id`) REFERENCES `forma_entrega` (`id`),
  ADD CONSTRAINT `parceiro_forma_entrega_ibfk_2` FOREIGN KEY (`parceiro_id`) REFERENCES `parceiro` (`id`);

--
-- Restrições para tabelas `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_parceiro`) REFERENCES `parceiro` (`id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`);

--
-- Restrições para tabelas `produto_ordenado`
--
ALTER TABLE `produto_ordenado`
  ADD CONSTRAINT `produto_ordenado_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `order` (`id`),
  ADD CONSTRAINT `produto_ordenado_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

--
-- Restrições para tabelas `user_senha_reset`
--
ALTER TABLE `user_senha_reset`
  ADD CONSTRAINT `user_senha_reset_ibfk_1` FOREIGN KEY (`parceiro_id`) REFERENCES `parceiro` (`id`);

--
-- Restrições para tabelas `user_senha_reset_copy1`
--
ALTER TABLE `user_senha_reset_copy1`
  ADD CONSTRAINT `user_senha_reset_copy1_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
