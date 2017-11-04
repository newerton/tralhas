-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 03/11/2017 às 17:45
-- Versão do servidor: 5.7.20-0ubuntu0.17.04.1
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
-- Estrutura para tabela `adm_senha_reset`
--

CREATE TABLE `adm_senha_reset` (
  `id` int(11) NOT NULL,
  `token` varchar(45) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `categoria`
--

INSERT INTO `categoria` (`id`, `nome`, `created_at`, `updated_at`) VALUES
(1, 'Salgados', 2010171158, NULL),
(2, 'Doces', 2010171158, NULL),
(3, 'Saladas', 2010171158, NULL),
(4, 'Alimentos', 2010171158, NULL),
(5, 'Fitness', 2010171158, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cidade`
--

CREATE TABLE `cidade` (
  `id` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `cidade` varchar(45) NOT NULL,
  `estado_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `cidade`
--

INSERT INTO `cidade` (`id`, `created_at`, `updated_at`, `cidade`, `estado_id`) VALUES
(2, 1610171104, NULL, 'city', 1),
(3, 1610171112, NULL, 'city', 1),
(4, 1610171114, NULL, 'city', 1),
(5, 1710170136, NULL, 'Londrina', 16),
(6, 1710170136, NULL, 'Blumenau', 24);

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
  `cidade` varchar(11) NOT NULL,
  `estado` varchar(11) NOT NULL,
  `cidade_id` int(11) DEFAULT NULL,
  `uf_id` int(11) DEFAULT NULL,
  `cep` varchar(45) NOT NULL,
  `created_at` bigint(12) NOT NULL,
  `updated_at` int(12) DEFAULT NULL
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

--
-- Fazendo dump de dados para tabela `entrega_pagamento`
--
-- --------------------------------------------------------

--
-- Estrutura para tabela `estado`
--

CREATE TABLE `estado` (
  `id` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `estado` varchar(45) NOT NULL,
  `abreviacao` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `estado`
--

INSERT INTO `estado` (`id`, `created_at`, `updated_at`, `estado`, `abreviacao`) VALUES
(1, 1234, NULL, 'Acre', 'AC'),
(2, 1234, NULL, 'AlagoaS', 'AL'),
(3, 1234, NULL, 'Amapá', 'AP'),
(4, 1234, NULL, 'AmazonaS', 'AM'),
(5, 1234, NULL, 'Bahia', 'BA'),
(6, 1234, NULL, 'Ceará', 'CE'),
(7, 1234, NULL, 'Distrito Federal', 'DF'),
(8, 1234, NULL, 'Espírito Santo', 'ES'),
(9, 1234, NULL, 'GoiáS(1234,', 'GO'),
(10, 1234, NULL, 'Maranhão', 'MA'),
(11, 1234, NULL, 'Mato Grosso', 'MT'),
(12, 1234, NULL, 'Mato Grosso do Sul', 'MS'),
(13, 1234, NULL, 'Minas GeraiS', 'MG'),
(14, 1234, NULL, 'Pará', 'PA'),
(15, 1234, NULL, 'Paraíba', 'PB'),
(16, 1234, NULL, 'Paraná', 'PR'),
(17, 1234, NULL, 'Pernambuco', 'PE'),
(18, 1234, NULL, 'Piauí', 'PI'),
(19, 1234, NULL, 'Rio de Janeiro', 'RJ'),
(20, 1234, NULL, 'Rio Grande do Norte', 'RN'),
(21, 1234, NULL, 'Rio Grande do Sul', 'RS'),
(22, 1234, NULL, 'Rondônia', 'RO'),
(23, 1234, NULL, 'Roraima', 'RR'),
(24, 1234, NULL, 'Santa Catarina', 'SC'),
(25, 1234, NULL, 'São Paulo', 'SP'),
(26, 1234, NULL, 'Sergipe', 'SE'),
(27, 1234, NULL, 'TocantinS', 'TO');

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
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `forma_entrega`
--

INSERT INTO `forma_entrega` (`id`, `forma`, `created_at`, `updated_at`) VALUES
(1, 'Retirada', 1710170914, NULL),
(2, 'Entrega', 1710170914, NULL);

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

--
-- Fazendo dump de dados para tabela `forma_pagamento`
--

INSERT INTO `forma_pagamento` (`id`, `forma`, `created_at`, `updated_at`) VALUES
(1, 'Dinheiro', 1610170445, NULL),
(2, 'Cartão de débito', 1610170445, NULL),
(3, 'Cartão de crédito', 1610170445, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `horario_funcionamento`
--

CREATE TABLE `horario_funcionamento` (
  `id` int(11) NOT NULL,
  `dia` int(1) NOT NULL,
  `inicio` int(2) NOT NULL,
  `final` int(2) NOT NULL,
  `id_parceiro` int(11) DEFAULT NULL,
  `created_at` bigint(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Estrutura para tabela `imgs_produto`
--

CREATE TABLE `imgs_produto` (
  `id` int(11) NOT NULL,
  `img` varchar(100) DEFAULT NULL,
  `pos` int(1) NOT NULL,
  `id_produto` int(11) DEFAULT NULL,
  `created_at` bigint(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Estrutura para tabela `ordem`
--

CREATE TABLE `ordem` (
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
-- Estrutura para tabela `pagamento_entrega_parceiro`
--

CREATE TABLE `pagamento_entrega_parceiro` (
  `id` int(11) NOT NULL,
  `parceiro_id` int(11) NOT NULL,
  `pagamento_id` int(11) NOT NULL,
  `entrega_id` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `pagamento_entrega_parceiro`
--


-- --------------------------------------------------------

--
-- Estrutura para tabela `parceiro`
--

CREATE TABLE `parceiro` (
  `nome` varchar(155) NOT NULL,
  `email` varchar(155) NOT NULL,
  `password` varchar(155) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `img` varchar(100) DEFAULT NULL,
  `raio_entrega` varchar(45) DEFAULT NULL,
  `status` varchar(45) NOT NULL,
  `auth_key` varchar(155) DEFAULT NULL,
  `endereco_id` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(12) DEFAULT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `telefone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `parceiro`
--
-- --------------------------------------------------------
-- --------------------------------------------------------

--
-- Estrutura para tabela `plano`
--

CREATE TABLE `plano` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `valor` float NOT NULL,
  `tempo` int(11) NOT NULL,
  `desconto` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `plano`
--

INSERT INTO `plano` (`id`, `nome`, `valor`, `tempo`, `desconto`, `created_at`, `updated_at`) VALUES
(1, 'mensal', 200.9, 30, 50, 1710170237, NULL),
(2, 'trimestral', 200, 30, 50, 1710170237, NULL),
(3, 'semestral', 200, 30, 50, 1710170237, NULL),
(4, 'anual', 200, 30, 50, 1710170237, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `nome` varchar(100) NOT NULL,
  `value` float NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_parceiro` int(11) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `updated_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto_ordenado`
--

CREATE TABLE `produto_ordenado` (
  `id` int(11) NOT NULL,
  `id_ordem` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto_search`
--

CREATE TABLE `produto_search` (
  `id` int(11) NOT NULL,
  `nome` varchar(155) NOT NULL,
  `description` varchar(155) NOT NULL,
  `value` int(11) NOT NULL,
  `id_parceiro` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `taxa_entrega`
--

CREATE TABLE `taxa_entrega` (
  `id` int(11) NOT NULL,
  `valor` float NOT NULL,
  `id_parceiro` int(11) NOT NULL,
  `created_at` bigint(12) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


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

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `adm_senha_reset`
--
ALTER TABLE `adm_senha_reset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Índices de tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estado_id` (`estado_id`);

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
  ADD KEY `cidade_id` (`cidade_id`);

--
-- Índices de tabela `entrega_pagamento`
--
ALTER TABLE `entrega_pagamento`
  ADD PRIMARY KEY (`id`,`pagamento_id`),
  ADD KEY `pagamento_id` (`pagamento_id`),
  ADD KEY `entrega_id` (`entrega_id`);

--
-- Índices de tabela `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`);

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
-- Índices de tabela `horario_funcionamento`
--
ALTER TABLE `horario_funcionamento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_parceiro` (`id_parceiro`);

--
-- Índices de tabela `imgs_produto`
--
ALTER TABLE `imgs_produto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_produto` (`id_produto`);

--
-- Índices de tabela `ordem`
--
ALTER TABLE `ordem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_parceiro` (`id_parceiro`),
  ADD KEY `id_comprador` (`id_comprador`),
  ADD KEY `id_entrega` (`id_entrega`),
  ADD KEY `id_pagamento` (`id_pagamento`);

--
-- Índices de tabela `pagamento_entrega_parceiro`
--
ALTER TABLE `pagamento_entrega_parceiro`
  ADD PRIMARY KEY (`id`,`pagamento_id`),
  ADD KEY `pagamento_idx` (`pagamento_id`),
  ADD KEY `entrega0_idx` (`entrega_id`),
  ADD KEY `parceiro_idx` (`parceiro_id`);

--
-- Índices de tabela `parceiro`
--
ALTER TABLE `parceiro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `endereco_id` (`endereco_id`);


-- Índices de tabela `plano`
--
ALTER TABLE `plano`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_parceiro` (`id_parceiro`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Índices de tabela `produto_ordenado`
--
ALTER TABLE `produto_ordenado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ordem` (`id_ordem`),
  ADD KEY `id_produto` (`id_produto`);

--
-- Índices de tabela `produto_search`
--
ALTER TABLE `produto_search`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `taxa_entrega`
--
ALTER TABLE `taxa_entrega`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_parceiro` (`id_parceiro`);



--
-- Índices de tabela `user_senha_reset`
--
ALTER TABLE `user_senha_reset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parceiro_id` (`parceiro_id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `adm_senha_reset`
--
ALTER TABLE `adm_senha_reset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela `cidade`
--
ALTER TABLE `cidade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;
--
-- AUTO_INCREMENT de tabela `entrega_pagamento`
--
ALTER TABLE `entrega_pagamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `estado`
--
ALTER TABLE `estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT de tabela `fatura`
--
ALTER TABLE `fatura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `forma_entrega`
--
ALTER TABLE `forma_entrega`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `forma_pagamento`
--
ALTER TABLE `forma_pagamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `horario_funcionamento`
--
ALTER TABLE `horario_funcionamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;
--
-- AUTO_INCREMENT de tabela `imgs_produto`
--
ALTER TABLE `imgs_produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;
--
-- AUTO_INCREMENT de tabela `ordem`
--
ALTER TABLE `ordem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `pagamento_entrega_parceiro`
--
ALTER TABLE `pagamento_entrega_parceiro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT de tabela `parceiro`
--
ALTER TABLE `parceiro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;
--
-- AUTO_INCREMENT de tabela `plano`
--
ALTER TABLE `plano`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
--
-- AUTO_INCREMENT de tabela `produto_ordenado`
--
ALTER TABLE `produto_ordenado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `produto_search`
--
ALTER TABLE `produto_search`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `taxa_entrega`
--
ALTER TABLE `taxa_entrega`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--

-- AUTO_INCREMENT de tabela `user_senha_reset`
--
ALTER TABLE `user_senha_reset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `adm_senha_reset`
--
ALTER TABLE `adm_senha_reset`
  ADD CONSTRAINT `adm_senha_reset_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`);

--
-- Restrições para tabelas `cidade`
--
ALTER TABLE `cidade`
  ADD CONSTRAINT `cidade_ibfk_1` FOREIGN KEY (`estado_id`) REFERENCES `estado` (`id`);

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

-- Restrições para tabelas `endereco`
--
ALTER TABLE `endereco`
  ADD CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`uf_id`) REFERENCES `estado` (`id`),
  ADD CONSTRAINT `endereco_ibfk_2` FOREIGN KEY (`cidade_id`) REFERENCES `cidade` (`id`);

--
--
-- Restrições para tabelas `fatura`
--
ALTER TABLE `fatura`
  ADD CONSTRAINT `fatura_ibfk_1` FOREIGN KEY (`id_parceiro`) REFERENCES `parceiro` (`id`),
  ADD CONSTRAINT `fatura_ibfk_2` FOREIGN KEY (`id_plano`) REFERENCES `plano` (`id`);

--
-- Restrições para tabelas `horario_funcionamento`
--
ALTER TABLE `horario_funcionamento`
  ADD CONSTRAINT `horario_funcionamento_ibfk_1` FOREIGN KEY (`id_parceiro`) REFERENCES `parceiro` (`id`);

--
-- Restrições para tabelas `imgs_produto`
--
ALTER TABLE `imgs_produto`
  ADD CONSTRAINT `imgs_produto_ibfk_1` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id`);

--
-- Restrições para tabelas `ordem`
--
ALTER TABLE `ordem`
  ADD CONSTRAINT `ordem_ibfk_1` FOREIGN KEY (`id_parceiro`) REFERENCES `parceiro` (`id`),
  ADD CONSTRAINT `ordem_ibfk_2` FOREIGN KEY (`id_comprador`) REFERENCES `comprador` (`id`),
  ADD CONSTRAINT `ordem_ibfk_3` FOREIGN KEY (`id_entrega`) REFERENCES `forma_entrega` (`id`),
  ADD CONSTRAINT `ordem_ibfk_4` FOREIGN KEY (`id_pagamento`) REFERENCES `forma_pagamento` (`id`);

--
-- Restrições para tabelas `pagamento_entrega_parceiro`
--
ALTER TABLE `pagamento_entrega_parceiro`
  ADD CONSTRAINT `entrega0` FOREIGN KEY (`entrega_id`) REFERENCES `forma_entrega` (`id`),
  ADD CONSTRAINT `pagamento0` FOREIGN KEY (`pagamento_id`) REFERENCES `forma_pagamento` (`id`),
  ADD CONSTRAINT `parceiro` FOREIGN KEY (`parceiro_id`) REFERENCES `parceiro` (`id`);

--
-- Restrições para tabelas `parceiro`
--
ALTER TABLE `parceiro`
  ADD CONSTRAINT `parceiro_ibfk_1` FOREIGN KEY (`endereco_id`) REFERENCES `endereco` (`id`);

--
-- Restrições para tabelas `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`id_parceiro`) REFERENCES `parceiro` (`id`),
  ADD CONSTRAINT `produto_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`);

--
-- Restrições para tabelas `produto_ordenado`
--
ALTER TABLE `produto_ordenado`
  ADD CONSTRAINT `produto_ordenado_ibfk_1` FOREIGN KEY (`id_ordem`) REFERENCES `ordem` (`id`),
  ADD CONSTRAINT `produto_ordenado_ibfk_2` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id`);

--
-- Restrições para tabelas `user_senha_reset`
--
ALTER TABLE `user_senha_reset`
  ADD CONSTRAINT `user_senha_reset_ibfk_1` FOREIGN KEY (`parceiro_id`) REFERENCES `parceiro` (`id`);


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
