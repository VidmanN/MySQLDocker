CREATE DATABASE IF NOT EXISTS `TestDB` DEFAULT CHARSET=utf8;
USE `TestDB`;

DROP TABLE IF EXISTS `TestTable`;
CREATE TABLE `TestTable` (
  `ID` varchar(16) NOT NULL,
  `Name` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`ID`)
);

LOCK TABLES `TestTable` WRITE;
INSERT INTO `TestTable` VALUES
  ('1','Vasya'),
  ('1A','Olya'),
  ('2','Ivan'),
  ('2A','Margo');
UNLOCK TABLES;