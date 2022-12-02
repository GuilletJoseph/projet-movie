-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 02 déc. 2022 à 12:43
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `project-movies`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteur`
--

CREATE TABLE `acteur` (
  `id` bigint(20) NOT NULL,
  `height` varchar(255) DEFAULT NULL,
  `id_imdb` varchar(255) DEFAULT NULL,
  `identite` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `naissance_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `acteur`
--

INSERT INTO `acteur` (`id`, `height`, `id_imdb`, `identite`, `url`, `naissance_id`) VALUES
(1, NULL, 'nm1231899', 'Priyanka Chopra Jonas', '/name/nm1231899/?ref_=tt_ov_st', 1),
(2, NULL, 'nm0695435', 'Chris Pratt', '/name/nm0695435/?ref_=tt_ov_st', 2),
(3, NULL, 'nm1231899', 'Priyanka Chopra Jonas', '/name/nm1231899?ref_=tt_cl_t_2', 3),
(4, NULL, 'nm0695435', 'Chris Pratt', '/name/nm0695435?ref_=tt_cl_t_1', 4),
(5, NULL, 'nm0695435', 'Chris Pratt', '/name/nm0695435/?ref_=tt_ov_st', 5),
(6, NULL, 'nm5611121', 'Millie Bobby Brown', '/name/nm5611121/?ref_=tt_ov_st', 6),
(7, NULL, 'nm0695435', 'Chris Pratt', '/name/nm0695435?ref_=tt_cl_t_2', 7),
(8, NULL, 'nm5611121', 'Millie Bobby Brown', '/name/nm5611121?ref_=tt_cl_t_1', 8),
(9, NULL, 'nm0000168', 'Samuel L. Jackson', '/name/nm0000168/?ref_=tt_ov_st', 9),
(10, NULL, 'nm0695435', 'Chris Pratt', '/name/nm0695435/?ref_=tt_ov_st', 10),
(11, NULL, 'nm0695435', 'Chris Pratt', '/name/nm0695435?ref_=tt_cl_t_1', 11),
(12, NULL, 'nm0000168', 'Samuel L. Jackson', '/name/nm0000168?ref_=tt_cl_t_2', 12),
(13, NULL, 'nm0757855', 'Zoe Saldana', '/name/nm0757855/?ref_=tt_ov_st', 13),
(14, NULL, 'nm0695435', 'Chris Pratt', '/name/nm0695435/?ref_=tt_ov_st', 14),
(15, NULL, 'nm1176985', 'Dave Bautista', '/name/nm1176985/?ref_=tt_ov_st', 15),
(16, NULL, 'nm7210025', 'Maria Bakalova', '/name/nm7210025?ref_=tt_cl_t_14', 16),
(17, NULL, 'nm8883627', 'Reinaldo Faberlle', '/name/nm8883627?ref_=tt_cl_t_17', 17),
(18, NULL, 'nm1030244', 'Chukwudi Iwuji', '/name/nm1030244?ref_=tt_cl_t_13', 18),
(19, NULL, 'nm0002888', 'Stephen Blackehart', '/name/nm0002888?ref_=tt_cl_t_16', 19),
(20, NULL, 'nm2401020', 'Will Poulter', '/name/nm2401020?ref_=tt_cl_t_6', 20),
(21, NULL, 'nm4456672', 'Nico Santos', '/name/nm4456672?ref_=tt_cl_t_15', 21),
(22, NULL, 'nm0004874', 'Vin Diesel', '/name/nm0004874?ref_=tt_cl_t_4', 22),
(23, NULL, 'nm6403016', 'Daniela Melchior', '/name/nm6403016?ref_=tt_cl_t_12', 23),
(24, NULL, 'nm0348231', 'Sean Gunn', '/name/nm0348231?ref_=tt_cl_t_11', 24),
(25, NULL, 'nm4456120', 'Elizabeth Debicki', '/name/nm4456120?ref_=tt_cl_t_10', 25),
(26, NULL, 'nm0757855', 'Zoe Saldana', '/name/nm0757855?ref_=tt_cl_t_2', 26),
(27, NULL, 'nm0695435', 'Chris Pratt', '/name/nm0695435?ref_=tt_cl_t_1', 27),
(28, NULL, 'nm13086668', 'Olive Raine Cleope', '/name/nm13086668?ref_=tt_cl_t_18', 28),
(29, NULL, 'nm1176985', 'Dave Bautista', '/name/nm1176985?ref_=tt_cl_t_3', 29),
(30, NULL, 'nm0000230', 'Sylvester Stallone', '/name/nm0000230?ref_=tt_cl_t_9', 30),
(31, NULL, 'nm0177896', 'Bradley Cooper', '/name/nm0177896?ref_=tt_cl_t_5', 31),
(32, NULL, 'nm2962353', 'Pom Klementieff', '/name/nm2962353?ref_=tt_cl_t_8', 32),
(33, NULL, 'nm2394794', 'Karen Gillan', '/name/nm2394794?ref_=tt_cl_t_7', 33),
(34, NULL, 'nm0695435', 'Chris Pratt', '/name/nm0695435?ref_=tt_cl_t_1', 34),
(35, NULL, 'nm1221047', 'Keegan-Michael Key', '/name/nm1221047?ref_=tt_cl_t_5', 35),
(36, NULL, 'nm1724319', 'Sebastian Maniscalco', '/name/nm1724319?ref_=tt_cl_t_9', 36),
(37, NULL, 'nm0724656', 'Kevin Michael Richardson', '/name/nm0724656?ref_=tt_cl_t_8', 37),
(38, NULL, 'nm0553409', 'Charles Martinet', '/name/nm0553409?ref_=tt_cl_t_10', 38),
(39, NULL, 'nm0736622', 'Seth Rogen', '/name/nm0736622?ref_=tt_cl_t_6', 39),
(40, NULL, 'nm0035488', 'Fred Armisen', '/name/nm0035488?ref_=tt_cl_t_7', 40),
(41, NULL, 'nm0206359', 'Charlie Day', '/name/nm0206359?ref_=tt_cl_t_3', 41),
(42, NULL, 'nm5896355', 'Anya Taylor-Joy', '/name/nm5896355?ref_=tt_cl_t_2', 42),
(43, NULL, 'nm0085312', 'Jack Black', '/name/nm0085312?ref_=tt_cl_t_4', 43),
(44, NULL, 'nm0348231', 'Sean Gunn', '/name/nm0348231/?ref_=tt_ov_st', 44),
(45, NULL, 'nm0695435', 'Chris Pratt', '/name/nm0695435/?ref_=tt_ov_st', 45),
(46, NULL, 'nm2394794', 'Karen Gillan', '/name/nm2394794/?ref_=tt_ov_st', 46),
(47, NULL, 'nm2962353', 'Pom Klementieff', '/name/nm2962353?ref_=tt_cl_t_4', 47),
(48, NULL, 'nm1176985', 'Dave Bautista', '/name/nm1176985?ref_=tt_cl_t_8', 48),
(49, NULL, 'nm0608781', 'David Moskowitz', '/name/nm0608781?ref_=tt_cl_t_9', 49),
(50, NULL, 'nm0004874', 'Vin Diesel', '/name/nm0004874?ref_=tt_cl_t_7', 50),
(51, NULL, 'nm2394794', 'Karen Gillan', '/name/nm2394794?ref_=tt_cl_t_2', 51),
(52, NULL, 'nm0757855', 'Zoe Saldana', '/name/nm0757855?ref_=tt_cl_t_5', 52),
(53, NULL, 'nm0177896', 'Bradley Cooper', '/name/nm0177896?ref_=tt_cl_t_6', 53),
(54, NULL, 'nm0348231', 'Sean Gunn', '/name/nm0348231?ref_=tt_cl_t_3', 54),
(55, NULL, 'nm0002888', 'Stephen Blackehart', '/name/nm0002888?ref_=tt_cl_t_10', 55),
(56, NULL, 'nm0695435', 'Chris Pratt', '/name/nm0695435?ref_=tt_cl_t_1', 56),
(57, NULL, 'nm2018237', 'Taylor Kitsch', '/name/nm2018237/?ref_=tt_ov_st', 57),
(58, NULL, 'nm2090422', 'Constance Wu', '/name/nm2090422/?ref_=tt_ov_st', 58),
(59, NULL, 'nm0695435', 'Chris Pratt', '/name/nm0695435/?ref_=tt_ov_st', 59),
(60, NULL, 'nm1212071', 'Stephen Bishop', '/name/nm1212071?ref_=tt_cl_t_18', 60),
(61, NULL, 'nm2090422', 'Constance Wu', '/name/nm2090422?ref_=tt_cl_t_2', 61),
(62, NULL, 'nm0695435', 'Chris Pratt', '/name/nm0695435?ref_=tt_cl_t_1', 62),
(63, NULL, 'nm0000675', 'Jeanne Tripplehorn', '/name/nm0000675?ref_=tt_cl_t_6', 63),
(64, NULL, 'nm7725286', 'Jared Shaw', '/name/nm7725286?ref_=tt_cl_t_7', 64),
(65, NULL, 'nm2541974', 'Jai Courtney', '/name/nm2541974?ref_=tt_cl_t_15', 65),
(66, NULL, 'nm1238555', 'JD Pardo', '/name/nm1238555?ref_=tt_cl_t_8', 66),
(67, NULL, 'nm1206818', 'LaMonica Garrett', '/name/nm1206818?ref_=tt_cl_t_9', 67),
(68, NULL, 'nm1013218', 'Matthew Rauch', '/name/nm1013218?ref_=tt_cl_t_16', 68),
(69, NULL, 'nm0896292', 'Christina Vidal', '/name/nm0896292?ref_=tt_cl_t_10', 69),
(70, NULL, 'nm6951875', 'Alexis Louder', '/name/nm6951875?ref_=tt_cl_t_14', 70),
(71, NULL, 'nm2142336', 'Riley Keough', '/name/nm2142336?ref_=tt_cl_t_4', 71),
(72, NULL, 'nm0157915', 'Nick Chinlund', '/name/nm0157915?ref_=tt_cl_t_11', 72),
(73, NULL, 'nm7750444', 'Arlo Mertz', '/name/nm7750444?ref_=tt_cl_t_5', 73),
(74, NULL, 'nm7335799', 'Tyner Rushing', '/name/nm7335799?ref_=tt_cl_t_12', 74),
(75, NULL, 'nm6481846', 'Drew Starkey', '/name/nm6481846?ref_=tt_cl_t_13', 75),
(76, NULL, 'nm0005204', 'Paul McCrane', '/name/nm0005204?ref_=tt_cl_t_17', 76),
(77, NULL, 'nm2018237', 'Taylor Kitsch', '/name/nm2018237?ref_=tt_cl_t_3', 77),
(78, NULL, 'nm0000288', 'Christian Bale', '/name/nm0000288/?ref_=tt_ov_st', 78),
(79, NULL, 'nm1165110', 'Chris Hemsworth', '/name/nm1165110/?ref_=tt_ov_st', 79),
(80, NULL, 'nm0000204', 'Natalie Portman', '/name/nm0000204/?ref_=tt_ov_st', 80),
(81, NULL, 'nm0177896', 'Bradley Cooper', '/name/nm0177896?ref_=tt_cl_t_14', 81),
(82, NULL, 'nm0000204', 'Natalie Portman', '/name/nm0000204?ref_=tt_cl_t_2', 82),
(83, NULL, 'nm0000128', 'Russell Crowe', '/name/nm0000128?ref_=tt_cl_t_6', 83),
(84, NULL, 'nm1526352', 'Jaimie Alexander', '/name/nm1526352?ref_=tt_cl_t_7', 84),
(85, NULL, 'nm0000288', 'Christian Bale', '/name/nm0000288?ref_=tt_cl_t_3', 85),
(86, NULL, 'nm5415372', 'Carly Rees', '/name/nm5415372?ref_=tt_cl_t_15', 86),
(87, NULL, 'nm0004874', 'Vin Diesel', '/name/nm0004874?ref_=tt_cl_t_13', 87),
(88, NULL, 'nm0695435', 'Chris Pratt', '/name/nm0695435?ref_=tt_cl_t_8', 88),
(89, NULL, 'nm12281779', 'Natasha Cheng', '/name/nm12281779?ref_=tt_cl_t_18', 89),
(90, NULL, 'nm1165110', 'Chris Hemsworth', '/name/nm1165110?ref_=tt_cl_t_1', 90),
(91, NULL, 'nm1935086', 'Tessa Thompson', '/name/nm1935086?ref_=tt_cl_t_4', 91),
(92, NULL, 'nm0348231', 'Sean Gunn', '/name/nm0348231?ref_=tt_cl_t_12', 92),
(93, NULL, 'nm2394794', 'Karen Gillan', '/name/nm2394794?ref_=tt_cl_t_10', 93),
(94, NULL, 'nm6296226', 'Suren Jayemanne', '/name/nm6296226?ref_=tt_cl_t_17', 94),
(95, NULL, 'nm1176985', 'Dave Bautista', '/name/nm1176985?ref_=tt_cl_t_9', 95),
(96, NULL, 'nm2962353', 'Pom Klementieff', '/name/nm2962353?ref_=tt_cl_t_11', 96),
(97, NULL, 'nm1229520', 'Ben Falcone', '/name/nm1229520?ref_=tt_cl_t_16', 97),
(98, NULL, 'nm0169806', 'Taika Waititi', '/name/nm0169806?ref_=tt_cl_t_5', 98),
(99, NULL, 'nm0397171', 'Bryce Dallas Howard', '/name/nm0397171/?ref_=tt_ov_st', 99),
(100, NULL, 'nm0000368', 'Laura Dern', '/name/nm0000368/?ref_=tt_ov_st', 100),
(101, NULL, 'nm0695435', 'Chris Pratt', '/name/nm0695435/?ref_=tt_ov_st', 101),
(102, NULL, 'nm6819854', 'Justice Smith', '/name/nm6819854?ref_=tt_cl_t_12', 102),
(103, NULL, 'nm0000368', 'Laura Dern', '/name/nm0000368?ref_=tt_cl_t_3', 103),
(104, NULL, 'nm6974206', 'Mamoudou Athie', '/name/nm6974206?ref_=tt_cl_t_7', 104),
(105, NULL, 'nm2821397', 'Freya Parker', '/name/nm2821397?ref_=tt_cl_t_18', 105),
(106, NULL, 'nm0695435', 'Chris Pratt', '/name/nm0695435?ref_=tt_cl_t_1', 106),
(107, NULL, 'nm1986622', 'DeWanda Wise', '/name/nm1986622?ref_=tt_cl_t_6', 107),
(108, NULL, 'nm1119340', 'Kristoffer Polaha', '/name/nm1119340?ref_=tt_cl_t_16', 108),
(109, NULL, 'nm0000554', 'Sam Neill', '/name/nm0000554?ref_=tt_cl_t_4', 109),
(110, NULL, 'nm0000703', 'BD Wong', '/name/nm0000703?ref_=tt_cl_t_10', 110),
(111, NULL, 'nm9830820', 'Isabella Sermon', '/name/nm9830820?ref_=tt_cl_t_8', 111),
(112, NULL, 'nm2020278', 'Scott Haze', '/name/nm2020278?ref_=tt_cl_t_14', 112),
(113, NULL, 'nm11016259', 'Caleb Hearon', '/name/nm11016259?ref_=tt_cl_t_17', 113),
(114, NULL, 'nm4427331', 'Daniella Pineda', '/name/nm4427331?ref_=tt_cl_t_13', 114),
(115, NULL, 'nm1082477', 'Omar Sy', '/name/nm1082477?ref_=tt_cl_t_11', 115),
(116, NULL, 'nm1901842', 'Dichen Lachman', '/name/nm1901842?ref_=tt_cl_t_15', 116),
(117, NULL, 'nm0397171', 'Bryce Dallas Howard', '/name/nm0397171?ref_=tt_cl_t_2', 117),
(118, NULL, 'nm0000156', 'Jeff Goldblum', '/name/nm0000156?ref_=tt_cl_t_5', 118),
(119, NULL, 'nm0001714', 'Campbell Scott', '/name/nm0001714?ref_=tt_cl_t_9', 119);

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `id` bigint(20) NOT NULL,
  `anne_sortie` int(11) DEFAULT NULL,
  `id_imdb` varchar(255) DEFAULT NULL,
  `langue` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `plot` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `pays` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id`, `anne_sortie`, `id_imdb`, `langue`, `nom`, `plot`, `url`, `pays`) VALUES
(1, NULL, 'tt1801045', 'English', 'Cowboy Ninja Viking', 'A government program turns Duncan, a man who suffers from multiple personality disorder, into a super-soldier with the attributes of a cowboy, a ninja, and a Viking.', '/title/tt1801045/?ref_=nm_flmg_act_1', 1),
(2, NULL, 'tt7766378', 'English', 'The Electric State', 'An orphaned teenager traverses the American West with a sweet but mysterious robot and an eccentric drifter in search of her younger brother.', '/title/tt7766378/?ref_=nm_flmg_act_2', 1),
(3, 2023, 'tt5779228', 'English', 'Garfield', 'Animated feature film based on the popular comic strip about a sarcastic, lasagna-loving cat.', '/title/tt5779228/?ref_=nm_flmg_act_3', 1),
(4, 2023, 'tt6791350', 'English', 'Guardians of the Galaxy Vol. 3', NULL, '/title/tt6791350/?ref_=nm_flmg_act_4', 1),
(5, 2023, 'tt6718170', 'English', 'Untitled Super Mario Project', 'A plumber named Mario travels through an underground labyrinth with his brother, Luigi, trying to save a captured princess. Feature film adaptation of the popular video game.', '/title/tt6718170/?ref_=nm_flmg_act_5', 1),
(6, 2022, 'tt13623136', 'English', 'The Guardians of the Galaxy: Holiday Special', NULL, '/title/tt13623136/?ref_=nm_flmg_act_6', 1),
(7, 2022, 'tt11743610', 'English', 'La liste finale', NULL, '/title/tt11743610/?ref_=nm_flmg_act_7', 1),
(8, 2022, 'tt10648342', 'English', 'Thor: Love and Thunder', NULL, '/title/tt10648342/?ref_=nm_flmg_act_8', 2),
(9, 2022, 'tt8041270', 'English', 'Jurassic World: Le monde d\'aprÃ¨s', NULL, '/title/tt8041270/?ref_=nm_flmg_act_9', 1);

-- --------------------------------------------------------

--
-- Structure de la table `film_castingprincipal`
--

CREATE TABLE `film_castingprincipal` (
  `id_film` bigint(20) NOT NULL,
  `id_acteur` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `film_castingprincipal`
--

INSERT INTO `film_castingprincipal` (`id_film`, `id_acteur`) VALUES
(1, 1),
(1, 2),
(2, 5),
(2, 6),
(3, 9),
(3, 10),
(4, 13),
(4, 14),
(4, 15),
(6, 44),
(6, 45),
(6, 46),
(7, 57),
(7, 58),
(7, 59),
(8, 78),
(8, 79),
(8, 80),
(9, 99),
(9, 100),
(9, 101);

-- --------------------------------------------------------

--
-- Structure de la table `film_genre`
--

CREATE TABLE `film_genre` (
  `id_film` bigint(20) NOT NULL,
  `id_genre` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `film_genre`
--

INSERT INTO `film_genre` (`id_film`, `id_genre`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 4),
(3, 5),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(5, 5),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 4),
(7, 6),
(8, 1),
(8, 2),
(8, 3),
(9, 1),
(9, 2),
(9, 7);

-- --------------------------------------------------------

--
-- Structure de la table `film_lieutournage`
--

CREATE TABLE `film_lieutournage` (
  `id_film` bigint(20) NOT NULL,
  `id_lieutournage` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `film_lieutournage`
--

INSERT INTO `film_lieutournage` (`id_film`, `id_lieutournage`) VALUES
(2, 1),
(4, 2),
(5, 3),
(6, 4),
(7, 5),
(8, 6),
(9, 7);

-- --------------------------------------------------------

--
-- Structure de la table `film_realisateur`
--

CREATE TABLE `film_realisateur` (
  `id_film` bigint(20) NOT NULL,
  `id_realisateur` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `film_realisateur`
--

INSERT INTO `film_realisateur` (`id_film`, `id_realisateur`) VALUES
(1, 1),
(2, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(5, 7),
(6, 8),
(7, 9),
(8, 10),
(9, 11);

-- --------------------------------------------------------

--
-- Structure de la table `film_role`
--

CREATE TABLE `film_role` (
  `id_film` bigint(20) NOT NULL,
  `id_role` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `film_role`
--

INSERT INTO `film_role` (`id_film`, `id_role`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(4, 13),
(4, 14),
(4, 15),
(4, 16),
(4, 17),
(4, 18),
(4, 19),
(4, 20),
(4, 21),
(4, 22),
(4, 23),
(4, 24),
(5, 25),
(5, 26),
(5, 27),
(5, 28),
(5, 29),
(5, 30),
(5, 31),
(5, 32),
(5, 33),
(5, 34),
(6, 35),
(6, 36),
(6, 37),
(6, 38),
(6, 39),
(6, 40),
(6, 41),
(6, 42),
(6, 43),
(6, 44),
(7, 45),
(7, 46),
(7, 47),
(7, 48),
(7, 49),
(7, 50),
(7, 51),
(7, 52),
(7, 53),
(7, 54),
(7, 55),
(7, 56),
(7, 57),
(7, 58),
(7, 59),
(7, 60),
(7, 61),
(7, 62),
(8, 63),
(8, 64),
(8, 65),
(8, 66),
(8, 67),
(8, 68),
(8, 69),
(8, 70),
(8, 71),
(8, 72),
(8, 73),
(8, 74),
(8, 75),
(8, 76),
(8, 77),
(8, 78),
(8, 79),
(8, 80),
(9, 81),
(9, 82),
(9, 83),
(9, 84),
(9, 85),
(9, 86),
(9, 87),
(9, 88),
(9, 89),
(9, 90),
(9, 91),
(9, 92),
(9, 93),
(9, 94),
(9, 95),
(9, 96),
(9, 97),
(9, 98);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id`, `nom`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Drama'),
(5, 'Animation'),
(6, 'Thriller'),
(7, 'Sci-Fi');

