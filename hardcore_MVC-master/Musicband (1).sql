-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mer 02 Mai 2018 à 12:01
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
  `pochetteAlbum` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Album`
--

INSERT INTO `Album` (`id`, `album`, `pochetteAlbum`) VALUES
(1, 'Just Franck', '/assets/images/Discographie/album2.jpg'),
(2, 'Franck Strickes Back', '/assets/images/Discographie/album1.jpg'),
(3, 'Wilder4ever', '/assets/images/Discographie/album3.jpeg'),
(4, NULL, ''),
(5, NULL, NULL),
(6, NULL, NULL),
(7, NULL, NULL),
(8, NULL, NULL),
(9, NULL, '=/assets/images/Discographieimg_5ae2ede72465c.png'),
(10, NULL, 'assets/images/Discographieimg_5ae2ee78f2d70.png'),
(11, NULL, 'assets/images/Discographie/img_5ae2ef4291bae.png'),
(12, NULL, 'assets/images/Discographie/img_5ae2ef623ac63.png'),
(13, NULL, 'assets/images/Discographie/img_5ae2f21ba0465.png'),
(14, NULL, 'assets/images/Discographie/img_5ae2f2554f1e7.png'),
(15, NULL, 'assets/images/Discographie/img_5ae2f28247360.png'),
(16, NULL, 'assets/images/Discographie/img_5ae2f2f6db740.png'),
(17, NULL, 'assets/images/Discographie/img_5ae2f3b9ce2e9.png'),
(18, NULL, 'assets/images/Discographie/img_5ae2f3eb7c0f1.png'),
(19, NULL, 'assets/images/Discographie/img_5ae2f409213b6.png'),
(20, NULL, 'assets/images/Discographie/img_5ae2f419d1a1e.png'),
(21, NULL, 'assets/images/Discographie/img_5ae2f41d9a979.png'),
(22, NULL, 'assets/images/Discographie/img_5ae2f42ccf5e0.png'),
(23, NULL, 'assets/images/Discographie/img_5ae2f44e376ed.png'),
(24, NULL, 'assets/images/Discographie/img_5ae2f45edee93.png'),
(25, NULL, 'assets/images/Discographie/img_5ae2f54122726.png');

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
(1, 'Le nouveau titre The Handler vient de sortir.\r\nPreuve que le nouvel album de Franck&TheWilders, “A.i.” ne cesse d\'étonner: déjà cinq titres de dévoilés. après un Psycho Robot, un Dead & Happy qui renoue avec la joie, le déjà célèbre Mercy et un Reapers tout en guitares, voici un dernier titre à l\'atmosphère anxiogène. Le groupe avait également rappelé sa volonté d’explorer une nouvelle palette d’émotions. C\'est ici chose faite.\r\nLe fameux timbre de voix du chanteur Franck Wild porte cette chanson oppressante. Les paroles vont de pair: «J\'ai été programmé pour obéir, j\'exécuterai vos ordres». Tout un programme. Ce nouveau titre reste dans leur répertoire habituel. L\'album “A.i.” se conçoit comme une histoire à lui seul: The Handler est le dernier épisode avant le combat du héros face à des forces obscures qui l\'asservissent. La puissance de ce titre colle à cette idée d\'une tentative d\'empêcher la transformation de l\'humanité en Intelligence Artificielle.\r\n', 'On parle de nous dans Olivier Magazine!!!'),
(2, 'Genre : Scène Française\r\nLe groupe à l\'énergie fracassante remonte sur scène en 2018 avec The MonkAdelic Tour et prépare un live spectaculaire ! Franck & The Wilders sur scène, ce sont des geeks survitaminés qui imaginent le concert du futur : un punk numérique où la technologie vient sublimer la frénésie rock du groupe.\r\nDernière News : RESERVEZ / Trois nouvelles dates à La Cigale pour FATW en Novembre !', 'Evénement\r\n'),
(3, 'Genre : Scène Française\r\nLe groupe à l\'énergie fracassante remonte sur scène en 2018 avec The MonkAdelic Tour et prépare un live spectaculaire ! Franck & The Wilders sur scène, ce sont des geeks survitaminés qui imaginent le concert du futur : un punk numérique où la technologie vient sublimer la frénésie rock du groupe.\r\nDernière News : RESERVEZ / Trois nouvelles dates à La Cigale pour FATW en Novembre !', 'Evénement '),
(4, 'Ton endroit préféré pour voir tes potes à Lille ?\r\nIl y a une brasserie typique du Nord dans le vieux Lille : Les Compagnons de la Grappe. J’habitais pas très loin, c’est devenu ma cantine et les mecs qui y bossent sont des amis maintenant. Et en tant qu’expatrié, j’adore passer par la friterie Sensas ou m’acheter des gaufres Meert.\r\nEst-ce que tu serais capable de réparer toi-même un vélo ?\r\nJe n’ai plus de vélo, mais je savais le faire. Changer une roue ou une chaîne, ça devrait aller. Et au pire, mon beau-père est un super cycliste donc il peut toujours me coacher.\r\nEst-ce que ça te tente de travailler pour faire tes courses dans un supermarché collaboratif ?\r\nJ’habite à Los Angeles depuis trois ans, et c’est quelque chose qui est déjà pas mal répandu là-bas. Je trouve le concept très bien parce que les gens peuvent mieux manger, avec des produits bio ou de meilleure qualité moyennant un peu de travail. Ça permet aussi de mieux comprendre le fonctionnement de la distribution et donc d’être acteur de la cause qu’on défend.\r\nLe truc qui n’a jamais été inventé et qui changerait ta vie de musicien ?\r\nUne machine pour se téléporter ! Ça me permettrait de partir en tournée et d’avoir une vie normale. Même si ma femme est chanteuse et connaît ce genre de problème, c’est une vie spéciale. Et vu que j’écris pas mal sur la société, j’ai besoin de rencontrer les gens. Donc oui, la téléportation.\r\nQu’est-ce qui est le plus ringard en concert, l’Auto-Tune ou un hologramme ?\r\nPeut-être un peu plus l’hologramme parce que c’est forcément un retour vers le passé. Je trouve pas que l’Auto-Tune soit dépassé mais juste naze, c’est un autre délire. Pourquoi se prendre la tête à bien chanter si on peut retoucher la voix après ? Au final, c’est ultra ringard de faire un concert humain avec juste guitare, basse, batterie et ordi, mais j’en suis fier.\r\n', 'Interview du TURFU de Franck Wild');

-- --------------------------------------------------------

--
-- Structure de la table `Carousel`
--

CREATE TABLE `Carousel` (
  `id` int(11) NOT NULL,
  `url_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Carousel`
--

INSERT INTO `Carousel` (`id`, `url_image`) VALUES
(1, '/assets/images/Galerie/concert.jpg'),
(2, '/assets/images/Galerie/concert2.jpg'),
(3, '/assets/images/Galerie/foule.jpg');

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
(1, 'Vetements'),
(2, 'Chapeaux'),
(3, 'Mediators'),
(4, 'Pins'),
(5, 'Portecles'),
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
(6, '/assets/images/Galerie/guitar-3131895_960_720.jpg'),
(7, '/assets/images/Galerie/guitar-3264304_960_720.jpg'),
(8, 'assets/images/Galerie/img_5ae84f6adbd92.jpg'),
(9, 'assets/images/Galerie/img_5ae84f93c3b41.jpg'),
(11, 'assets/images/Galerie/img_5ae84fc92887e.jpg'),
(12, 'assets/images/Galerie/img_5ae84fd3d0921.jpg'),
(14, 'assets/images/Galerie/img_5ae84ffcdf9ee.jpg'),
(15, 'assets/images/Galerie/img_5ae8501e08f25.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `Goodies`
--

CREATE TABLE `Goodies` (
  `id` int(20) NOT NULL,
  `goodies` varchar(255) DEFAULT NULL,
  `prix` decimal(8,2) NOT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `stock` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Goodies`
