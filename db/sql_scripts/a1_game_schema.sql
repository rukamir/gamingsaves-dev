create database game;
use game;

CREATE TABLE `deal` (
  `id` varchar(45) NOT NULL,
  `list` decimal(6,2) DEFAULT NULL,
  `discount` tinyint(3) unsigned DEFAULT NULL,
  `src` varchar(45) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`,`src`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `genre` (
  `title` varchar(400) NOT NULL,
  `genre` varchar(45) NOT NULL,
  PRIMARY KEY (`title`,`genre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `game` (
  `id` varchar(45) NOT NULL,
  `title` varchar(400) NOT NULL,
  `platform` varchar(45) NOT NULL,
  `url` varchar(200) NOT NULL,
  `src` varchar(45) NOT NULL,
  `desc` text DEFAULT NULL,
  `rating` tinytext DEFAULT NULL,
  `release` date DEFAULT NULL,
  `msrp` decimal(6,2) DEFAULT NULL,
  `thumbnail_url` varchar(200) DEFAULT NULL,
  `pub` varchar(150) DEFAULT NULL,
  `dev` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`,`src`),
  FULLTEXT KEY `titledesc` (`title`,`desc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `metacritic` (
  `title` varchar(400) NOT NULL,
  `platform` varchar(45) NOT NULL,
  `score` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`title`,`platform`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `price_hist` (
  `id` varchar(400) NOT NULL,
  `date` date NOT NULL,
  `list` decimal(6,2) NOT NULL,
  `src` varchar(45) NOT NULL,
  PRIMARY KEY (`id`,`date`,`src`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `thumbnail` (
  `key` varchar(75) NOT NULL,
  `src` varchar(45) NOT NULL,
  UNIQUE KEY `id_UNIQUE` (`key`,`src`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `view` (
  `id` varchar(45) NOT NULL,
  `month` mediumint(5) unsigned NOT NULL DEFAULT 0,
  `all` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
