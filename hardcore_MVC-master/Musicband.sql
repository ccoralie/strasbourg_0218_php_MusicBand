-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 24 Avril 2018 à 17:15
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
  `album` varchar(45) DEFAULT NULL,
  `pochetteAlbum` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Album`
--

INSERT INTO `Album` (`id`, `album`, `pochetteAlbum`) VALUES
(1, 'Just Franck', '/assets/images/Discographie/album2.jpg'),
(2, 'Franck Strickes Back', '/assets/images/Discographie/album1.jpg'),
(3, 'Wilder4ever', '/assets/images/Discographie/album3.jpeg');

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

--
-- Contenu de la table `Categorie`
--

INSERT INTO `Categorie` (`id`, `type`) VALUES
(1, 'Vêtements'),
(2, 'Chapeaux'),
(3, 'Médiators'),
(4, 'Pins'),
(5, 'Porteclés'),
(6, 'Mugs'),
(7, 'Sacs');

-- --------------------------------------------------------

--
-- Structure de la table `Chanson`
--

CREATE TABLE `Chanson` (
  `id` int(20) NOT NULL,
  `chanson` varchar(45) DEFAULT NULL,
  `album_id` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Chanson`
--

INSERT INTO `Chanson` (`id`, `chanson`, `album_id`) VALUES
(1, 'Vazy Francky c\'est bon', 1),
(2, 'Francky&theGang', 1),
(3, 'Because I FRANCK you', 1),
(4, 'For the love of Franck', 1),
(5, 'Franck-ly', 1),
(6, 'Into the Wild', 1),
(7, 'FRANCK', 2),
(8, 'Bob&Franck', 2),
(9, 'FunFranck', 3);

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
  `goodies` varchar(255) DEFAULT NULL,
  `prix` decimal(8,2) NOT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Goodies`
--

INSERT INTO `Goodies` (`id`, `goodies`, `prix`, `reference`, `categorie_id`) VALUES
(1, '/assets/images/goodies/vetement/t-shirts-1_Blanc.png', '29.00', 'A0111', 1),
(2, '/assets/images/goodies/vetement/t-shirts-1_Blanc.png', '29.00', 'A0113', 1),
(3, '/assets/images/goodies/vetement/t-shirts-1.jpg', '29.00', 'A0112', 1),
(4, '/assets/images/goodies/vetement/t-shirts-1.jpg', '29.00', 'A0114', 1),
(5, '/assets/images/goodies/vetement/sweat.jpg', '49.00', 'A0212', 1),
(6, '/assets/images/goodies/vetement/sweat.jpg', '49.00', 'A0214', 1),
(7, '/assets/images/goodies/vetement/sweat.jpg', '49.00', 'A0215', 1),
(8, '/assets/images/goodies/vetement/short.jpg', '29.00', 'A0412', 1),
(9, '/assets/images/goodies/vetement/short.jpg', '29.00', 'A0414', 1),
(10, '/assets/images/goodies/chapeaux/bob.jpg', '19.00', 'B0111', 2),
(11, '/assets/images/goodies/chapeaux/bob.jpg', '19.00', 'B0112', 2),
(12, '/assets/images/goodies/chapeaux/bonnet.jpg', '19.00', 'B0211', 2),
(13, '/assets/images/goodies/chapeaux/bonnet.jpg', '19.00', 'B0212', 2),
(14, '/assets/images/goodies/chapeaux/casquettes.jpg', '19.00', 'B0311', 2),
(15, '/assets/images/goodies/chapeaux/casquettes.jpg', '19.00', 'B0311', 2),
(16, '/assets/images/goodies/mediators/jazz-tones-black-horn-1-guitar-pick-4801-p[ekm]850x850[ekm].jpg', '5.00', 'C0111', 3),
(17, '/assets/images/goodies/mediators/jazz-tones-black-horn-1-guitar-pick-4801-p[ekm]850x850[ekm].jpg', '5.00', 'C0112', 3),
(18, '/assets/images/goodies/pins/badge-rond-a-epingle-de-76-mm.jpg', '5.00', 'D0111', 4),
(19, '/assets/images/goodies/pins/badge-rond-a-epingle-de-76-mm.jpg', '5.00', 'D0112', 4),
(20, '/assets/images/goodies/porteclé/porteclesimple.jpg', '5.00', 'E0111', 5),
(21, '/assets/images/goodies/porteclé/porteclesimple.jpg', '5.00', 'E0112', 5),
(22, '/assets/images/goodies/porteclé/tourdecoutissu.jpg', '5.00', 'E0211', 5),
(23, '/assets/images/goodies/porteclé/tourdecoutissu.jpg', '5.00', 'E0212', 5),
(24, '/assets/images/goodies/tasse/mug-sublimable-blanc.jpg', '15.00', 'F0111', 6),
(25, '/assets/images/goodies/tasse/mug-sublimable-blanc.jpg', '15.00', 'F0112', 6),
(26, '/assets/images/goodies/tasse/mug2.png', '15.00', 'F0211', 6),
(27, '/assets/images/goodies/tasse/mug2.png', '15.00', 'F0212', 6),
(28, '/assets/images/goodies/Sacs/sac.jpg', '29.00', 'G0111', 7),
(29, '/assets/images/goodies/Sacs/sac.jpg', '29.00', 'G0112', 7),
(30, '/assets/images/goodies/Sacs/besace.jpg', '29.00', 'G0211', 7),
(31, '/assets/images/goodies/Sacs/besace.jpg', '29.00', 'G0212', 7);

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

--
-- Contenu de la table `Stock`
--

INSERT INTO `Stock` (`id`, `stock`, `reference_id`) VALUES
(1, 50, 1),
(2, 50, 2),
(3, 50, 3),
(4, 50, 4),
(5, 50, 5),
(6, 50, 6),
(7, 50, 7),
(8, 50, 8),
(9, 50, 9),
(10, 50, 10),
(11, 50, 11),
(12, 50, 12),
(13, 50, 13),
(14, 50, 14),
(15, 50, 15),
(16, 50, 16),
(17, 50, 17),
(18, 50, 18),
(19, 50, 19),
(20, 50, 20),
(21, 50, 21),
(22, 50, 22),
(23, 50, 23),
(24, 50, 24),
(25, 50, 25),
(26, 50, 26),
(27, 50, 27),
(28, 50, 28),
(29, 50, 29),
(30, 50, 30),
(31, 50, 31);

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
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `Article`
--
ALTER TABLE `Article`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `Categorie`
--
ALTER TABLE `Categorie`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `Chanson`
--
ALTER TABLE `Chanson`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `Galerie`
--
ALTER TABLE `Galerie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `Goodies`
--
ALTER TABLE `Goodies`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT pour la table `Newsletter`
--
ALTER TABLE `Newsletter`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Stock`
--
ALTER TABLE `Stock`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
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
