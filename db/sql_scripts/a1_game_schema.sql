create database game;
use game;

CREATE TABLE `deal` (
  `id` varchar(45) NOT NULL,
  `list` decimal(6,2) DEFAULT NULL,
  `discount` tinyint(3) unsigned DEFAULT NULL,
  `src` varchar(45) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`,`src`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1

CREATE TABLE `genre` (
  `title` varchar(400) NOT NULL,
  `genre` varchar(45) NOT NULL,
  PRIMARY KEY (`title`,`genre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1

CREATE TABLE `game` (
  `id` varchar(45) NOT NULL,
  `title` varchar(400) NOT NULL,
  `platform` varchar(45) NOT NULL,
  `url` varchar(200) NOT NULL,
  `src` varchar(45) NOT NULL,
  `desc` text DEFAULT NULL,
  `rating` tinytext DEFAULT NULL,
  `release` date DEFAULT NULL,
  `msrp` smallint(5) DEFAULT NULL,
  `thumbnail_url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`,`src`),
  FULLTEXT KEY `titledesc` (`title`,`desc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1

CREATE TABLE `metacritic` (
  `title` varchar(400) NOT NULL,
  `platform` varchar(45) NOT NULL,
  `score` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`title`,`platform`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1

CREATE TABLE `price_hist` (
  `id` varchar(400) NOT NULL,
  `date` date NOT NULL,
  `list` decimal(6,2) NOT NULL,
  `src` varchar(45) NOT NULL,
  PRIMARY KEY (`id`,`date`,`src`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1

CREATE TABLE `thumbnail` (
  `key` varchar(75) NOT NULL,
  `src` varchar(45) NOT NULL,
  UNIQUE KEY `id_UNIQUE` (`key`,`src`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1

/* old shit below */

CREATE TABLE `deals` (
  `id` varchar(45) NOT NULL,
  `title` varchar(400) NOT NULL,
  `platform` varchar(45) NOT NULL,
  `list_price` decimal(6,2) NOT NULL,
  `msrp_price` decimal(6,2) NOT NULL,
  `discount` tinyint(2) NOT NULL,
  `url` varchar(200) NOT NULL COMMENT '\n',
  `thumbnail_url` varchar(200) NOT NULL,
  `thumbnail_key` varchar(75) NOT NULL,
  `source` varchar(45) NOT NULL,
  `desc` text NULL,
  `rating` tinytext DEFAULT NULL,
  `release` datetime DEFAULT NULL,
  `updated` datetime NOT NULL,
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
