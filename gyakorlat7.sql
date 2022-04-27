CREATE DATABASE `gyakorlat7`
CHARACTER SET utf8 COLLATE utf8_general_ci;

USE `gyakorlat7`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `bejelentkezes` varchar(12) NOT NULL default '',
  `uzenet` varchar(200) NOT NULL default '',
  PRIMARY KEY  (`id`)
)
ENGINE = MYISAM
CHARACTER SET utf8 COLLATE utf8_general_ci;

INSERT INTO `messages` (`id`,`bejelentkezes`,`uzenet`) VALUES 
 (1,'Login1','finom a kakos csiga 1'),
 (2,'Login2','finom a kakos csiga 2'),
 (3,'Login3','finom a kakos csiga 3'),
 (4,'Login4','finom a kakos csiga 4'),
 (5,'Login5','finom a kakos csiga 5'),
 (6,'Login6','finom a kakos csiga 6'),
 (7,'Login7','finom a kakos csiga 7'),
 (8,'Login8','finom a kakos csiga 8'),
 (9,'Login9','finom a kakos csiga 9'),
 (10,'Login10','finom a kakos csiga 10'),
 (11,'Login11','finom a kakos csiga 11'),
 (12,'Login12','finom a kakos csiga 12');
