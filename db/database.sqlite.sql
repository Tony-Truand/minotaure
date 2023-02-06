DROP TABLE IF EXISTS `character_tag`;

CREATE TABLE `character_tag` (
  `id_player` int(11) NOT NULL,
  `id_tag` int(11) NOT NULL,
  PRIMARY KEY (`id_player`,`id_tag`)
);


DROP TABLE IF EXISTS `hrpg`;

CREATE TABLE `hrpg` (
  `id` integer PRIMARY KEY AUTOINCREMENT,
  `nom` mediumtext NOT NULL,
  `mdp` mediumtext NOT NULL,
  `carac3` tinyint(1) NOT NULL,
  `carac2` tinyint(1) NOT NULL,
  `carac1` tinyint(1) NOT NULL,
  `hp` tinyint(1) NOT NULL,
  `wp` tinyint(1) NOT NULL,
  `leader` tinyint(1) NOT NULL DEFAULT '0',
  `traitre` tinyint(1) NOT NULL DEFAULT '0',
  `vote` tinyint(1) NOT NULL DEFAULT '0',
  `log` mediumtext,
  `lastlog` text,
  `active` tinyint(4) NOT NULL DEFAULT '0'
);


DROP TABLE IF EXISTS `loot`;

CREATE TABLE `loot` (
  `id` integer PRIMARY KEY AUTOINCREMENT,
  `idh` int(15) NOT NULL,
  `quoi` mediumtext NOT NULL
);

DROP TABLE IF EXISTS `sondage`;

CREATE TABLE `sondage` (
  `choix` mediumtext NOT NULL,
  `c1` mediumtext NOT NULL,
  `c2` mediumtext NOT NULL,
  `c3` mediumtext NOT NULL,
  `c4` mediumtext NOT NULL,
  `c5` mediumtext NOT NULL,
  `c6` mediumtext NOT NULL,
  `c7` mediumtext NOT NULL,
  `c8` mediumtext NOT NULL,
  `c9` mediumtext NOT NULL,
  `c10` mediumtext NOT NULL,
  `choixtag` mediumtext NOT NULL
);

INSERT INTO `sondage` (`choix`, `c1`, `c2`, `c3`, `c4`, `c5`, `c6`, `c7`, `c8`, `c9`, `c10`, `choixtag`)
VALUES
	('','','','','','','','','','','','');

DROP TABLE IF EXISTS `tag`;

CREATE TABLE `tag` (
  `id` integer PRIMARY KEY AUTOINCREMENT,
  `name` varchar(11) NOT NULL DEFAULT '',
  `category` int(11) DEFAULT NULL
);

CREATE UNIQUE INDEX tag_name_UNIQ ON tag (name,category);
