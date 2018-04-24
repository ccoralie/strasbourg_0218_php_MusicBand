-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 23 Avril 2018 à 16:37
-- Version du serveur :  5.7.21-0ubuntu0.16.04.1
-- Version de PHP :  7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `Musicband`
--

-- --------------------------------------------------------

--
-- Structure de la table `Album`
--

CREATE TABLE `Album` (
  `id` int(20) NOT NULL,
  `album` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Article`
--

CREATE TABLE `Article` (
  `id` int(20) NOT NULL,
  `article` text,
  `titre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Article`
--

INSERT INTO `Article` (`id`, `article`, `titre`) VALUES
(1, 'Découvrez en exclusivité notre prochain album "Rock\'n\'Wild" le 10 septembre 2018 !', 'Nouvel album'),
(2, 'De retour sur scène à partir du 4 décembre 2018 à la salle polyvalente de Ruffach !', 'Prochaine tournée'),
(3, 'Rendez-vous chez Kyle le 10 janvier 2019 pour une soirée wild ', 'Evénement '),
(4, 'Devenez membre de notre fan club, et recevez en exclusivité toute l\'actu de Franck and the Wilders', 'Fan club ');

-- --------------------------------------------------------

--
-- Structure de la table `Categorie`
--

CREATE TABLE `Categorie` (
  `id` int(20) NOT NULL,
  `type` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Chanson`
--

CREATE TABLE `Chanson` (
  `id` int(20) NOT NULL,
  `chanson` varchar(45) DEFAULT NULL,
  `album_id` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Galerie`
--

CREATE TABLE `Galerie` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Galerie`
--

INSERT INTO `Galerie` (`id`, `photo`) VALUES
(1, '/assets/images/Galerie/concert2.jpg'),
(2, '/assets/images/Galerie/concert.jpg'),
(3, '/assets/images/Galerie/elvis.jpg'),
(4, '/assets/images/Galerie/foule.jpg'),
(5, '/assets/images/Galerie/guitar-3131893_960_720.jpg'),
(6, '/assets/images/Galerie/guitar-3131895_960_720.jpg'),
(7, '/assets/images/Galerie/guitar-3264304_960_720.jpg'),
(8, '/assets/images/Galerie/guitar-905999_960_720.jpg'),
(9, '/assets/images/Galerie/hand-2825166_960_720.jpg'),
(10, '/assets/images/Galerie/performance-3158570_960_720.jpg'),
(11, '/assets/images/Galerie/photo.jpg'),
(12, '/assets/images/Galerie/rock-1560871__340.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `Goodies`
--

CREATE TABLE `Goodies` (
  `id` int(20) NOT NULL,
  `goodies` varchar(45) DEFAULT NULL,
  `prix` decimal(8,2) NOT NULL,
  `reference` varchar(45) DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Newsletter`
--

CREATE TABLE `Newsletter` (
  `id` int(20) NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `mail` varchar(320) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Stock`
--

CREATE TABLE `Stock` (
  `id` int(20) NOT NULL,
  `stock` int(20) DEFAULT NULL,
  `reference_id` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Worldtour`
--

CREATE TABLE `Worldtour` (
  `id` int(20) NOT NULL,
  `dateconcert` date DEFAULT NULL,
  `ville` varchar(45) DEFAULT NULL,
  `salle` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Worldtour`
--

INSERT INTO `Worldtour` (`id`, `dateconcert`, `ville`, `salle`) VALUES
(1, '2018-12-04', 'Ruffach', 'Salle Polyvalente'),
(2, '2018-12-06', 'Vendeheim', 'Paroisse Communale'),
(3, '2018-12-10', 'Brumath', 'Salle des Fêtes'),
(4, '2018-12-13', 'Haguenau', 'Marché de Noël'),
(5, '2018-12-20', 'Strasbourg', 'Cathédrale'),
(6, '2019-01-04', 'Bentdorf', 'Place de l\'église'),
(7, '2019-01-10', 'Kehl', 'Chez Kyle'),
(8, '2019-01-11', 'Karlsruhe', 'fête de la Bière (avec Kyle)'),
(9, '2019-01-17', 'Metz', 'Ecole primaire les rosiers'),
(10, '2019-01-28', 'Amiens', 'Franck Arena'),
(11, '2019-02-06', 'Paris', 'Aux Trois Maillets');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Album`
--
ALTER TABLE `Album`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Article`
--
ALTER TABLE `Article`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Categorie`
--
ALTER TABLE `Categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Chanson`
--
ALTER TABLE `Chanson`
  ADD PRIMARY KEY (`id`),
  ADD KEY `album_id` (`album_id`);

--
-- Index pour la table `Galerie`
--
ALTER TABLE `Galerie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Goodies`
--
ALTER TABLE `Goodies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categorie_id` (`categorie_id`);

--
-- Index pour la table `Newsletter`
--
ALTER TABLE `Newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Stock`
--
ALTER TABLE `Stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reference_id` (`reference_id`);

--
-- Index pour la table `Worldtour`
--
ALTER TABLE `Worldtour`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Album`
--
ALTER TABLE `Album`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Article`
--
ALTER TABLE `Article`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `Categorie`
--
ALTER TABLE `Categorie`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Chanson`
--
ALTER TABLE `Chanson`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Galerie`
--
ALTER TABLE `Galerie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `Goodies`
--
ALTER TABLE `Goodies`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Newsletter`
--
ALTER TABLE `Newsletter`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Stock`
--
ALTER TABLE `Stock`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Worldtour`
--
ALTER TABLE `Worldtour`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `Chanson`
--
ALTER TABLE `Chanson`
  ADD CONSTRAINT `chanson_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `Album` (`id`);

--
-- Contraintes pour la table `Goodies`
--
ALTER TABLE `Goodies`
  ADD CONSTRAINT `goodies_ibfk_1` FOREIGN KEY (`categorie_id`) REFERENCES `Categorie` (`id`);

--
-- Contraintes pour la table `Stock`
--
ALTER TABLE `Stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`reference_id`) REFERENCES `Goodies` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
