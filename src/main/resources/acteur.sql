-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 25 nov. 2022 à 17:04
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
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `acteur`
--
ALTER TABLE `acteur`
  MODIFY `id_1` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD CONSTRAINT `FKjgq1uy16x4qq3lrjuxgny018u` FOREIGN KEY (`naissance_id`) REFERENCES `naissance` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
