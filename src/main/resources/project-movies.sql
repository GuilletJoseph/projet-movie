-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 25 nov. 2022 à 17:29
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
  `id_1` bigint(20) NOT NULL,
  `height` varchar(255) DEFAULT NULL,
  `id` varchar(255) DEFAULT NULL,
  `identite` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `naissance_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `acteur`
--

INSERT INTO `acteur` (`id_1`, `height`, `id`, `identite`, `url`, `naissance_id`) VALUES
(1, NULL, 'nm0695435', 'Chris Pratt', '/name/nm0695435?ref_=tt_cl_t_1', NULL),
(2, NULL, 'nm1231899', 'Priyanka Chopra Jonas', '/name/nm1231899?ref_=tt_cl_t_2', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `casting_principal`
--

CREATE TABLE `casting_principal` (
  `id_1` bigint(20) NOT NULL,
  `height` varchar(255) DEFAULT NULL,
  `id` varchar(255) DEFAULT NULL,
  `identite` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `film_id` bigint(20) DEFAULT NULL,
  `naissance_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `casting_principal`
--

INSERT INTO `casting_principal` (`id_1`, `height`, `id`, `identite`, `url`, `film_id`, `naissance_id`) VALUES
(1, NULL, 'nm1231899', 'Priyanka Chopra Jonas', '/name/nm1231899/?ref_=tt_ov_st', NULL, NULL),
(2, NULL, 'nm0695435', 'Chris Pratt', '/name/nm0695435/?ref_=tt_ov_st', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `id_1` bigint(20) NOT NULL,
  `anne_sortie` int(11) DEFAULT NULL,
  `genres` varchar(255) DEFAULT NULL,
  `id` varchar(255) DEFAULT NULL,
  `langue` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `plot` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `lieu_tournage_id` varchar(255) DEFAULT NULL,
  `pays_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id_1`, `anne_sortie`, `genres`, `id`, `langue`, `nom`, `plot`, `url`, `lieu_tournage_id`, `pays_id`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, 'Action', 'tt1801045', 'English', 'Cowboy Ninja Viking', 'A government program turns Duncan, a man who suffers from multiple personality disorder, into a super-soldier with the attributes of a cowboy, a ninja, and a Viking.', '/title/tt1801045/?ref_=nm_flmg_act_1', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `lieu_tournage`
--

CREATE TABLE `lieu_tournage` (
  `id_1` bigint(20) NOT NULL,
  `etat_dept` varchar(255) DEFAULT NULL,
  `id` varchar(255) DEFAULT NULL,
  `pays` varchar(255) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `naissance`
--

CREATE TABLE `naissance` (
  `id_1` bigint(20) NOT NULL,
  `date_naissance` varchar(255) DEFAULT NULL,
  `id` varchar(255) DEFAULT NULL,
  `lieu_naissance` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `naissance`
--

INSERT INTO `naissance` (`id_1`, `date_naissance`, `id`, `lieu_naissance`) VALUES
(1, '1982-7-18', NULL, 'Jamshedpur, Bihar, India'),
(2, '1979-6-21', NULL, 'Virginia, Minnesota, USA'),
(3, '1979-6-21', NULL, 'Virginia, Minnesota, USA'),
(4, '1982-7-18', NULL, 'Jamshedpur, Bihar, India');

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE `pays` (
  `id_1` bigint(20) NOT NULL,
  `id` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `pays`
--

INSERT INTO `pays` (`id_1`, `id`, `nom`, `url`) VALUES
(1, NULL, 'United States', '/search/title/?country_of_origin=US&ref_=tt_dt_cn');

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

CREATE TABLE `realisateur` (
  `id_1` bigint(20) NOT NULL,
  `id` varchar(255) DEFAULT NULL,
  `identite` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `film_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `realisateur`
--

INSERT INTO `realisateur` (`id_1`, `id`, `identite`, `url`, `film_id`) VALUES
(1, NULL, 'Michelle MacLaren', '/name/nm0533713/?ref_=tt_ov_dr', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id_1` bigint(20) NOT NULL,
  `character_name` varchar(255) DEFAULT NULL,
  `film` varchar(255) DEFAULT NULL,
  `id` varchar(255) DEFAULT NULL,
  `acteur_id` bigint(20) DEFAULT NULL,
  `film_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id_1`, `character_name`, `film`, `id`, `acteur_id`, `film_id`) VALUES
(1, 'Duncan', 'tt1801045', NULL, 1, NULL),
(2, '', 'tt1801045', NULL, 2, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD PRIMARY KEY (`id_1`),
  ADD KEY `FKjgq1uy16x4qq3lrjuxgny018u` (`naissance_id`);

--
-- Index pour la table `casting_principal`
--
ALTER TABLE `casting_principal`
  ADD PRIMARY KEY (`id_1`),
  ADD KEY `FKewk4bcegyv67rmtf5ye4io4us` (`film_id`),
  ADD KEY `FKmdjcxqyhykj5lf9cs9xtm8sy8` (`naissance_id`);

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id_1`),
  ADD KEY `FK3no6yq23xdbev6gil1tdleaib` (`lieu_tournage_id`),
  ADD KEY `FK8ab0kxk1ixo9h72o810vml12c` (`pays_id`);

--
-- Index pour la table `lieu_tournage`
--
ALTER TABLE `lieu_tournage`
  ADD PRIMARY KEY (`id_1`),
  ADD UNIQUE KEY `UK_q8sro3dkdqch8r7etpqlypmxi` (`id`);

--
-- Index pour la table `naissance`
--
ALTER TABLE `naissance`
  ADD PRIMARY KEY (`id_1`),
  ADD UNIQUE KEY `UK_jwedct2359csqk73jxt0ia5mb` (`id`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`id_1`),
  ADD UNIQUE KEY `UK_nglre4iig3ewb3r2qkadd6exo` (`id`);

--
-- Index pour la table `realisateur`
--
ALTER TABLE `realisateur`
  ADD PRIMARY KEY (`id_1`),
  ADD KEY `FKri7gbr4o83ax5scb7q2fol40j` (`film_id`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_1`),
  ADD KEY `FKaw2ejtp2epx16prf39bnlpy07` (`acteur_id`),
  ADD KEY `FKe4u7jgo240g3afl7cv2f703w` (`film_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `acteur`
--
ALTER TABLE `acteur`
  MODIFY `id_1` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `casting_principal`
--
ALTER TABLE `casting_principal`
  MODIFY `id_1` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `id_1` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `lieu_tournage`
--
ALTER TABLE `lieu_tournage`
  MODIFY `id_1` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `naissance`
--
ALTER TABLE `naissance`
  MODIFY `id_1` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `pays`
--
ALTER TABLE `pays`
  MODIFY `id_1` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `realisateur`
--
ALTER TABLE `realisateur`
  MODIFY `id_1` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id_1` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD CONSTRAINT `FKjgq1uy16x4qq3lrjuxgny018u` FOREIGN KEY (`naissance_id`) REFERENCES `naissance` (`id`);

--
-- Contraintes pour la table `casting_principal`
--
ALTER TABLE `casting_principal`
  ADD CONSTRAINT `FKewk4bcegyv67rmtf5ye4io4us` FOREIGN KEY (`film_id`) REFERENCES `film` (`id_1`),
  ADD CONSTRAINT `FKmdjcxqyhykj5lf9cs9xtm8sy8` FOREIGN KEY (`naissance_id`) REFERENCES `naissance` (`id`);

--
-- Contraintes pour la table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `FK3no6yq23xdbev6gil1tdleaib` FOREIGN KEY (`lieu_tournage_id`) REFERENCES `lieu_tournage` (`id`),
  ADD CONSTRAINT `FK8ab0kxk1ixo9h72o810vml12c` FOREIGN KEY (`pays_id`) REFERENCES `pays` (`id`);

--
-- Contraintes pour la table `realisateur`
--
ALTER TABLE `realisateur`
  ADD CONSTRAINT `FKri7gbr4o83ax5scb7q2fol40j` FOREIGN KEY (`film_id`) REFERENCES `film` (`id_1`);

--
-- Contraintes pour la table `role`
--
ALTER TABLE `role`
  ADD CONSTRAINT `FKaw2ejtp2epx16prf39bnlpy07` FOREIGN KEY (`acteur_id`) REFERENCES `acteur` (`id_1`),
  ADD CONSTRAINT `FKe4u7jgo240g3afl7cv2f703w` FOREIGN KEY (`film_id`) REFERENCES `film` (`id_1`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
