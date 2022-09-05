-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 18-Ago-2022 às 15:10
-- Versão do servidor: 5.6.15-log
-- PHP Version: 5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `barbiemaisatt`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `forum`
--

CREATE TABLE IF NOT EXISTS `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_comment` varchar(500) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `post` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=139 ;

--
-- Extraindo dados da tabela `forum`
--

INSERT INTO `forum` (`id`, `parent_comment`, `nome`, `post`, `date`) VALUES
(132, '130', 'Eng. Vince', 'So, kindly, hurry and sign up', '2021-08-05 10:27:43'),
(131, '130', 'Eng. Vince', 'I will be teaching it here soon.', '2021-08-05 10:27:33'),
(130, '0', 'Eng. Vince', 'Hello, anyone interested in learning cybersecurity ?', '2021-08-05 10:27:07'),
(129, '126', 'Mr Kyalo', 'Technology might fail to be a key driver of development in Africa', '2021-08-03 11:35:25'),
(128, '121', 'Mr Kyalo', 'No, English is spoken in the same measure as French', '2021-08-03 11:34:33'),
(127, '126', 'Mr Kyalo', 'it will definitely become industrialized ', '2021-08-03 11:33:58'),
(126, '0', 'Mr Kyalo', 'What is the future of Africa?\n', '2021-08-03 11:33:28'),
(125, '121', 'Martin', 'Maybe Chinese due to high population in the home nation ', '2021-08-03 11:28:57'),
(124, '104', 'Martin', 'on which subject?', '2021-08-03 11:28:30'),
(123, '116', 'Martin', 'Soon all technical courses will be available', '2021-08-03 11:28:09'),
(122, '121', 'Martin', 'I know there are many international langugaes', '2021-08-03 11:27:27'),
(121, '0', 'Martin', 'Is English the most spoken language on the globe', '2021-08-03 11:26:53'),
(120, '116', 'Martin', 'i just know of cybersecurity ', '2021-07-22 08:32:27'),
(119, '93', 'Martin', 'being new makes it better', '2021-07-22 08:32:01'),
(118, '104', 'Martin', 'get in touch, i can help', '2021-07-22 08:31:40'),
(117, '107', 'Martin', 'try windows 11', '2021-07-22 08:31:17'),
(115, '104', 'Mr Kyalo', 'i can do it for you. can i give you my contact.', '2021-07-22 08:23:22'),
(116, '0', 'Martin', 'What courses can i learn on this platform', '2021-07-22 08:30:58'),
(114, '99', 'Mr Kyalo', 'purchase only from a verified dealer', '2021-07-22 08:22:33'),
(113, '95', 'Mr Kyalo', 'depends with personal prefference', '2021-07-22 08:20:50'),
(112, '93', 'Mr Kyalo', 'its fast', '2021-07-22 08:20:28'),
(111, '104', 'Jack', 'For which subject', '2021-07-21 21:11:58'),
(110, '107', 'John', 'For which computer', '2021-07-21 21:11:25'),
(109, '107', 'Jane', 'I also need windows 11', '2021-07-21 21:10:38'),
(108, '107', 'Jemoh', 'Which one', '2021-07-21 21:09:55'),
(107, '0', 'Martin', 'Kindly help me in OS', '2021-07-19 03:55:00'),
(106, '104', 'Martin', 'or any other topic of your choice', '2021-07-19 03:54:39'),
(105, '104', 'Martin', 'The project title can be fees management system', '2021-07-19 03:54:15'),
(104, '0', 'Martin', 'Who can develop fourth year project for me?', '2021-07-19 03:53:31'),
(103, '99', 'Mr Kyalo', 'of what capacity', '2021-07-09 08:44:14'),
(102, '93', 'Mr Kyalo', 'enhanced security as compared to previous versions.', '2021-07-09 08:43:19'),
(101, '99', 'Martin', 'you can buy it at any computer shop', '2021-07-09 08:27:36'),
(100, '99', 'Mr Kyalo', 'But also the old version its okey', '2021-07-05 19:55:09'),
(99, '0', 'Mr Kyalo', 'I am looking for a external harddisk SSD it will be better', '2021-07-05 19:54:50'),
(98, '95', 'Mr Kyalo', 'also JavaScript its also popular', '2021-07-05 19:54:01'),
(97, '95', 'Mr Kyalo', 'Python is so far the best', '2021-07-05 19:53:35'),
(96, '93', 'Masila', 'By the way it looks like they copy pasted the mac-os', '2021-07-05 19:53:04'),
(95, '0', 'Masila', 'Which is the best programming language?', '2021-07-05 19:52:22'),
(94, '93', 'Mr Kyalo', 'It looks more attractive', '2021-07-05 19:43:18'),
(93, '0', 'Mr Kyalo', 'What are some of the improved features of windows 11?', '2021-07-05 19:42:52'),
(133, '0', 'Anderson', 'To com fome caralho', '2022-08-12 12:13:49'),
(134, '133', 'Vinicius', 'FOda-se', '2022-08-12 12:13:59'),
(135, '', 'Vinicus', 'TO com fome', '2022-08-12 12:14:28'),
(136, '135', 'Anderson', 'FODA-SE', '2022-08-12 12:14:37'),
(137, '', 'cALRIM BROXA', 'asd', '2022-08-12 12:16:12'),
(138, '137', 'Anderson', 'sf', '2022-08-12 12:16:34');

