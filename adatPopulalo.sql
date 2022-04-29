CREATE DATABASE `ebtelep`
CHARACTER SET utf8 COLLATE utf8_general_ci;

USE `ebtelep`;
CREATE TABLE `felhasznalok` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `csaladi_nev` varchar(45) NOT NULL default '',
  `uto_nev` varchar(45) NOT NULL default '',
  `bejelentkezes` varchar(12) NOT NULL default '',
  `jelszo` varchar(40) NOT NULL default '',
  PRIMARY KEY  (`id`)
)
ENGINE = MYISAM
CHARACTER SET utf8 COLLATE utf8_general_ci;

INSERT INTO `felhasznalok` (`id`, `csaladi_nev`, `uto_nev`, `bejelentkezes`, `jelszo`) VALUES
(1, 'Kovacs', 'Pal', 'kalapal', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(2, 'Varga', 'Tihamér', 'vargatih', '7c4a8d09ca3762af61e59520943dc26494f8941b');

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `bejelentkezes` varchar(91) NOT NULL default '',
  `uzenet` varchar(200) NOT NULL default '',
  `idobelyeg` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
)
ENGINE = MYISAM
CHARACTER SET utf8 COLLATE utf8_general_ci;

INSERT INTO `messages` (`id`,`bejelentkezes`,`uzenet`,`idobelyeg` ) VALUES 
 (1,'Vendég','Néró kutya nagyon kedves, köszönjük a kiválasztásban való segítséget!',NOW()),
 (2,'Varga Tihamér','Diego a kedvencem!',NOW()),
 (3,'Vendég','Nyitva vannak szerdánként is?',NOW()),
 (4,'Kovacs Pal','Sok szeretetet érdemelnének ezek a szegény állatok :(',NOW());
