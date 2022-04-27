CREATE DATABASE `gyakorlat7`
CHARACTER SET utf8 COLLATE utf8_general_ci;

USE `gyakorlat7`;

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