-- --------------------------------------------------------

--
-- Structure de la table `lieu_tournage`
--

CREATE TABLE `lieu_tournage` (
  `id` bigint(20) NOT NULL,
  `etat_dept` varchar(255) DEFAULT NULL,
  `pays` varchar(255) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `lieu_tournage`
--

INSERT INTO `lieu_tournage` (`id`, `etat_dept`, `pays`, `ville`) VALUES
(1, ' Georgia', ' USA', 'Atlanta'),
(2, ' Georgia', ' USA', 'Atlanta'),
(3, 'Paris', ' France', ''),
(4, ' California', ' USA', 'Hollywood  Los Angeles'),
(5, ' California', ' USA', 'San Diego'),
(6, ' New South Wales', ' Australia', ' Moore Park  Sydney'),
(7, 'Valletta', ' Malta', '');

-- --------------------------------------------------------

--
-- Structure de la table `naissance`
--

CREATE TABLE `naissance` (
  `id` bigint(20) NOT NULL,
  `datenaissance` varchar(255) DEFAULT NULL,
  `lieunaissance` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `naissance`
--

INSERT INTO `naissance` (`id`, `datenaissance`, `lieunaissance`) VALUES
(1, '1982-7-18', 'Jamshedpur, Bihar, India'),
(2, '1979-6-21', 'Virginia, Minnesota, USA'),
(3, '1982-7-18', 'Jamshedpur, Bihar, India'),
(4, '1979-6-21', 'Virginia, Minnesota, USA'),
(5, '1979-6-21', 'Virginia, Minnesota, USA'),
(6, '2004-2-19', 'MÃ¡laga, AndalucÃ­a, Spain'),
(7, '1979-6-21', 'Virginia, Minnesota, USA'),
(8, '2004-2-19', 'MÃ¡laga, AndalucÃ­a, Spain'),
(9, '1948-12-21', 'Washington D.C., USA'),
(10, '1979-6-21', 'Virginia, Minnesota, USA'),
(11, '1979-6-21', 'Virginia, Minnesota, USA'),
(12, '1948-12-21', 'Washington D.C., USA'),
(13, '1978-6-19', 'Passaic, New Jersey, USA'),
(14, '1979-6-21', 'Virginia, Minnesota, USA'),
(15, '1969-1-18', 'Washington, District of Columbia, USA'),
(16, '1996-6-4', 'Burgas, Bulgaria'),
(17, '', ''),
(18, '1975-0-0', 'Nigeria'),
(19, '1967-12-1', 'New York City, New York, USA'),
(20, '1993-1-28', 'England, UK'),
(21, '1979-4-7', 'Manila, Philippines'),
(22, '1967-7-18', 'Alameda County, California, USA'),
(23, '1996-11-1', 'Almada, Portugal'),
(24, '1974-5-22', 'St. Louis, Missouri, USA'),
(25, '1990-8-24', 'Paris, France'),
(26, '1978-6-19', 'Passaic, New Jersey, USA'),
(27, '1979-6-21', 'Virginia, Minnesota, USA'),
(28, '', ''),
(29, '1969-1-18', 'Washington, District of Columbia, USA'),
(30, '1946-7-6', 'New York City, New York, USA'),
(31, '1975-1-5', 'Philadelphia, Pennsylvania, USA'),
(32, '1986-5-3', 'Quebec City, Quebec, Canada'),
(33, '1987-11-28', 'Inverness, Scotland, UK'),
(34, '1979-6-21', 'Virginia, Minnesota, USA'),
(35, '1971-3-22', 'Southfield, Michigan, USA'),
(36, '1973-7-8', 'Chicago, Illinois, USA'),
(37, '1964-10-25', 'Bronx, New York City, New York, USA'),
(38, '1955-9-17', 'San Jose, California, USA'),
(39, '1982-4-15', 'Vancouver, British Columbia, Canada'),
(40, '1966-12-4', 'Hattiesburg, Mississippi, USA'),
(41, '1976-2-9', 'New York City, New York, USA'),
(42, '1996-4-16', 'Miami, Florida, USA'),
(43, '1969-8-28', 'Hermosa Beach, California, USA'),
(44, '1974-5-22', 'St. Louis, Missouri, USA'),
(45, '1979-6-21', 'Virginia, Minnesota, USA'),
(46, '1987-11-28', 'Inverness, Scotland, UK'),
(47, '1986-5-3', 'Quebec City, Quebec, Canada'),
(48, '1969-1-18', 'Washington, District of Columbia, USA'),
(49, '', ''),
(50, '1967-7-18', 'Alameda County, California, USA'),
(51, '1987-11-28', 'Inverness, Scotland, UK'),
(52, '1978-6-19', 'Passaic, New Jersey, USA'),
(53, '1975-1-5', 'Philadelphia, Pennsylvania, USA'),
(54, '1974-5-22', 'St. Louis, Missouri, USA'),
(55, '1967-12-1', 'New York City, New York, USA'),
(56, '1979-6-21', 'Virginia, Minnesota, USA'),
(57, '1981-4-8', 'Kelowna, British Columbia, Canada'),
(58, '1982-3-22', 'Richmond, Virginia, USA'),
(59, '1979-6-21', 'Virginia, Minnesota, USA'),
(60, '', ''),
(61, '1982-3-22', 'Richmond, Virginia, USA'),
(62, '1979-6-21', 'Virginia, Minnesota, USA'),
(63, '1963-6-10', 'Tulsa, Oklahoma, USA'),
(64, '', ''),
(65, '1986-3-15', 'Sydney, New South Wales, Australia'),
(66, '1980-9-7', 'Panorama City, California, USA'),
(67, '1975-5-23', 'San Francisco, California, USA'),
(68, '', ''),
(69, '1981-11-18', 'Whitestone, Queens, New York City, New York, USA'),
(70, '', ''),
(71, '1989-5-29', 'Santa Monica, California, USA'),
(72, '1961-11-18', 'New York City, New York, USA'),
(73, '', ''),
(74, '', ''),
(75, '1993-11-4', 'Hickory, North Carolina, USA'),
(76, '1961-1-19', 'Philadelphia, Pennsylvania, USA'),
(77, '1981-4-8', 'Kelowna, British Columbia, Canada'),
(78, '1974-1-30', 'Haverfordwest, Pembrokeshire, Wales, UK'),
(79, '1983-8-11', 'Melbourne, Victoria, Australia'),
(80, '1981-6-9', 'Jerusalem, Israel'),
(81, '1975-1-5', 'Philadelphia, Pennsylvania, USA'),
(82, '1981-6-9', 'Jerusalem, Israel'),
(83, '1964-4-7', 'Wellington, New Zealand'),
(84, '1984-3-12', 'Columbia, South Carolina, USA'),
(85, '1974-1-30', 'Haverfordwest, Pembrokeshire, Wales, UK'),
(86, '', ''),
(87, '1967-7-18', 'Alameda County, California, USA'),
(88, '1979-6-21', 'Virginia, Minnesota, USA'),
(89, '', ''),
(90, '1983-8-11', 'Melbourne, Victoria, Australia'),
(91, '1983-10-3', 'Los Angeles, California, USA'),
(92, '1974-5-22', 'St. Louis, Missouri, USA'),
(93, '1987-11-28', 'Inverness, Scotland, UK'),
(94, '', ''),
(95, '1969-1-18', 'Washington, District of Columbia, USA'),
(96, '1986-5-3', 'Quebec City, Quebec, Canada'),
(97, '1973-8-25', 'Carbondale, Illinois, USA'),
(98, '1975-8-16', 'Wellington, New Zealand'),
(99, '1981-3-2', 'Los Angeles, California, USA'),
(100, '1967-2-10', 'Saint John\'s Health Center, Santa Monica, Los Angeles County, California, USA'),
(101, '1979-6-21', 'Virginia, Minnesota, USA'),
(102, '1995-8-9', 'Los Angeles, California, USA'),
(103, '1967-2-10', 'Saint John\'s Health Center, Santa Monica, Los Angeles County, California, USA'),
(104, '', ''),
(105, '', ''),
(106, '1979-6-21', 'Virginia, Minnesota, USA'),
(107, '1984-5-30', 'Jessup, Maryland, USA'),
(108, '1977-2-18', 'Reno, Nevada, USA'),
(109, '1947-9-14', 'Omagh, Co. Tyrone, Northern Ireland, UK'),
(110, '1960-10-24', 'San Francisco, California, USA'),
(111, '2006-7-8', 'London, England'),
(112, '1993-6-28', 'Dallas, Texas, USA'),
(113, '1995-1-24', 'Missouri, USA'),
(114, '1987-2-20', 'Oakland, California, USA'),
(115, '1978-1-20', 'Trappes, Yvelines, France'),
(116, '1982-2-22', 'Kathmandu, Nepal'),
(117, '1981-3-2', 'Los Angeles, California, USA'),
(118, '1952-10-22', 'Pittsburgh, Pennsylvania, USA'),
(119, '1961-7-19', 'New York City, New York, USA');

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE `pays` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `pays`
--

INSERT INTO `pays` (`id`, `nom`, `url`) VALUES
(1, 'United States', '/search/title/?country_of_origin=US&ref_=tt_dt_cn'),
(2, 'Australia', '/search/title/?country_of_origin=AU&ref_=tt_dt_cn');

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

CREATE TABLE `realisateur` (
  `id` bigint(20) NOT NULL,
  `identite` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `realisateur`
--

INSERT INTO `realisateur` (`id`, `identite`, `url`) VALUES
(1, 'Michelle MacLaren', '/name/nm0533713/?ref_=tt_ov_dr'),
(2, 'Anthony Russo', '/name/nm0751577/?ref_=tt_ov_dr'),
(3, 'Joe Russo', '/name/nm0751648/?ref_=tt_ov_dr'),
(4, 'Mark Dindal', '/name/nm0227540/?ref_=tt_ov_dr'),
(5, 'James Gunn', '/name/nm0348181/?ref_=tt_ov_dr'),
(6, 'Aaron Horvath', '/name/nm1739338/?ref_=tt_ov_dr'),
(7, 'Michael Jelenic', '/name/nm2398585/?ref_=tt_ov_dr'),
(8, 'James Gunn', '/name/nm0348181/?ref_=tt_ov_dr'),
(9, 'United States', '/search/title/?country_of_origin=US&ref_=tt_dt_cn'),
(10, 'Taika Waititi', '/name/nm0169806/?ref_=tt_ov_dr'),
(11, 'Colin Trevorrow', '/name/nm1119880/?ref_=tt_ov_dr');

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL,
  `character_name` varchar(255) DEFAULT NULL,
  `film` varchar(255) DEFAULT NULL,
  `id_acteur` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id`, `character_name`, `film`, `id_acteur`) VALUES
(1, '', 'tt1801045', 3),
(2, 'Duncan', 'tt1801045', 4),
(3, '', 'tt7766378', 7),
(4, '', 'tt7766378', 8),
(5, 'Garfield', 'tt5779228', 11),
(6, 'Vic', 'tt5779228', 12),
(7, '', 'tt6791350', 16),
(8, 'Behemoth', 'tt6791350', 17),
(9, '', 'tt6791350', 18),
(10, '', 'tt6791350', 19),
(11, 'Adam Warlock', 'tt6791350', 20),
(12, '', 'tt6791350', 21),
(13, 'Groot', 'tt6791350', 22),
(14, '', 'tt6791350', 23),
(15, 'Kraglin', 'tt6791350', 24),
(16, 'Ayesha', 'tt6791350', 25),
(17, 'Gamora', 'tt6791350', 26),
(18, 'Peter Quill', 'tt6791350', 27),
(19, 'Star Kid', 'tt6791350', 28),
(20, 'Drax', 'tt6791350', 29),
(21, 'Stakar Ogord', 'tt6791350', 30),
(22, 'Rocket', 'tt6791350', 31),
(23, 'Mantis', 'tt6791350', 32),
(24, 'Nebula', 'tt6791350', 33),
(25, 'Mario', 'tt6718170', 34),
(26, 'Toad', 'tt6718170', 35),
(27, 'Spike', 'tt6718170', 36),
(28, 'Kamek', 'tt6718170', 37),
(29, '', 'tt6718170', 38),
(30, 'Donkey Kong', 'tt6718170', 39),
(31, 'Cranky Kong', 'tt6718170', 40),
(32, 'Luigi', 'tt6718170', 41),
(33, 'Princess Peach', 'tt6718170', 42),
(34, 'Bowser', 'tt6718170', 43),
(35, 'Mantis', 'tt13623136', 47),
(36, 'Drax', 'tt13623136', 48),
(37, 'Santa Claus', 'tt13623136', 49),
(38, 'Groot', 'tt13623136', 50),
(39, 'Nebula', 'tt13623136', 51),
(40, '', 'tt13623136', 52),
(41, 'Rocket Raccoon', 'tt13623136', 53),
(42, 'Kraglin', 'tt13623136', 54),
(43, '', 'tt13623136', 55),
(44, 'Peter Quill', 'tt13623136', 56),
(45, 'Richard Fontana', 'tt11743610', 60),
(46, 'Katie Buranek', 'tt11743610', 61),
(47, 'James Reece', 'tt11743610', 62),
(48, 'Secretary Hartley', 'tt11743610', 63),
(49, 'Ernest \'Boozer\' Vickers', 'tt11743610', 64),
(50, 'Steve Horn', 'tt11743610', 65),
(51, 'Tony Layun', 'tt11743610', 66),
(52, 'Commander Bill Cox', 'tt11743610', 67),
(53, 'JAG Captain Howard', 'tt11743610', 68),
(54, 'Mac Wilson', 'tt11743610', 69),
(55, 'Nicole Deptula', 'tt11743610', 70),
(56, 'Lauren Reece', 'tt11743610', 71),
(57, 'Admiral Gerald Pillar', 'tt11743610', 72),
(58, 'Lucy Reece', 'tt11743610', 73),
(59, 'Liz Riley', 'tt11743610', 74),
(60, 'Junior Alba', 'tt11743610', 75),
(61, 'Mike Tedesco', 'tt11743610', 76),
(62, 'Ben Edwards', 'tt11743610', 77),
(63, 'Rocket', 'tt10648342', 81),
(64, 'Jane Foster', 'tt10648342', 82),
(65, 'Zeus', 'tt10648342', 83),
(66, 'Sif', 'tt10648342', 84),
(67, 'Gorr', 'tt10648342', 85),
(68, 'Miek', 'tt10648342', 86),
(69, 'Groot', 'tt10648342', 87),
(70, 'Peter Quill', 'tt10648342', 88),
(71, 'Asgardian Stagehand', 'tt10648342', 89),
(72, 'Thor', 'tt10648342', 90),
(73, 'King Valkyrie', 'tt10648342', 91),
(74, 'Kraglin', 'tt10648342', 92),
(75, 'Nebula', 'tt10648342', 93),
(76, 'Asgardian Stagehand', 'tt10648342', 94),
(77, 'Drax', 'tt10648342', 95),
(78, 'Mantis', 'tt10648342', 96),
(79, 'Asgardian Stage Manager', 'tt10648342', 97),
(80, 'Korg', 'tt10648342', 98),
(81, 'Franklin Webb', 'tt8041270', 102),
(82, 'Ellie Sattler', 'tt8041270', 103),
(83, 'Ramsay Cole', 'tt8041270', 104),
(84, 'Denise Roberts', 'tt8041270', 105),
(85, 'Owen Grady', 'tt8041270', 106),
(86, 'Kayla Watts', 'tt8041270', 107),
(87, 'Wyatt Huntley', 'tt8041270', 108),
(88, 'Alan Grant', 'tt8041270', 109),
(89, 'Dr. Henry Wu', 'tt8041270', 110),
(90, 'Maisie Lockwood', 'tt8041270', 111),
(91, 'Rainn Delacourt', 'tt8041270', 112),
(92, 'Jeremy Bernier', 'tt8041270', 113),
(93, 'Dr. Zia Rodriguez', 'tt8041270', 114),
(94, 'Barry SembÃ¨ne', 'tt8041270', 115),
(95, 'Soyona Santos', 'tt8041270', 116),
(96, 'Claire Dearing', 'tt8041270', 117),
(97, 'Ian Malcolm', 'tt8041270', 118),
(98, 'Lewis Dodgson', 'tt8041270', 119);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKl7d56f4qcgvh70tlsiji8dk44` (`naissance_id`);

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKh5ficlg56m0wkhijnrqx6874b` (`pays`);

--
-- Index pour la table `film_castingprincipal`
--
ALTER TABLE `film_castingprincipal`
  ADD PRIMARY KEY (`id_film`,`id_acteur`),
  ADD KEY `FKfoqj5s7pjsxf1abe6cad147sp` (`id_acteur`);

--
-- Index pour la table `film_genre`
--
ALTER TABLE `film_genre`
  ADD KEY `FKq9htra7e2a7h5akq4iyq03f2f` (`id_genre`),
  ADD KEY `FKd5ps6y6dt84oqlngli5sncl8k` (`id_film`);

--
-- Index pour la table `film_lieutournage`
--
ALTER TABLE `film_lieutournage`
  ADD PRIMARY KEY (`id_film`,`id_lieutournage`),
  ADD KEY `FKsofd42hbnqt0s48atx6c3o7yv` (`id_lieutournage`);

--
-- Index pour la table `film_realisateur`
--
ALTER TABLE `film_realisateur`
  ADD PRIMARY KEY (`id_film`,`id_realisateur`),
  ADD KEY `FKr1w70wouessxx19y0diw3i5xa` (`id_realisateur`);

--
-- Index pour la table `film_role`
--
ALTER TABLE `film_role`
  ADD PRIMARY KEY (`id_film`,`id_role`),
  ADD KEY `FK90dx9heh6kv5hcdmbxycl357f` (`id_role`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `lieu_tournage`
--
ALTER TABLE `lieu_tournage`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `naissance`
--
ALTER TABLE `naissance`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `realisateur`
--
ALTER TABLE `realisateur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKj47sbcn705k7xetrq0s4u2f7` (`id_acteur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `acteur`
--
ALTER TABLE `acteur`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `lieu_tournage`
--
ALTER TABLE `lieu_tournage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `naissance`
--
ALTER TABLE `naissance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT pour la table `pays`
--
ALTER TABLE `pays`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `realisateur`
--
ALTER TABLE `realisateur`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD CONSTRAINT `FKl7d56f4qcgvh70tlsiji8dk44` FOREIGN KEY (`naissance_id`) REFERENCES `naissance` (`id`);

--
-- Contraintes pour la table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `FKh5ficlg56m0wkhijnrqx6874b` FOREIGN KEY (`pays`) REFERENCES `pays` (`id`);

--
-- Contraintes pour la table `film_castingprincipal`
--
ALTER TABLE `film_castingprincipal`
  ADD CONSTRAINT `FK7kj7cxelbrbg528q0r7sevdvl` FOREIGN KEY (`id_film`) REFERENCES `film` (`id`),
  ADD CONSTRAINT `FKfoqj5s7pjsxf1abe6cad147sp` FOREIGN KEY (`id_acteur`) REFERENCES `acteur` (`id`);

--
-- Contraintes pour la table `film_genre`
--
ALTER TABLE `film_genre`
  ADD CONSTRAINT `FKd5ps6y6dt84oqlngli5sncl8k` FOREIGN KEY (`id_film`) REFERENCES `film` (`id`),
  ADD CONSTRAINT `FKq9htra7e2a7h5akq4iyq03f2f` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id`);

--
-- Contraintes pour la table `film_lieutournage`
--
ALTER TABLE `film_lieutournage`
  ADD CONSTRAINT `FKqlucnx4e2wjojcdug9tf3kxg0` FOREIGN KEY (`id_film`) REFERENCES `film` (`id`),
  ADD CONSTRAINT `FKsofd42hbnqt0s48atx6c3o7yv` FOREIGN KEY (`id_lieutournage`) REFERENCES `lieu_tournage` (`id`);

--
-- Contraintes pour la table `film_realisateur`
--
ALTER TABLE `film_realisateur`
  ADD CONSTRAINT `FK68iww2txbr52aehay2htgmh2r` FOREIGN KEY (`id_film`) REFERENCES `film` (`id`),
  ADD CONSTRAINT `FKr1w70wouessxx19y0diw3i5xa` FOREIGN KEY (`id_realisateur`) REFERENCES `realisateur` (`id`);

--
-- Contraintes pour la table `film_role`
--
ALTER TABLE `film_role`
  ADD CONSTRAINT `FK25gm4qs9jsoywcyl3smsaabre` FOREIGN KEY (`id_film`) REFERENCES `film` (`id`),
  ADD CONSTRAINT `FK90dx9heh6kv5hcdmbxycl357f` FOREIGN KEY (`id_role`) REFERENCES `role` (`id`);

--
-- Contraintes pour la table `role`
--
ALTER TABLE `role`
  ADD CONSTRAINT `FKj47sbcn705k7xetrq0s4u2f7` FOREIGN KEY (`id_acteur`) REFERENCES `acteur` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