-- --------------------------------------------------------

--
-- Estrutura da tabela `opcoes`
--

CREATE TABLE IF NOT EXISTS `opcoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `opcoes` text COLLATE utf8_unicode_ci NOT NULL,
  `valor` int(15) NOT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=67 ;

--
-- Extraindo dados da tabela `opcoes`
--

INSERT INTO `opcoes` (`id`, `opcoes`, `valor`, `profile_id`) VALUES
(2, 'Rosa', 1, 1),
(3, 'Roxo', 2, 1),
(4, 'Tenho bons argumentos mas não sei expressar.', 1, 2),
(5, 'Fico tímida', 1, 3),
(6, 'Sim, mas não expresso isso.', 1, 4),
(7, 'Como ela me trata, seu jeito de agir e seus princípios', 1, 5),
(8, 'De forma natural tentando evidenciar os melhores pontos da história', 1, 6),
(9, 'Discussão', 1, 7),
(10, 'Busco realizá-los de forma leve', 1, 10),
(25, 'Azul', 3, 1),
(26, 'Preto', 4, 1),
(27, 'Laranja', 5, 1),
(29, 'Evito participar mas quando participo falo a coisa certa.', 2, 2),
(30, 'Não entro na discussão', 3, 2),
(31, 'Tento sempre defender meu ponto de vista', 4, 2),
(32, 'Me exalto e perco a paciência ', 5, 2),
(33, 'Ajo de maneira boba, brincalhona', 2, 3),
(34, 'Tento não demonstrar sentimentos/ emoções', 3, 3),
(35, 'Fico nervosa sem saber como agir. ', 4, 3),
(36, 'Fico ansiosa, esperando algo acontecer', 5, 3),
(37, 'Sim mas me isolo para não entrar em conflito.', 2, 4),
(38, 'Não, é bem difícil me aborrecer', 3, 4),
(39, 'Sim, muito facilmente.', 4, 4),
(40, 'Depende do meu humor', 5, 4),
(41, 'Tento contar mas acabo rindo mais do que contando', 2, 6),
(42, 'Deixando a história cada vez mais engraçada', 3, 6),
(43, 'Geralmente não conto, mas quando conto imagino ela cada vez mais engraçada', 4, 6),
(44, 'Conto rindo muito', 5, 6),
(45, 'Conversar quando estou estressada', 2, 7),
(46, 'Pensar demais', 3, 7),
(47, 'Lidar com problemas que me envolvem', 4, 7),
(48, 'Mentiras', 5, 7),
(49, 'MPB', 1, 8),
(50, 'K - POP', 2, 8),
(51, 'Pop', 3, 8),
(52, 'Rap acústico/ R&B', 4, 8),
(53, 'Funk', 5, 8),
(54, 'Choro', 1, 9),
(55, 'Procuro a melhor forma de realizá-los', 2, 10),
(56, 'Fico irritada, não sei lidar muito bem com a pressão', 2, 9),
(57, 'Mantenho a calma e procuro uma solução definitiva', 3, 9),
(58, 'Ignoro e continuo a vida', 4, 9),
(59, 'Não sei lidar, não penso direito sobre pressão.', 5, 9),
(60, 'Eu simplesmente simpatizo com a pessoa e quando me sinto confortável tento aprofundar o relacionamento', 2, 5),
(61, 'Seu jeito de ver o mundo e sua personalidade', 3, 5),
(62, 'O jeito como ela me trata com personalidade', 4, 5),
(63, 'Atitude e modo de agir', 5, 5),
(64, 'Tento avançar um pouco a cada dia', 3, 10),
(65, 'Corro atrás respeitando meu tempo', 4, 10),
(66, 'Não tenho um objetivo concreto para não me frustrar', 5, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `pergunta` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Extraindo dados da tabela `profile`
--

INSERT INTO `profile` (`id`, `pergunta`) VALUES
(1, 'Qual sua cor favorita?'),
(2, ' Em uma discussão como você age?'),
(3, 'Como você age na frente do crush?'),
(4, 'As pessoas conseguem te aborrercer facilmente?'),
(5, 'Quando conheço uma pessoa nova e ela me interessa, o que mais me chama atenção?'),
(6, 'Quando acontece uma história engraçada, como eu conto?'),
(7, 'De modo geral, você evita ou não gosta de:'),
(8, 'Qual seu estilo musical favorito?'),
(9, 'Como me comporto quando estou sendo pressionado ou cobrado?'),
(10, 'Como você age diante dos seus sonhos?');

-- --------------------------------------------------------

--
-- Estrutura da tabela `resposta`
--

CREATE TABLE IF NOT EXISTS `resposta` (
  `usuario_id` int(20) NOT NULL,
  `pergunta_1` int(20) NOT NULL,
  `pergunta_2` int(10) NOT NULL,
  `pergunta_3` int(10) NOT NULL,
  `pergunta_4` int(10) NOT NULL,
  `pergunta_5` int(10) NOT NULL,
  `pergunta_6` int(10) NOT NULL,
  `pergunta_7` int(10) NOT NULL,
  `pergunta_8` int(10) NOT NULL,
  `pergunta_9` int(10) NOT NULL,
  `pergunta_10` int(10) NOT NULL,
  PRIMARY KEY (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `resposta`
--

INSERT INTO `resposta` (`usuario_id`, `pergunta_1`, `pergunta_2`, `pergunta_3`, `pergunta_4`, `pergunta_5`, `pergunta_6`, `pergunta_7`, `pergunta_8`, `pergunta_9`, `pergunta_10`) VALUES
(1, 3, 5, 1, 4, 0, 2, 1, 3, 3, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `resultado`
--

CREATE TABLE IF NOT EXISTS `resultado` (
  `Id` int(20) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(20) NOT NULL,
  `Tipo` varchar(20) NOT NULL,
  `Data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Extraindo dados da tabela `resultado`
