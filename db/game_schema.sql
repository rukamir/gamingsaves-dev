create database test;
use test;

CREATE TABLE testtab
(
id INTEGER AUTO_INCREMENT,
name TEXT,
PRIMARY KEY (id)
) COMMENT='this is my test table';

CREATE TABLE `test`.`game` (
  `title` VARCHAR(45) NOT NULL,
  `platform` VARCHAR(45) NOT NULL,
  `list_price` DECIMAL(6,2) NOT NULL,
  `msrp_price` DECIMAL(6,2) NOT NULL,
  `mem_price` DECIMAL(6,2) NULL DEFAULT NULL,
  `discount` TINYINT(2) NOT NULL,
  `url` VARCHAR(45) NOT NULL,
  `thumbnail` VARCHAR(45) NOT NULL,
  `thumbnail_key` VARCHAR(45) NOT NULL,
  `source` VARCHAR(45) NOT NULL,
  `updated` VARCHAR(45) NOT NULL,
  `created` VARCHAR(45) NOT NULL);
