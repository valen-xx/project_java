-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 12 nov. 2023 à 03:49
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `vehicule`
--

-- --------------------------------------------------------

--
-- Structure de la table `alertes`
--

CREATE TABLE `alertes` (
  `Id` int(11) NOT NULL,
  `Alertes` varchar(255) DEFAULT NULL,
  `DateDincident` varchar(255) DEFAULT NULL,
  `Declarations` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `LieuDincident` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `alertes`
--

INSERT INTO `alertes` (`Id`, `Alertes`, `DateDincident`, `Declarations`, `Description`, `LieuDincident`) VALUES
(1, 'Vol', '2023-11-08', 'dr', '45', '34');

-- --------------------------------------------------------

--
-- Structure de la table `transfert`
--

CREATE TABLE `transfert` (
  `Id` int(11) NOT NULL,
  `Adresse` varchar(255) DEFAULT NULL,
  `DateTransfert` varchar(255) DEFAULT NULL,
  `Etat` varchar(255) DEFAULT NULL,
  `MotifTransaction` varchar(255) DEFAULT NULL,
  `NoPiece` varchar(255) DEFAULT NULL,
  `NouveauNom` varchar(255) DEFAULT NULL,
  `NouveauPrenom` varchar(255) DEFAULT NULL,
  `Telephone` varchar(255) DEFAULT NULL,
  `TypePiece` varchar(255) DEFAULT NULL,
  `sexe` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `transfert`
--

INSERT INTO `transfert` (`Id`, `Adresse`, `DateTransfert`, `Etat`, `MotifTransaction`, `NoPiece`, `NouveauNom`, `NouveauPrenom`, `Telephone`, `TypePiece`, `sexe`) VALUES
(1, 'Carrefour-feuilles rue sicot prolongé', '2023-10-07', 'A', '2', '23', 'bob', 'jr', '+50949089050', 'Carte identite', 'm'),
(2, 'Carrefour-feuilles rue sicot prolongé', '2023-10-07', 'A', '2', '23', 'bob', 'jr', '+50949089050', 'Carte identite', 'm');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`ID`, `password`, `username`) VALUES
(1, '1234', 'resocorp01'),
(2, '1111', 'Simon ');

-- --------------------------------------------------------

--
-- Structure de la table `vehicules`
--

CREATE TABLE `vehicules` (
  `ID` int(11) NOT NULL,
  `Adresseproprietaire` varchar(255) DEFAULT NULL,
  `Alerte` varchar(255) DEFAULT NULL,
  `Annees` varchar(255) DEFAULT NULL,
  `Couleur` varchar(255) DEFAULT NULL,
  `Courrielproprietaire` varchar(255) DEFAULT NULL,
  `Datealerte` varchar(255) DEFAULT NULL,
  `Dateenregistrement` varchar(255) DEFAULT NULL,
  `Marque` varchar(255) DEFAULT NULL,
  `Modele` varchar(255) DEFAULT NULL,
  `NbCylindre` int(11) NOT NULL,
  `NoMoteur` varchar(255) DEFAULT NULL,
  `Nopiece` varchar(255) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Plaqueimmatriculation` varchar(255) DEFAULT NULL,
  `Telephoneproprietaire` varchar(255) DEFAULT NULL,
  `Typedevehicule` varchar(255) DEFAULT NULL,
  `Typeessence` varchar(255) DEFAULT NULL,
  `Typetransmission` varchar(255) DEFAULT NULL,
  `nomProprietaire` varchar(255) DEFAULT NULL,
  `prenomProprietaire` varchar(255) DEFAULT NULL,
  `typePiece` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `vehicules`
--

INSERT INTO `vehicules` (`ID`, `Adresseproprietaire`, `Alerte`, `Annees`, `Couleur`, `Courrielproprietaire`, `Datealerte`, `Dateenregistrement`, `Marque`, `Modele`, `NbCylindre`, `NoMoteur`, `Nopiece`, `Photo`, `Plaqueimmatriculation`, `Telephoneproprietaire`, `Typedevehicule`, `Typeessence`, `Typetransmission`, `nomProprietaire`, `prenomProprietaire`, `typePiece`) VALUES
(1, 'Carrefour-feuilles rue sicot prolongé', '88', '2023-11-15', 'uy', 'valentinstanley01@gmail.com', '2023-11-14', '2023-11-08', 'oo', 'v', 45, '9', '678', 'k', '9', '+50949089050', 'Motocyclette', 'jj', '5g', 'Valentin', 'Stanley', 'Licence'),
(2, 'Carrefour-feuilles rue sicot prolongé', '88', '2023-11-20', 'uy', 'valentinstanley01@gmail.com', '2023-11-29', '2023-11-22', 'oo', 'v', 89, '9', '678', 'k', '9', '+50949089050', 'Motocyclette', 'jj', '5g', 'Valentin', 'Stanley', 'Licence');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `alertes`
--
ALTER TABLE `alertes`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `transfert`
--
ALTER TABLE `transfert`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `vehicules`
--
ALTER TABLE `vehicules`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `alertes`
--
ALTER TABLE `alertes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `transfert`
--
ALTER TABLE `transfert`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `vehicules`
--
ALTER TABLE `vehicules`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
