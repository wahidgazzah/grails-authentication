-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Sam 21 Mars 2015 à 21:32
-- Version du serveur: 5.5.8
-- Version de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `usermanagerdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `registration_code`
--

CREATE TABLE IF NOT EXISTS `registration_code` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime NOT NULL,
  `token` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `registration_code`
--


-- --------------------------------------------------------

--
-- Structure de la table `sec_role`
--

CREATE TABLE IF NOT EXISTS `sec_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `authority` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `authority` (`authority`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `sec_role`
--

INSERT INTO `sec_role` (`id`, `version`, `authority`, `description`) VALUES
(1, 1, 'ROLE_ADMIN', ''),
(2, 0, 'ROLE_USER', '');

-- --------------------------------------------------------

--
-- Structure de la table `sec_user`
--

CREATE TABLE IF NOT EXISTS `sec_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `account_expired` bit(1) NOT NULL,
  `account_locked` bit(1) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `niveau` varchar(18) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `password_expired` bit(1) NOT NULL,
  `pays` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `sexe` varchar(5) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `ville` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `sec_user`
--

INSERT INTO `sec_user` (`id`, `version`, `account_expired`, `account_locked`, `age`, `email`, `enabled`, `niveau`, `nom`, `password`, `password_expired`, `pays`, `prenom`, `sexe`, `username`, `ville`) VALUES
(1, 1, b'0', b'0', 29, 'wahid.gazzah@gmail.com', b'1', ' bac +5 et sup', 'wahid', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', b'0', 'Tunisie', 'wahid', 'Homme', 'wahid', 'Msaken'),
(2, 1, b'0', b'0', NULL, 'admin@email.com', b'1', 'Etudes secondaires', 'admin', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', b'0', NULL, 'admin', 'Homme', 'admin', NULL),
(3, 1, b'0', b'0', NULL, 'user@email.com', b'1', ' bac +5 et sup', 'user', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', b'0', NULL, 'user', 'Homme', 'user', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sec_user_sec_role`
--

CREATE TABLE IF NOT EXISTS `sec_user_sec_role` (
  `sec_role_id` bigint(20) NOT NULL,
  `sec_user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`sec_role_id`,`sec_user_id`),
  KEY `FK6630E2A63C34C80` (`sec_user_id`),
  KEY `FK6630E2ABE9888A0` (`sec_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `sec_user_sec_role`
--

INSERT INTO `sec_user_sec_role` (`sec_role_id`, `sec_user_id`) VALUES
(1, 1),
(2, 1),
(1, 2),
(2, 2),
(2, 3);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `sec_user_sec_role`
--
ALTER TABLE `sec_user_sec_role`
  ADD CONSTRAINT `FK6630E2ABE9888A0` FOREIGN KEY (`sec_role_id`) REFERENCES `sec_role` (`id`),
  ADD CONSTRAINT `FK6630E2A63C34C80` FOREIGN KEY (`sec_user_id`) REFERENCES `sec_user` (`id`);
