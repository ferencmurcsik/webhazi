CREATE DATABASE `gyakorlat7`
CHARACTER SET utf8 COLLATE utf8_general_ci;

USE `gyakorlat7`;
CREATE TABLE `felhasznalok` (
  `id` int(10) UNSIGNED NOT NULL,
  `csaladi_nev` varchar(45) NOT NULL DEFAULT '',
  `uto_nev` varchar(45) NOT NULL DEFAULT '',
  `bejelentkezes` varchar(12) NOT NULL DEFAULT '',
  `jelszo` varchar(40) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `felhasznalok`
--

INSERT INTO `felhasznalok` (`id`, `csaladi_nev`, `uto_nev`, `bejelentkezes`, `jelszo`) VALUES
(1, 'Családi_1', 'Utónév_1', 'Login1', 'd4b90f2dfafc736205a98bf3ae6541431bc77d8e'),
(2, 'Családi_2', 'Utónév_2', 'Login2', '6cf8efacae19431476020c1e2ebd2d8acca8f5c0'),
(3, 'Családi_3', 'Utónév_3', 'Login3', 'df4d8ad070f0d1585e172a2150038df5cc6c891a'),
(4, 'Családi_4', 'Utónév_4', 'Login4', 'b020c308c155d6bbd7eb7d27bd30c0573acbba5b'),
(5, 'Családi_5', 'Utónév_5', 'Login5', '9ab1a4743b30b5e9c037e6a645f0cfee80fb41d4'),
(6, 'Családi_6', 'Utónév_6', 'Login6', '7ca01f28594b1a06239b1d96fc716477d198470b'),
(7, 'Családi_7', 'Utónév_7', 'Login7', '41ad7e5406d8f1af2deef2ade4753009976328f8'),
(8, 'Családi_8', 'Utónév_8', 'Login8', '3a340fe3599746234ef89591e372d4dd8b590053'),
(9, 'Családi_9', 'Utónév_9', 'Login9', 'c0298f7d314ecbc5651da5679a0a240833a88238'),
(10, 'Családi_10', 'Utónév_10', 'Login10', 'a477427c183664b57f977661ac3167b64823f366'),
(11, 'Családi_11', 'Utónév_11', 'Login11', '6c7e2151d33968a02198f7e2073b1d7b9ee65ed9'),
(12, 'Családi_12', 'Utónév_12', 'Login12', '0722b3651be10eeb8df39cced958b74a98d18ce3'),
(13, 'cik', 'cikóra', 'cik', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(14, 'Cikus', 'cikória', 'cikcik', '7c4a8d09ca3762af61e59520943dc26494f8941b');

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `bejelentkezes` varchar(12) NOT NULL default '',
  `uzenet` varchar(200) NOT NULL default '',
  `idobelyeg` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
)
ENGINE = MYISAM
CHARACTER SET utf8 COLLATE utf8_general_ci;

INSERT INTO `messages` (`id`,`bejelentkezes`,`uzenet`,`idobelyeg` ) VALUES 
 (1,'Login1','finom a kakos csiga 1',NOW()),
 (2,'Login2','finom a kakos csiga 2',NOW()),
 (3,'Login3','finom a kakos csiga 3',NOW()),
 (4,'Login4','finom a kakos csiga 4',NOW()),
 (5,'Login5','finom a kakos csiga 5',NOW()),
 (6,'Login6','finom a kakos csiga 6',NOW()),
 (7,'Login7','finom a kakos csiga 7',NOW()),
 (8,'Login8','finom a kakos csiga 8',NOW()),
 (9,'Login9','finom a kakos csiga 9',NOW()),
 (10,'Login10','finom a kakos csiga 10',NOW()),
 (11,'Login11','finom a kakos csiga 11',NOW()),
 (12,'Login12','finom a kakos csiga 12',NOW());
