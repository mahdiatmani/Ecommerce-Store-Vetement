-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 28 juin 2021 à 14:09
-- Version du serveur : 10.4.19-MariaDB
-- Version de PHP : 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `wshop`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `idarticle` int(11) NOT NULL,
  `libelle` varchar(100) DEFAULT NULL,
  `desc` varchar(500) DEFAULT NULL,
  `prix` double DEFAULT 0,
  `img` varchar(200) DEFAULT 'images/OXO---Homepage_39.jpg',
  `qte` int(11) DEFAULT 0,
  `dateajout` datetime DEFAULT current_timestamp(),
  `idCat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`idarticle`, `libelle`, `desc`, `prix`, `img`, `qte`, `dateajout`, `idCat`) VALUES
(1, 'Clé 32 Go', '                        eeee\r\n                    ', 33.2, 'produitImages/cle32.jpg', 4, '2014-12-27 11:31:29', 1),
(2, 'Test Produit MODIF', '                        desc2 Modif', 5.32, 'produitImages/default.gif', 12, '2014-12-27 12:06:58', 2),
(3, 'Etuit Tablette 1', NULL, 7, 'produitImages/etui1.jpg', 5, '2013-12-27 18:27:23', 3),
(4, 'Etuit iPad 1', NULL, 8, 'produitImages/etui2.jpg', 87, '2014-12-27 18:41:47', 3),
(5, 'Cle usb Nikon', NULL, 30, 'produitImages/nikon.jpg', 4, '2012-12-27 18:41:47', 2),
(6, 'Clé usb ', NULL, 21, 'produitImages/trus.jpg', 2, '2014-12-27 18:41:47', 1),
(7, 'Etuit 2 ', NULL, 18, 'produitImages/etui1.jpg', 5, '2014-12-27 18:41:47', 2),
(8, 'Clé 32Go 2', NULL, 40, 'produitImages/cle32.jpg', 77, '2014-12-27 18:41:47', 1),
(9, 'Etuit iPad 2', NULL, 19, 'produitImages/etui2.jpg', 3, '2014-12-27 18:41:47', 3),
(10, 'Marioo', NULL, 10, 'produitImages/mario.jpg', 7, '2014-12-27 18:41:47', 1),
(11, 'Cléé', NULL, 22, 'produitImages/cle32.jpg', 3, '2014-12-27 18:41:47', 1),
(12, 'Clé usb nikon 2', NULL, 30, 'produitImages/nikon.jpg', 8, '2014-12-27 19:04:21', 3),
(13, 'Clé Trus', NULL, 23, 'produitImages/trus.jpg', 9, '2014-12-27 19:04:21', 2),
(17, 'dolipran', ' tomobila jdida nadya w sri3a', 12000, 'produitImages/car.jpg', 123, '2021-06-21 14:18:38', 1),
(18, 'dolipran123', ' wsdawfdsf', 12.12, 'produitImages/car.jpg', 56, '2021-06-27 22:39:57', 2),
(19, 'dela7a', ' salam', 15.99, 'https://mms-images.out.customink.com/mms/images/catalog/categories/11_large.jpg&#8207;', 56, '2021-06-27 22:41:26', 1);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `idCat` int(11) NOT NULL,
  `categorie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`idCat`, `categorie`) VALUES
(1, 'Vêtements'),
(2, 'Chaussures'),
(3, 'Accessoires');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `email` varchar(100) NOT NULL,
  `mdp` varchar(100) NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `prenom` varchar(100) DEFAULT NULL,
  `dtnaissance` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`email`, `mdp`, `nom`, `prenom`, `dtnaissance`) VALUES
('ali', '123', 'Ali', 'ila', '1988-10-12 00:00:00'),
('cds', 'dfsdfds', NULL, NULL, '2021-06-21 14:42:14'),
('oulma34', '123', 'nono', 'bono', NULL),
('oulma47', '1q2w3e', 'OULMA', 'MOHAMEDoo', NULL),
('test', 'E', 'Z', 'sakZhana2', '1988-10-12 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `idcommande` int(11) NOT NULL,
  `login` varchar(100) DEFAULT NULL,
  `datecmd` datetime DEFAULT current_timestamp(),
  `prixtotale` double DEFAULT NULL,
  `etat` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`idcommande`, `login`, `datecmd`, `prixtotale`, `etat`) VALUES
(1011, 'oulma47', '2021-06-27 21:16:31', 21, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ligne_commande`
--

CREATE TABLE `ligne_commande` (
  `idcmd` int(11) NOT NULL,
  `idart` int(11) NOT NULL,
  `nbr` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ligne_commande`
--

INSERT INTO `ligne_commande` (`idcmd`, `idart`, `nbr`) VALUES
(1011, 6, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`idarticle`),
  ADD KEY `FK_categorie` (`idCat`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`idCat`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`idcommande`),
  ADD KEY `Login_idx` (`login`);

--
-- Index pour la table `ligne_commande`
--
ALTER TABLE `ligne_commande`
  ADD PRIMARY KEY (`idcmd`,`idart`),
  ADD KEY `idArt_idx` (`idart`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `idarticle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `idCat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `idcommande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1012;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_categorie` FOREIGN KEY (`idCat`) REFERENCES `categorie` (`idCat`);

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `Login` FOREIGN KEY (`login`) REFERENCES `client` (`email`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Contraintes pour la table `ligne_commande`
--
ALTER TABLE `ligne_commande`
  ADD CONSTRAINT `idArt` FOREIGN KEY (`idart`) REFERENCES `article` (`idarticle`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `idCmd` FOREIGN KEY (`idcmd`) REFERENCES `commande` (`idcommande`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
