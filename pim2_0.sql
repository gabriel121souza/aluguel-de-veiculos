-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 04-Nov-2019 às 13:58
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pim2.0`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2019-10-23 23:13:09'),
(2, 'gabriel', 'gabriel', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(1, 'test@gmail.com', 2, '22/06/2017', '25/06/2017', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 2, '2017-06-19 20:15:43'),
(2, 'test@gmail.com', 3, '30/06/2017', '02/07/2017', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 2, '2017-06-26 20:15:43'),
(3, 'test@gmail.com', 4, '02/07/2017', '07/07/2017', 'Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ', 2, '2017-06-26 21:10:06'),
(4, 'gabriel121souza@gmail.com', 4, '23/10/2019', '26/10/2019', 'quero alugar o carro', 1, '2019-10-23 22:19:53'),
(5, 'gabriel121souza@gmail.com', 1, '23/10/2019', '28/10/2019', 'ola gostaria de alugar o carro', 0, '2019-10-23 23:11:51'),
(6, 'gabriel121souza@gmail.com', 1, '30/10/2019', '05/11/2019', 'Quero alugar via mobile', 0, '2019-10-28 01:11:16'),
(7, 'lucas@gmail.com', 1, '23/10/2019', '15/10/2019', 'test para pim\r\n', 1, '2019-10-28 10:20:56'),
(8, 'lucas@gmail.com', 5, '23/10/2019', '26/10/2019', 'buubuubbb', 1, '2019-10-28 10:33:08'),
(9, 'gabriel121souza@gmail.com', 1, '25/05/2020', '25/06/2020', 'Quero alugar', 0, '2019-10-28 11:31:41');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Chevrolet', '2017-06-18 16:24:34', '2019-10-27 10:30:15'),
(2, 'FIAT', '2017-06-18 16:24:50', '2019-10-27 09:59:12'),
(3, 'hyundai', '2017-06-18 16:25:03', '2019-10-27 10:30:51'),
(4, 'VW', '2017-06-18 16:25:13', '2019-10-27 10:29:32'),
(5, 'Honda', '2017-06-18 16:25:24', '2019-10-27 10:31:57'),
(7, 'JEEP', '2017-06-19 06:22:13', '2019-10-27 10:32:05');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Unip', 'unip.Pim@gmail.com', '8585233222');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `service` varchar(50) NOT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `vehicle` varchar(250) NOT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  `price` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `service`, `EmailId`, `vehicle`, `ContactNumber`, `Message`, `PostingDate`, `status`, `price`) VALUES
(8, 'gabriel', 'Manutencao corretiva', 'gabriel121souza@hotmail.com', 'Civic', '61373737', 'carro quebrado', '2019-10-30 21:31:51', NULL, '0'),
(9, 'gabriel', 'Manutencao corretiva', 'gabriel121souza@hotmail.com', 'Civic', '61373737', 'carro quebrado', '2019-10-30 21:39:16', NULL, '0'),
(10, 'gabriel de souza', 'Manutencao corretiva', 'gabriel121souza@gmail.com', 'Civic', '61373737', 'hhfrhdhdhhd', '2019-10-30 21:45:34', NULL, '3221'),
(11, 'gabriel de souza', 'Manutencao corretiva', 'gabriel121souza@gmail.com', 'Civic', '61373737', 'hhfrhdhdhhd', '2019-10-30 21:49:39', NULL, '3221'),
(12, 'Caio Albuquerque', 'Abastecimento', 'caio@gmail.com', 'Civic', '23447722', 'Quero abastece por que vou em Anápolis amanhã às 13hrs', '2019-11-04 12:33:44', NULL, '100');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'termos e condicoes', 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <A href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</A>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>'),
(2, 'Politica de Privacidade', 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'Sobre ', 'aboutus', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(11, 'FAQs', 'faqs', '																														<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address------Test &nbsp; &nbsp;dsfdsfds</span>');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'test@gmail.com', 'Test Test', '2017-06-18 07:44:31', 1),
(2, 'test@gmail.com', '\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam nibh. Nunc varius facilis', '2017-06-18 07:46:05', 0),
(3, 'lucas@gmail.com', 'estou muito satisfeito com o servicos', '2019-10-28 11:23:08', 1),
(4, 'lucas@gmail.com', 'quero alugar para meus filhos nas ferias', '2019-10-28 11:24:13', 1),
(5, 'lucas@gmail.com', 'quero alugar para meus filhos nas ferias', '2019-10-28 11:25:16', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(1, 'Anuj Kumar', 'demo@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2147483647', NULL, NULL, NULL, NULL, '2017-06-17 19:59:27', '2017-06-26 21:02:58'),
(2, 'AK', 'anuj@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '8285703354', NULL, NULL, NULL, NULL, '2017-06-17 20:00:49', '2017-06-26 21:03:09'),
(3, 'Anuj Kumar', 'webhostingamigo@gmail.com', 'f09df7868d52e12bba658982dbd79821', '09999857868', '03/02/1990', 'New Delhi', 'New Delhi', 'New Delhi', '2017-06-17 20:01:43', '2017-06-17 21:07:41'),
(4, 'Anuj Kumar', 'test@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '9999857868', '', 'New Delhi', 'Delhi', 'Delhi', '2017-06-17 20:03:36', '2017-06-26 19:18:14'),
(5, 'gabriel de souza', 'gabriel121souza@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '6193581926', NULL, NULL, NULL, NULL, '2019-10-23 22:16:23', NULL),
(6, 'lucas', 'lucas@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '777777222', NULL, NULL, NULL, NULL, '2019-10-28 10:19:31', NULL),
(7, 'Caio Albuquerque', 'caio@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '6193581926', '', '', '', '', '2019-11-04 12:31:06', '2019-11-04 12:32:07');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'Grand Siena', 2, 'O Siena foi a versão sedã do Fiat Palio. Fabricado pela Fiat no Brasil, Argentina, Índia, Turquia, México, África do Sul, China e Vietnã, além de ser produzido sob licença em Nampo, Coreia do Norte, com o nome de Pyonghwa Hwiparam. O modelo é vendido como Dodge Forza na Venezuela. Em outubro de 2016, a primeira geração Siena foi descontinuada, passando a oferecer como sedan a sua segunda geração, que ganhou motor 1.0 8V Fire EVO Flex.', 150, 'FLEX', 2018, 5, 'siena01.jpg', 'siena02.jpg', 'siena03.jpg', 'siena04.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-19 11:46:23', '2019-10-27 10:06:36'),
(2, 'Palio', 2, 'Palio Fire, depois de 20 anos de mercado teve a produção encerrada em janeiro de 2017, disponível apenas como carro de frota para empresas com o motor 1.0 8v na carroceria 4p.\r\nNovo Palio ganha na painel igual ao do Grand Siena;\r\nAnuncio do Fiat Argo leva inicialmente a descontinuação das versões Attractive 1.4, Essence 1.6 16V, Essence Dualogic 1.6 16V e Sporting 1.6 16V, Sporting Dualogic 1.6 16V;\r\nFim de linha na Argentina para Palio Fire e Novo Palio em favor do Fiat Argo;', 100, 'FLEX', 2017, 5, 'palio01.jpg', 'palio02.jpg', 'palio03.jpg', 'palio04.jpg', '', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, '2017-06-19 16:16:17', '2019-10-27 10:10:21'),
(3, 'Voyage', 4, 'O Voyage é um sedan compacto da Volkswagen baseado no Gol. Foi lançado em 1981 e saiu de linha em 1995, já como modelo 1996, sendo substituído pelo Polo Classic somente em 1997. Eleito pela Revista Autoesporte o Carro do Ano de 1982', 150, 'FLEX', 2018, 5, 'voyage01.jpg', 'voyage02.jpg', 'voyage03.jpg', 'voyage04.jpg', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, NULL, '2017-06-19 16:18:20', '2019-10-27 10:13:46'),
(4, 'Onix', 1, 'O Onix é um automóvel hatchback e nothback, produzido pela Chevrolet; desenvolvido e fabricado pela General Motors do Brasil. Em 2013, foi apresentado no salão de São Paulo, sendo uma das atrações da Chevrolet. Lançado com a missão de substituir o Corsa e o Celta,', 200, 'FLEX', 2019, 5, 'onix01.jpg', 'onix02.jpg', 'onix03.jpg', 'onix04.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, '2017-06-19 16:18:43', '2019-10-27 10:25:16'),
(5, 'Saveiro', 4, 'No início dos anos 80 a família Gol já possuía um relativo sucesso mas faltava algo, sendo que a Fiat e Ford já tinham suas respectivas pick-ups \"Fiorino\" e \"Pampa\", e a Volkswagen vendo esta necessidade, após o árduo desenvolvimento era lançada em setembro de 1982 a Saveiro.', 170, 'Gasolina', 2016, 2, 'saveiro01.jpg', 'saveiro02.jpg', 'saveiro03.jpg', NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-20 17:57:09', '2019-10-27 10:28:37'),
(6, 'Civic', 3, 'O Honda Civic é um automóvel produzido pela Honda desde 1973. Atualmente encontra-se em sua décima geração.\r\n\r\nComeçou a ser importado para o Brasil em 1992 junto com o Honda Accord, sendo nacionalizado em 1997. Produzido na unidade da Honda localizada em Sumaré, no estado de São Paulo, foi o sedan médio mais vendido do Brasil no 1° semestre de 2008, superando modelos concorrentes.', 500, 'CNG', 2019, 5, 'civic01.jpg', 'civic02.jpg', 'civic03.jpg', 'civic04.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2019-10-27 10:43:07', NULL),
(7, 'Compass', 7, 'O Jeep Compass é um utilitário esportivo médio da Jeep.\r\n\r\nFoi um dos primeiros modelos de automóvel do Grupo Chrysler a oferecer versões com transmissão continuamente variável (Câmbio CVT) fabricada pela Jatco', 700, 'Diesel', 2019, 7, 'compass01.jpg', 'compass02.jpg', 'compass01.jpg', 'compass04.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2019-10-27 10:49:13', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