--

INSERT INTO `resultado` (`Id`, `Nome`, `Tipo`, `Data`) VALUES
(1, 'jujubad', 'fashionista', '2022-08-17 12:14:09'),
(2, 'bela', 'pop star', '2022-08-18 12:23:14'),
(3, 'lulu', 'mariposa', '2022-08-18 12:24:14'),
(4, 'teste', 'escola de princesas', '2022-08-18 12:24:57'),
(20, 'Ste', 'escola de princesas', '2022-08-18 12:25:27'),
(31, 'João Lucas', 'mosqueteira', '2022-08-18 12:40:29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) CHARACTER SET latin1 NOT NULL,
  `Email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `Senha` varchar(60) CHARACTER SET latin1 NOT NULL,
  `Acesso` varchar(50) CHARACTER SET latin1 NOT NULL,
  `Status` varchar(20) CHARACTER SET latin1 NOT NULL,
  `validador` int(20) NOT NULL,
  `Data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=33 ;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`Id`, `Nome`, `Email`, `Senha`, `Acesso`, `Status`, `validador`, `Data`) VALUES
(1, 'jujubad', 'www@www', '123', 'Admin', 'ativo', 0, '2022-08-17 03:00:00'),
(2, 'bela', 'bela@iserj', 'Bela1704*', 'Comum', 'ativo', 0, '2022-08-17 12:08:05'),
(3, 'lulu', 'lulu@iserj', 'Lulu3004*', 'Comum', 'ativo', 0, '2022-08-17 12:08:05'),
(4, 'teste', 'teste@gmail.com', 'Lt123#3gt', 'Comum', 'ativo ', 0, '2022-08-17 12:08:05'),
(5, 'aaa', 'aa@aa', 'Lulu1234', 'Comum', 'inativo', 0, '2022-08-17 12:08:05'),
(20, 'Ste', 'tete@tete', 'Tete1312.', 'Comum', 'ativo', 0, '2022-08-17 12:08:05'),
(28, 'Luisa', 'luisa@lulu', '$2y$10$GiH.a4T65EA/TsF8.f4Ur.oCXRnqX2uCQjhrOZwnz.ovpoOLAPIzy', 'Comum', 'ativo', 0, '2022-08-17 12:08:05'),
(29, 'isa', 'isa@isa', '$2y$10$jjlVL6OHqzyvYry.rgdqW.HvRuRiX0eiu1b1blivLlGF6Kr8m4pLS', 'Comum', 'ativo', 0, '2022-08-17 12:08:05'),
(31, 'Joao Lucas', 'joao@carro', 'JoaoLucas27*', 'Comum', 'ativo', 0, '2022-08-17 12:08:05'),
(32, 'isa', '', '$2y$10$7Tw1eMg/axC78j3Na4HVyekWC6Qv.VgBhsLxTTlk.YdJdF0d./GFa', 'Comum', 'ativo', 0, '2022-08-17 12:08:05');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
