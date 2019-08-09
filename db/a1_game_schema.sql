create database game;
use game;

CREATE TABLE testtab
(
  id INTEGER
  AUTO_INCREMENT,
name TEXT,
PRIMARY KEY
  (id)
) COMMENT='this is my test table';

  CREATE TABLE `deals`
  (
  `id` varchar
  (45) NOT NULL,
  `title` varchar
  (400) NOT NULL,
  `platform` varchar
  (45) NOT NULL,
  `list_price` decimal
  (6,2) NOT NULL,
  `msrp_price` decimal
  (6,2) NOT NULL,
  `discount` tinyint
  (2) NOT NULL,
  `url` varchar
  (200) NOT NULL COMMENT '\n',
  `thumbnail_url` varchar
  (200) NOT NULL,
  `thumbnail_key` varchar
  (36) NOT NULL,
  `source` varchar
  (45) NOT NULL,
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  UNIQUE KEY `id_UNIQUE`
  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

