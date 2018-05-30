--	Editado PostgresSQL
CREATE TABLE IF NOT EXISTS castle_dono_24 (
  id serial NOT NULL PRIMARY KEY,
  data_dominado TIMESTAMP NOT NULL default current_timestamp,
  guild_id int UNIQUE NOT NULL REFERENCES guilds (id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS castle_dono_open (
  id serial NOT NULL PRIMARY KEY,
  data_dominado TIMESTAMP NOT NULL default current_timestamp,
  guild_id int UNIQUE NOT NULL REFERENCES guilds (id) ON DELETE CASCADE ON UPDATE CASCADE
);



--	Original MySQL
CREATE TABLE IF NOT EXISTS `castle_dono` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `param1` varchar(255) NOT NULL,
  `param2` varchar(255) NOT NULL,
  `param3` varchar(255) NOT NULL,
  `param4` varchar(255) NOT NULL,
  `param5` varchar(255) NOT NULL,
  `param6` varchar(255) NOT NULL,
  `param7` varchar(255) NOT NULL,
  `delete_it` int(2) NOT NULL DEFAULT '1',
  `guild_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=230 ;