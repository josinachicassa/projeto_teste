-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Nov-2021 às 00:01
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `search_farms`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `address`
--

CREATE TABLE `address` (
  `id_address` int(11) NOT NULL,
  `provincy` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  `house` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contacts`
--

CREATE TABLE `contacts` (
  `id_contacts` int(11) NOT NULL,
  `contacts` varchar(50) NOT NULL,
  `date_register` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `id_products` int(11) NOT NULL,
  `nome_products` varchar(50) NOT NULL,
  `qtd_products` varchar(50) NOT NULL,
  `date_harvest` datetime NOT NULL,
  `date_register` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `products_type`
--

CREATE TABLE `products_type` (
  `id_type` int(11) NOT NULL,
  `name_type` varchar(50) NOT NULL,
  `date_register` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `profile`
--

CREATE TABLE `profile` (
  `id_profile` int(11) NOT NULL,
  `name_profile` varchar(50) DEFAULT NULL,
  `date_register` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reason_token`
--

CREATE TABLE `reason_token` (
  `id_reason_token` int(11) NOT NULL,
  `reason_discription` varchar(50) NOT NULL,
  `date_register` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `token_validation`
--

CREATE TABLE `token_validation` (
  `id_validation` int(11) NOT NULL,
  `token_code` varchar(50) NOT NULL,
  `reason_token` varchar(50) NOT NULL,
  `active_token` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_token` datetime NOT NULL,
  `date_register` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `birthy_day` date DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `date_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_pass_reset`
--

CREATE TABLE `user_pass_reset` (
  `id_reset` int(11) NOT NULL,
  `token_reset` varchar(50) DEFAULT NULL,
  `token_expired` varchar(50) DEFAULT NULL,
  `token_date_expire` date DEFAULT NULL,
  `date_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id_address`);

--
-- Índices para tabela `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id_contacts`);

--
-- Índices para tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_products`);

--
-- Índices para tabela `products_type`
--
ALTER TABLE `products_type`
  ADD PRIMARY KEY (`id_type`);

--
-- Índices para tabela `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id_profile`);

--
-- Índices para tabela `reason_token`
--
ALTER TABLE `reason_token`
  ADD PRIMARY KEY (`id_reason_token`);

--
-- Índices para tabela `token_validation`
--
ALTER TABLE `token_validation`
  ADD PRIMARY KEY (`id_validation`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- Índices para tabela `user_pass_reset`
--
ALTER TABLE `user_pass_reset`
  ADD PRIMARY KEY (`id_reset`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
