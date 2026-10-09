-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26/06/2026 às 17:11
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_escola`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `bairro`
--

DROP TABLE IF EXISTS `bairro`;
CREATE TABLE `bairro` (
  `ID_Bairro` int(10) NOT NULL,
  `Nome_Bairro` varchar(60) DEFAULT NULL,
  `ID_Cidade` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `boletins`
--

DROP TABLE IF EXISTS `boletins`;
CREATE TABLE `boletins` (
  `ID_Boletins` int(10) NOT NULL,
  `Media_Final` decimal(4,0) DEFAULT NULL,
  `Situação_Final` varchar(20) DEFAULT NULL,
  `ID_Nota` int(10) DEFAULT NULL,
  `ID_Frequencia` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `casa`
--

DROP TABLE IF EXISTS `casa`;
CREATE TABLE `casa` (
  `ID_Casa` int(10) NOT NULL,
  `Numero_Casa` int(20) DEFAULT NULL,
  `ID_Rua` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cidade`
--

DROP TABLE IF EXISTS `cidade`;
CREATE TABLE `cidade` (
  `ID_Cidade` int(10) NOT NULL,
  `Nome_Cidade` varchar(60) DEFAULT NULL,
  `ID_Estado` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `endereço`
--

DROP TABLE IF EXISTS `endereço`;
CREATE TABLE `endereço` (
  `ID_Endreço` int(10) NOT NULL,
  `ID_Casa` int(10) DEFAULT NULL,
  `ID_Rua` int(10) DEFAULT NULL,
  `ID_Bairro` int(10) DEFAULT NULL,
  `ID_Cidade` int(10) DEFAULT NULL,
  `ID_Estado` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `estado`
--

DROP TABLE IF EXISTS `estado`;
CREATE TABLE `estado` (
  `ID_Estado` int(10) NOT NULL,
  `Nome_Estado` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `frequência_escolar`
--

DROP TABLE IF EXISTS `frequência_escolar`;
CREATE TABLE `frequência_escolar` (
  `ID_Frequencia` int(10) NOT NULL,
  `Frequencia` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `notas_dos_alunos`
--

DROP TABLE IF EXISTS `notas_dos_alunos`;
CREATE TABLE `notas_dos_alunos` (
  `ID_Nota` int(10) NOT NULL,
  `Nota` decimal(4,0) DEFAULT NULL,
  `ID_Frequencia` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `rua`
--

DROP TABLE IF EXISTS `rua`;
CREATE TABLE `rua` (
  `ID_Rua` int(10) NOT NULL,
  `Nome_Rua` varchar(50) DEFAULT NULL,
  `ID_Bairro` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `bairro`
--
ALTER TABLE `bairro`
  ADD PRIMARY KEY (`ID_Bairro`);

--
-- Índices de tabela `boletins`
--
ALTER TABLE `boletins`
  ADD PRIMARY KEY (`ID_Boletins`);

--
-- Índices de tabela `casa`
--
ALTER TABLE `casa`
  ADD PRIMARY KEY (`ID_Casa`);

--
-- Índices de tabela `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`ID_Cidade`);

--
-- Índices de tabela `endereço`
--
ALTER TABLE `endereço`
  ADD PRIMARY KEY (`ID_Endreço`);

--
-- Índices de tabela `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`ID_Estado`);

--
-- Índices de tabela `frequência_escolar`
--
ALTER TABLE `frequência_escolar`
  ADD PRIMARY KEY (`ID_Frequencia`);

--
-- Índices de tabela `notas_dos_alunos`
--
ALTER TABLE `notas_dos_alunos`
  ADD PRIMARY KEY (`ID_Nota`);

--
-- Índices de tabela `rua`
--
ALTER TABLE `rua`
  ADD PRIMARY KEY (`ID_Rua`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