--

INSERT INTO `Goodies` (`id`, `goodies`, `prix`, `reference`, `categorie_id`, `stock`) VALUES
(1, '/assets/images/goodies/Vetements/1.png', '29.00', 'A0111', 1, NULL),
(2, '/assets/images/goodies/Vetements/2.png', '29.00', 'A0113', 1, NULL),
(3, '/assets/images/goodies/Vetements/3.png', '29.00', 'A0112', 1, NULL),
(4, '/assets/images/goodies/Vetements/4.png', '29.00', 'A0114', 1, NULL),
(5, '/assets/images/goodies/Vetements/5.png', '49.00', 'A0212', 1, NULL),
(6, '/assets/images/goodies/Vetements/6.png', '49.00', 'A0214', 1, NULL),
(7, '/assets/images/goodies/Vetements/7.png', '49.00', 'A0215', 1, NULL),
(8, '/assets/images/goodies/Vetements/8.png', '29.00', 'A0412', 1, NULL),
(9, '/assets/images/goodies/Vetements/9.png', '29.00', 'A0414', 1, NULL),
(10, '/assets/images/goodies/chapeaux/1.png', '19.00', 'B0111', 2, NULL),
(11, '/assets/images/goodies/chapeaux/2.png', '19.00', 'B0112', 2, NULL),
(12, '/assets/images/goodies/chapeaux/3.png', '19.00', 'B0211', 2, NULL),
(13, '/assets/images/goodies/chapeaux/4.png', '19.00', 'B0212', 2, NULL),
(14, '/assets/images/goodies/chapeaux/5.png', '19.00', 'B0311', 2, NULL),
(15, '/assets/images/goodies/chapeaux/6.png', '19.00', 'B0311', 2, NULL),
(16, '/assets/images/goodies/mediators/1.png', '5.00', 'C0111', 3, NULL),
(17, '/assets/images/goodies/mediators/2.png', '5.00', 'C0112', 3, NULL),
(18, '/assets/images/goodies/pins/1.png', '5.00', 'D0111', 4, NULL),
(19, '/assets/images/goodies/pins/2.png', '5.00', 'D0112', 4, NULL),
(20, '/assets/images/goodies/Portecles/1.png', '5.00', 'E0111', 5, NULL),
(21, '/assets/images/goodies/Portecles/2.png', '5.00', 'E0112', 5, NULL),
(22, '/assets/images/goodies/Portecles/3.png', '5.00', 'E0211', 5, NULL),
(24, '/assets/images/goodies/Mugs/1.png', '15.00', 'F0111', 6, NULL),
(25, '/assets/images/goodies/Mugs/2.png', '15.00', 'F0112', 6, NULL),
(26, '/assets/images/goodies/Mugs/3.png', '15.00', 'F0211', 6, NULL),
(28, '/assets/images/goodies/Sacs/1.png', '29.00', 'G0111', 7, NULL),
(29, '/assets/images/goodies/Sacs/2.png', '29.00', 'G0112', 7, NULL),
(30, '/assets/images/goodies/Sacs/3.png', '29.00', 'G0211', 7, NULL),
(31, '/assets/images/goodies/Sacs/4.png', '29.00', 'G0212', 7, NULL),
(34, '/assets/images/goodies/Vetements/10.png', '29.00', 'A0115', 1, 'disponible'),
(37, '/assets/images/goodies/Vetements/11.png', '29.00', 'A0116', 1, ''),
(38, '/assets/images/goodies/Vetements/12.png', '29.00', 'A0117', 1, NULL),
(39, '/assets/images/goodies/Vetements/13.png', '29.00', 'A0118', 1, NULL),
(40, '/assets/images/goodies/Vetements/14.png', '29.00', 'A0119', 1, 'disponible'),
(41, '/assets/images/goodies/Vetements/15.png', '29.00', 'A0120', 1, NULL),
(62, '/assets/images/goodies/Vetements/16.png', '29.00', 'A0121', 1, NULL),
(63, '/assets/images/goodies/Vetements/17.png', '29.00', 'A0122', 1, NULL),
(64, '/assets/images/goodies/Vetements/18.png', '29.00', 'A0123', 1, NULL),
(65, '/assets/images/goodies/Vetements/19.png', '29.00', 'A0124', 1, NULL),
(66, '/assets/images/goodies/Vetements/20.png', '29.00', 'A0125', 1, NULL),
(67, '/assets/images/goodies/Vetements/21.png', '29.00', 'A0126', 1, NULL),
(68, '/assets/images/goodies/Vetements/22.png', '29.00', 'A0127', 1, NULL),
(69, '/assets/images/goodies/Vetements/23.png', '29.00', 'A0128', 1, NULL),
(70, '/assets/images/goodies/Vetements/24.png', '29.00', 'A0129', 1, NULL),
(71, '/assets/images/goodies/Vetements/25.png', '29.00', 'A0130', 1, NULL),
(72, '/assets/images/goodies/chapeaux/7.png', '19.00', 'B0312', 2, NULL),
(73, '/assets/images/goodies/chapeaux/8.png', '19.00', 'B0313', 2, NULL),
(74, '/assets/images/goodies/chapeaux/9.png', '19.00', 'B0314', 2, NULL),
(75, '/assets/images/goodies/chapeaux/10.png', '19.00', 'B0315', 2, NULL),
(76, '/assets/images/goodies/chapeaux/11.png', '19.00', 'B0316', 2, NULL),
(77, '/assets/images/goodies/Sacs/5.png', '29.00', 'G0213', 7, NULL),
(78, '/assets/images/goodies/pins/3.png', '5.00', 'D0113', 4, NULL),
(79, '/assets/images/goodies/pins/4.png', '5.00', 'D0114', 4, NULL),
(80, '/assets/images/goodies/pins/6.png', '5.00', 'D0116', 4, NULL),
(81, '/assets/images/goodies/pins/8.png', '5.00', 'D0118', 4, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `Newsletter`
--

CREATE TABLE `Newsletter` (
  `id` int(20) NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `mail` varchar(320) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Newsletter`
--

INSERT INTO `Newsletter` (`id`, `nom`, `mail`) VALUES
(1, 'ccc', 'ccc@gmail.com'),
(2, 'coralie', 'coraliecc@gmail.com');

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
(37, '2018-09-01', 'Strasbourg ', 'Zénith'),
(38, '2018-11-10', 'Kelh', 'Chez Kyle'),
(39, '2018-12-04', 'Ruffach', 'Salle Polyvalente'),
(40, '2018-12-06', 'Vendeheim', 'Paroisse Communale'),
(41, '2018-12-10', 'Brumath', 'Salle des Fêtes'),
(42, '2018-12-13', 'Haguenau', 'Marché de Noël'),
(43, '2018-12-20', 'Strasbourg', 'Cathédrale'),
(44, '2019-01-04', 'Bentdorf', 'Place de l\'église'),
(45, '2019-01-10', 'Kehl', 'Chez Kyle'),
(46, '2019-01-11', 'Karlsruhe', 'Fête de la bière (avec Kyle)'),
(47, '2019-01-17', 'Metz', 'Ecole primaire les rosiers'),
(48, '2019-01-28', 'Amiens', 'Franck Arena'),
(49, '2019-12-06', 'Paris', 'Aux Trois Maillets'),
(50, '2019-02-13', 'Paris', 'Le café Oscar');

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
-- Index pour la table `Carousel`
--
ALTER TABLE `Carousel`
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
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT pour la table `Article`
--
ALTER TABLE `Article`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `Carousel`
--
ALTER TABLE `Carousel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `Goodies`
--
ALTER TABLE `Goodies`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT pour la table `Newsletter`
--
ALTER TABLE `Newsletter`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `Stock`
--
ALTER TABLE `Stock`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Worldtour`
--
ALTER TABLE `Worldtour`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
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
