--
-- Estrutura da tabela accounts
--

CREATE TABLE IF NOT EXISTS accounts (
  id bigserial PRIMARY KEY,
  name varchar(32) NOT NULL UNIQUE,
  password varchar(40) NOT NULL,
  secret varchar(16) DEFAULT NULL,
  type int NOT NULL DEFAULT '1',
  premdays int NOT NULL DEFAULT '0',
  coins int NOT NULL DEFAULT '0',
  lastday bigint NOT NULL DEFAULT '0',
  email varchar(255) NOT NULL DEFAULT '',
  creation int NOT NULL DEFAULT '0',
  vote int NOT NULL DEFAULT '0',
  key varchar(20) NOT NULL DEFAULT '0',
  email_new varchar(255) NOT NULL DEFAULT '',
  email_new_time int NOT NULL DEFAULT '0',
  rlname varchar(255) NOT NULL DEFAULT '',
  location varchar(255) NOT NULL DEFAULT '',
  page_access int NOT NULL DEFAULT '0',
  email_code varchar(255) NOT NULL DEFAULT '',
  next_email int NOT NULL DEFAULT '0',
  premium_points int NOT NULL DEFAULT '0',
  create_date int NOT NULL DEFAULT '0',
  create_ip bigint NOT NULL DEFAULT '0',
  last_post int NOT NULL DEFAULT '0',
  flag varchar(80) NOT NULL DEFAULT '',
  vip_time int NOT NULL DEFAULT '0',
  guild_points int NOT NULL DEFAULT '0',
  guild_points_stats int NOT NULL DEFAULT '0',
  passed int NOT NULL DEFAULT '0',
  block int NOT NULL DEFAULT '0',
  refresh int NOT NULL DEFAULT '0',
  birth_date varchar(50) NOT NULL DEFAULT '',
  gender varchar(20) NOT NULL DEFAULT '',
  loyalty_points bigint NOT NULL DEFAULT '0',
  authToken varchar(100) NOT NULL DEFAULT ''
)  ;

--
-- Adicionando dados a tabela  accounts
--

INSERT INTO accounts (name, password, secret, type, premdays, coins, lastday, email, creation, vote, key, email_new, email_new_time, rlname, location, page_access, email_code, next_email, premium_points, create_date, create_ip, last_post, flag, vip_time, guild_points, guild_points_stats, passed, block, refresh, birth_date, gender, loyalty_points, authToken) VALUES
('1', '060d38973b4ba4051fa6ca22f9acd4be7d1557fe', NULL, 1, 0, 0, 0, '', 0, 0, '0', '', 0, '', '', 9999, '', 0, 0, 0, 0, 0, 'unknown', 0, 0, 0, 0, 0, 0, '', '', 0, ''),
('god', '21298df8a3277357ee55b01df9530b535cf08ec1', NULL, 5, 0, 0, 0, 'gamemaster@tibia.com', 1507160060, 0, '', '', 0, '', '', 3, '', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, '', '', 0, '');

-- --------------------------------------------------------

--
-- Estrutura para a tabela  players
--

CREATE TABLE IF NOT EXISTS players (
id bigserial PRIMARY KEY ,
  name varchar(255) NOT NULL UNIQUE,
  group_id int NOT NULL DEFAULT '1',
  account_id int NOT NULL DEFAULT '0' REFERENCES accounts (id) ON DELETE CASCADE,
  level int NOT NULL DEFAULT '1',
  vocation int NOT NULL DEFAULT '0',
  health int NOT NULL DEFAULT '150',
  healthmax int NOT NULL DEFAULT '150',
  experience bigint NOT NULL DEFAULT '0',
  lookbody int NOT NULL DEFAULT '0',
  lookfeet int NOT NULL DEFAULT '0',
  lookhead int NOT NULL DEFAULT '0',
  looklegs int NOT NULL DEFAULT '0',
  looktype int NOT NULL DEFAULT '136',
  lookaddons int NOT NULL DEFAULT '0',
  maglevel int NOT NULL DEFAULT '0',
  mana int NOT NULL DEFAULT '0',
  manamax int NOT NULL DEFAULT '0',
  manaspent int NOT NULL DEFAULT '0',
  soul int NOT NULL DEFAULT '0',
  town_id int NOT NULL DEFAULT '0',
  posx int NOT NULL DEFAULT '0',
  posy int NOT NULL DEFAULT '0',
  posz int NOT NULL DEFAULT '0',
  conditions text NOT NULL,
  cap int NOT NULL DEFAULT '0',
  sex int NOT NULL DEFAULT '0',
  lastlogin bigint NOT NULL DEFAULT '0',
  lastip int NOT NULL DEFAULT '0',
  save smallint NOT NULL DEFAULT '1',
  skull smallint NOT NULL DEFAULT '0',
  skulltime int NOT NULL DEFAULT '0',
  lastlogout bigint NOT NULL DEFAULT '0',
  blessings smallint NOT NULL DEFAULT '0',
  blessings1 smallint NOT NULL DEFAULT '0',
  blessings2 smallint NOT NULL DEFAULT '0',
  blessings3 smallint NOT NULL DEFAULT '0',
  blessings4 smallint NOT NULL DEFAULT '0',
  blessings5 smallint NOT NULL DEFAULT '0',
  blessings6 smallint NOT NULL DEFAULT '0',
  blessings7 smallint NOT NULL DEFAULT '0',
  blessings8 smallint NOT NULL DEFAULT '0',
  onlinetime int NOT NULL DEFAULT '0',
  deletion bigint NOT NULL DEFAULT '0',
  balance bigint NOT NULL DEFAULT '0',
  offlinetraining_time bigint NOT NULL DEFAULT '43200',
  offlinetraining_skill int NOT NULL DEFAULT '-1',
  stamina smallint NOT NULL DEFAULT '2520',
  skill_fist int NOT NULL DEFAULT '10',
  skill_fist_tries bigint NOT NULL DEFAULT '0',
  skill_club int NOT NULL DEFAULT '10',
  skill_club_tries bigint NOT NULL DEFAULT '0',
  skill_sword int NOT NULL DEFAULT '10',
  skill_sword_tries bigint NOT NULL DEFAULT '0',
  skill_axe int NOT NULL DEFAULT '10',
  skill_axe_tries bigint NOT NULL DEFAULT '0',
  skill_dist int NOT NULL DEFAULT '10',
  skill_dist_tries bigint NOT NULL DEFAULT '0',
  skill_shielding int NOT NULL DEFAULT '10',
  skill_shielding_tries bigint NOT NULL DEFAULT '0',
  skill_fishing int NOT NULL DEFAULT '10',
  skill_fishing_tries bigint NOT NULL DEFAULT '0',
  deleted smallint NOT NULL DEFAULT '0',
  description varchar(255) NOT NULL DEFAULT '',
  comment text NOT NULL,
  create_ip bigint NOT NULL DEFAULT '0',
  create_date int NOT NULL DEFAULT '0',
  hide_char int NOT NULL DEFAULT '0',
  "cast" smallint NOT NULL DEFAULT '0',
  skill_critical_hit_chance int NOT NULL DEFAULT '0',
  skill_critical_hit_chance_tries bigint NOT NULL DEFAULT '0',
  skill_critical_hit_damage int NOT NULL DEFAULT '0',
  skill_critical_hit_damage_tries bigint NOT NULL DEFAULT '0',
  skill_life_leech_chance int NOT NULL DEFAULT '0',
  skill_life_leech_chance_tries bigint NOT NULL DEFAULT '0',
  skill_life_leech_amount int NOT NULL DEFAULT '0',
  skill_life_leech_amount_tries bigint NOT NULL DEFAULT '0',
  skill_mana_leech_chance int NOT NULL DEFAULT '0',
  skill_mana_leech_chance_tries bigint NOT NULL DEFAULT '0',
  skill_mana_leech_amount int NOT NULL DEFAULT '0',
  skill_mana_leech_amount_tries bigint NOT NULL DEFAULT '0',
  skill_criticalhit_chance bigint NOT NULL DEFAULT '0',
  skill_criticalhit_damage bigint NOT NULL DEFAULT '0',
  skill_lifeleech_chance bigint NOT NULL DEFAULT '0',
  skill_lifeleech_amount bigint NOT NULL DEFAULT '0',
  skill_manaleech_chance bigint NOT NULL DEFAULT '0',
  skill_manaleech_amount bigint NOT NULL DEFAULT '0',
  prey_stamina_1 int DEFAULT NULL,
  prey_stamina_2 int DEFAULT NULL,
  prey_stamina_3 int DEFAULT NULL,
  prey_column smallint NOT NULL DEFAULT '1',
  bonus_reroll int DEFAULT '0',
  xpboost_stamina smallint DEFAULT NULL,
  xpboost_value smallint DEFAULT NULL,
  marriage_status bigint NOT NULL DEFAULT '0',
  hide_skills int DEFAULT NULL,
  hide_set int DEFAULT NULL,
  former varchar(255) NOT NULL DEFAULT '-',
  signature varchar(255) NOT NULL DEFAULT '',
  marriage_spouse int NOT NULL DEFAULT '-1',
  loyalty_ranking smallint NOT NULL DEFAULT '0'  
)  ;

-- --------------------------------------------------------

-- Adicionando dados a tabela  players

-- foi colocado o id 0, pois quando é iniciado um novo servidor, ele carrega todas as casas do mapa
-- e salva na tabela houses, com o id:0
--

INSERT INTO players (name, group_id, account_id, level, vocation, health, healthmax, experience, lookbody, lookfeet, lookhead, looklegs, looktype, lookaddons, maglevel, mana, manamax, manaspent, soul, town_id, posx, posy, posz, conditions, cap, sex, lastlogin, lastip, save, skull, skulltime, lastlogout, blessings, blessings1, blessings2, blessings3, blessings4, blessings5, blessings6, blessings7, blessings8, onlinetime, deletion, balance, offlinetraining_time, offlinetraining_skill, stamina, skill_fist, skill_fist_tries, skill_club, skill_club_tries, skill_sword, skill_sword_tries, skill_axe, skill_axe_tries, skill_dist, skill_dist_tries, skill_shielding, skill_shielding_tries, skill_fishing, skill_fishing_tries, deleted, description, comment, create_ip, create_date, hide_char, "cast", skill_critical_hit_chance, skill_critical_hit_chance_tries, skill_critical_hit_damage, skill_critical_hit_damage_tries, skill_life_leech_chance, skill_life_leech_chance_tries, skill_life_leech_amount, skill_life_leech_amount_tries, skill_mana_leech_chance, skill_mana_leech_chance_tries, skill_mana_leech_amount, skill_mana_leech_amount_tries, skill_criticalhit_chance, skill_criticalhit_damage, skill_lifeleech_chance, skill_lifeleech_amount, skill_manaleech_chance, skill_manaleech_amount, prey_stamina_1, prey_stamina_2, prey_stamina_3, prey_column, bonus_reroll, xpboost_stamina, xpboost_value, marriage_status, hide_skills, hide_set, former, signature, marriage_spouse, loyalty_ranking) VALUES
('Rook Sample', 1, 1, 1, 0, 150, 150, 0, 106, 95, 78, 116, 128, 0, 0, 5, 5, 0, 0, 2, 0, 0, 0, '', 400, 0, 1407021967, 1793873073, 1, 0, 0, 1407021968, 0, 0, 0, 0, 0, 0, 0, 0, 0, 203, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '-', '', -1, 0),
('Sorcerer Sample', 1, 1, 8, 1, 185, 185, 4200, 106, 95, 78, 116, 128, 0, 0, 40, 40, 0, 0, 2, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 0, 1507158878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '-', '', -1, 0),
('Druid Sample', 1, 1, 8, 2, 185, 185, 4200, 106, 95, 78, 116, 128, 0, 0, 40, 40, 0, 0, 2, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 0, 1507158900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '-', '', -1, 0),
('Paladin Sample', 1, 1, 8, 3, 185, 185, 4200, 106, 95, 78, 116, 128, 0, 0, 40, 40, 0, 0, 2, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 0, 1507158919, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '-', '', -1, 0),
('Knight Sample', 1, 1, 8, 4, 185, 185, 4200, 106, 95, 78, 116, 128, 0, 0, 40, 40, 0, 0, 2, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 0, 1507158938, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '-', '', -1, 0),
('Community Manager', 5, 2, 1, 0, 150, 150, 0, 106, 95, 78, 116, 128, 0, 0, 5, 5, 0, 0, 2, 0, 0, 0, '', 400, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 0, 1507160111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '-', '', -1, 0);
-- --------------------------------------------------------

--
-- Estrutura para a tabela  account_bans
--

CREATE TABLE IF NOT EXISTS account_bans (
  account_id bigserial PRIMARY KEY REFERENCES accounts (id) ON DELETE CASCADE ON UPDATE CASCADE,
  reason varchar(255) NOT NULL,
  banned_at bigint NOT NULL,
  expires_at bigint NOT NULL,
  banned_by int NOT NULL REFERENCES players (id) ON DELETE CASCADE ON UPDATE CASCADE
) ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  account_ban_history
--

CREATE TABLE IF NOT EXISTS account_ban_history (
  id bigserial PRIMARY KEY ,
  account_id int NOT NULL REFERENCES accounts (id) ON DELETE CASCADE ON UPDATE CASCADE,
  reason varchar(255) NOT NULL,
  banned_at bigint NOT NULL,
  expired_at bigint NOT NULL,
  banned_by int NOT NULL REFERENCES players (id) ON DELETE CASCADE ON UPDATE CASCADE 
) ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  account_viplist
--

CREATE TABLE IF NOT EXISTS account_viplist (
  account_id int NOT NULL UNIQUE REFERENCES accounts (id) ON DELETE CASCADE,
  player_id int NOT NULL UNIQUE REFERENCES players (id) ON DELETE CASCADE,
  description varchar(128) NOT NULL DEFAULT '',
  icon bigint NOT NULL DEFAULT '0',
  notify smallint NOT NULL DEFAULT '0'
) ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  announcements
--

CREATE TABLE IF NOT EXISTS announcements (
id bigserial PRIMARY KEY ,
  title varchar(50) NOT NULL,
  text varchar(255) NOT NULL,
  date varchar(20) NOT NULL,
  author varchar(50) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estrutura da tabela blessings_history
--

CREATE TABLE blessings_history (
  id int NOT NULL,
  player_id int NOT NULL,
  blessing smallint NOT NULL,
  loss smallint NOT NULL,
  timestamp int NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  global_storage
--

CREATE TABLE IF NOT EXISTS global_storage (
  key varchar(32) NOT NULL UNIQUE,
  value text NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  guilds
--

CREATE TABLE IF NOT EXISTS guilds (
  id bigserial PRIMARY KEY ,
  name varchar(255) NOT NULL UNIQUE,
  ownerid int NOT NULL UNIQUE REFERENCES players (id) ON DELETE CASCADE,
  creationdata int NOT NULL,
  motd varchar(255) NOT NULL DEFAULT '',
  description text NOT NULL,
  guild_logo bytea,
  create_ip varchar(40) NOT NULL DEFAULT '0',
  balance bigint NOT NULL DEFAULT '0',
  last_execute_points int NOT NULL DEFAULT '0',
  logo_gfx_name varchar(255) NOT NULL DEFAULT ''
) ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  guild_ranks
--

CREATE TABLE IF NOT EXISTS guild_ranks (
  id bigserial PRIMARY KEY ,
  guild_id int NOT NULL REFERENCES guilds (id) ON DELETE CASCADE,
  name varchar(255) NOT NULL ,
  level int NOT NULL 
) ;

-- --------------------------------------------------------

--
-- Disparadores guilds
--
CREATE FUNCTION "oncreate_guilds"()
RETURNS TRIGGER
AS $$
BEGIN
	INSERT INTO "guild_ranks" ("name", "level", "guild_id") VALUES ('Leader', 3, NEW."id");
	INSERT INTO "guild_ranks" ("name", "level", "guild_id") VALUES ('Vice-Leader', 2, NEW."id");
	INSERT INTO "guild_ranks" ("name", "level", "guild_id") VALUES ('Member', 1, NEW."id");

	RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER "oncreate_guilds"
AFTER INSERT
ON "guilds"
FOR EACH ROW
EXECUTE PROCEDURE "oncreate_guilds"();

-- --------------------------------------------------------

--
-- Estrutura para a tabela  guild_wars
--

CREATE TABLE IF NOT EXISTS guild_wars (
id bigserial PRIMARY KEY ,
  guild1 int NOT NULL DEFAULT '0',
  guild2 int NOT NULL DEFAULT '0',
  name1 varchar(255) NOT NULL,
  name2 varchar(255) NOT NULL,
  status smallint NOT NULL DEFAULT '0',
  started bigint NOT NULL DEFAULT '0',
  ended bigint NOT NULL DEFAULT '0'
) ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  guildwar_kills
--

CREATE TABLE IF NOT EXISTS guildwar_kills (
id bigserial PRIMARY KEY ,
  killer varchar(50) NOT NULL,
  target varchar(50) NOT NULL,
  killerguild int NOT NULL DEFAULT '0',
  targetguild int NOT NULL DEFAULT '0',
  warid int NOT NULL DEFAULT '0' REFERENCES guild_wars (id) ON DELETE CASCADE,
  time bigint NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  guild_invites
--

CREATE TABLE IF NOT EXISTS guild_invites (
  player_id int NOT NULL DEFAULT '0' REFERENCES players (id) ON DELETE CASCADE,
  guild_id int NOT NULL DEFAULT '0' REFERENCES guilds (id) ON DELETE CASCADE,
  date int NOT NULL,
  PRIMARY KEY(player_id,guild_id)
) ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  guild_membership
--

CREATE TABLE IF NOT EXISTS guild_membership (
  player_id int NOT NULL PRIMARY KEY REFERENCES players (id) ON DELETE CASCADE ON UPDATE CASCADE,
  guild_id int NOT NULL REFERENCES guilds (id) ON DELETE CASCADE ON UPDATE CASCADE,
  rank_id int NOT NULL REFERENCES guild_ranks (id) ON DELETE CASCADE ON UPDATE CASCADE,
  nick varchar(15) NOT NULL DEFAULT ''
) ;

--------------------------------------------------------

--
--	Usado para o castle
--
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

-- --------------------------------------------------------

--
-- Estrutura da tabela castle_dono
--

CREATE TABLE IF NOT EXISTS castle_dono (
  id serial NOT NULL,
  name varchar(255) NOT NULL,
  type varchar(255) NOT NULL,
  action varchar(255) NOT NULL,
  param1 varchar(255) NOT NULL,
  param2 varchar(255) NOT NULL,
  param3 varchar(255) NOT NULL,
  param4 varchar(255) NOT NULL,
  param5 varchar(255) NOT NULL,
  param6 varchar(255) NOT NULL,
  param7 varchar(255) NOT NULL,
  delete_it int NOT NULL DEFAULT '1',
  guild_id int NOT NULL DEFAULT '0',  
);

-- --------------------------------------------------------

--
-- Estrutura para a tabela  houses
--
-- foi removido owner int NOT NULL REFERENCES players (id) ON DELETE SET NULL,
-- owner int NOT NULL REFERENCES players (id) ON DELETE SET NULL,

CREATE TABLE IF NOT EXISTS houses (
id bigserial PRIMARY KEY ,
  owner int NOT NULL,
  paid bigint NOT NULL DEFAULT '0',
  warnings int NOT NULL DEFAULT '0',
  name varchar(255) NOT NULL,
  rent int NOT NULL DEFAULT '0',
  town_id int NOT NULL DEFAULT '0',
  bid int NOT NULL DEFAULT '0',
  bid_end int NOT NULL DEFAULT '0',
  last_bid int NOT NULL DEFAULT '0',
  highest_bidder int NOT NULL DEFAULT '0',
  size int NOT NULL DEFAULT '0',
  beds int NOT NULL DEFAULT '0'
)  ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  house_lists
--

CREATE TABLE IF NOT EXISTS house_lists (
  house_id int NOT NULL REFERENCES houses (id) ON DELETE CASCADE,
  listid int NOT NULL,
  list text NOT NULL  
) ;

-- Indices de la tabla house_lists
--CREATE INDEX house_id ON house_lists (house_id);

-- --------------------------------------------------------

--
-- Estrutura para a tabela  ip_bans
--

CREATE TABLE IF NOT EXISTS ip_bans (
  ip bigint PRIMARY KEY,
  reason varchar(255) NOT NULL,
  banned_at bigint NOT NULL,
  expires_at bigint NOT NULL,
  banned_by int NOT NULL REFERENCES players (id) ON DELETE CASCADE ON UPDATE CASCADE
) ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  live_casts
--

CREATE TABLE IF NOT EXISTS live_casts (
  player_id int NOT NULL UNIQUE REFERENCES players (id) ON DELETE CASCADE,
  cast_name varchar(255) NOT NULL,
  password smallint NOT NULL DEFAULT '0',
  description varchar(255) DEFAULT NULL,
  spectators smallint DEFAULT '0'
) ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  market_history
--

CREATE TABLE IF NOT EXISTS market_history (
id bigserial PRIMARY KEY ,
  player_id int NOT NULL REFERENCES players (id) ON DELETE CASCADE,
  sale smallint NOT NULL DEFAULT '0',
  itemtype int NOT NULL,
  amount smallint NOT NULL,
  price int NOT NULL DEFAULT '0',
  expires_at bigint NOT NULL,
  inserted bigint NOT NULL,
  state smallint NOT NULL
)  ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  market_offers
--

CREATE TABLE IF NOT EXISTS market_offers (
id bigserial,
  player_id int NOT NULL REFERENCES players (id) ON DELETE CASCADE,
  sale smallint NOT NULL DEFAULT '0',
  itemtype int NOT NULL,
  amount smallint NOT NULL,
  created bigint NOT NULL,
  anonymous smallint NOT NULL DEFAULT '0',
  price int NOT NULL DEFAULT '0',
  PRIMARY KEY (id, sale, itemtype, created)  
) ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  newsticker
--

CREATE TABLE IF NOT EXISTS newsticker (
id serial PRIMARY KEY ,
  date int NOT NULL,
  text text NOT NULL,
  icon varchar(50) NOT NULL
)  ;

-- --------------------------------------------------------

--
-- Estrutura da tabela pagseguro
--

CREATE TABLE pagseguro (
  date timestamp NOT NULL,
  code varchar(50) NOT NULL,
  reference varchar(200) NOT NULL,
  type int NOT NULL,
  status int NOT NULL,
  lastEventDate timestamp NOT NULL
);

-- --------------------------------------------------------

--
-- Estrutura para a tabela  pagsegurotransacoes
--

CREATE TABLE IF NOT EXISTS pagsegurotransacoes (
  TransacaoID varchar(36) NOT NULL,
  VendedorEmail varchar(200) NOT NULL,
  Referencia varchar(200) DEFAULT NULL,
  TipoFrete char(2) DEFAULT NULL,
  ValorFrete decimal(10,2) DEFAULT NULL,
  Extras decimal(10,2) DEFAULT NULL,
  Anotacao text,
  TipoPagamento varchar(50) NOT NULL,
  StatusTransacao varchar(50) NOT NULL,
  CliNome varchar(200) NOT NULL,
  CliEmail varchar(200) NOT NULL,
  CliEndereco varchar(200) NOT NULL,
  CliNumero varchar(10) DEFAULT NULL,
  CliComplemento varchar(100) DEFAULT NULL,
  CliBairro varchar(100) NOT NULL,
  CliCidade varchar(100) NOT NULL,
  CliEstado char(2) NOT NULL,
  CliCEP varchar(9) NOT NULL,
  CliTelefone varchar(14) DEFAULT NULL,
  NumItens int NOT NULL,
  Data timestamp(0) NOT NULL,
  ProdQuantidade_x int NOT NULL,
  status smallint NOT NULL DEFAULT '0',
  CONSTRAINT TransacaoID UNIQUE (TransacaoID,StatusTransacao),
  PRIMARY KEY(Referencia, status)  
) ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  pagseguro_transactions
--

CREATE TABLE IF NOT EXISTS pagseguro_transactions (
  transaction_code varchar(36) NOT NULL,
  name varchar(200) DEFAULT NULL,
  payment_method varchar(50) NOT NULL,
  status varchar(50) NOT NULL,
  item_count int NOT NULL,
  data timestamp(0) NOT NULL,
  payment_amount float DEFAULT '0',
  CONSTRAINT transaction_code UNIQUE (transaction_code,status),
  PRIMARY KEY (name, status)
) ;
--

-- --------------------------------------------------------

--
-- Estrutura para a tabela  players_online
--

CREATE TABLE IF NOT EXISTS players_online (
  player_id int PRIMARY KEY,
  cast_on smallint default '0' not null,
  cast_password varchar(40) default null,
  cast_spectators int default '0' not null
);

-- --------------------------------------------------------

--
-- Estrutura para a tabela  player_deaths
--

CREATE TABLE IF NOT EXISTS player_deaths (
  player_id int NOT NULL REFERENCES players (id) ON DELETE CASCADE,
  time bigint NOT NULL DEFAULT '0',
  level int NOT NULL DEFAULT '1',
  killed_by varchar(255) NOT NULL,
  is_player smallint NOT NULL DEFAULT '1',
  mostdamage_by varchar(100) NOT NULL,
  mostdamage_is_player smallint NOT NULL DEFAULT '0',
  unjustified smallint NOT NULL DEFAULT '0',
  mostdamage_unjustified smallint NOT NULL DEFAULT '0'
) ;
CREATE INDEX killed_by ON player_deaths(killed_by);
CREATE INDEX mostdamage_by ON player_deaths(mostdamage_by);

--CREATE INDEX player_id ON player_deaths (player_id);
-- --------------------------------------------------------

--
-- Estrutura para a tabela  player_depotitems
--

CREATE TABLE IF NOT EXISTS player_depotitems (
  player_id int NOT NULL UNIQUE REFERENCES players (id) ON DELETE CASCADE,
  sid int NOT NULL UNIQUE,
  pid int NOT NULL DEFAULT '0',
  itemtype smallint NOT NULL,
  count smallint NOT NULL DEFAULT '0',
  attributes bytea NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estrutura da tabela player_former_names
--

CREATE TABLE player_former_names (
  id serial NOT NULL,
  player_id int NOT NULL REFERENCES players (id) ON DELETE CASCADE,
  former_name varchar(35) NOT NULL,
  date int NOT NULL
);

-- --------------------------------------------------------

--
-- Estrutura para a tabela  player_inboxitems
--

CREATE TABLE IF NOT EXISTS player_inboxitems (
  player_id int NOT NULL UNIQUE REFERENCES players (id) ON DELETE CASCADE,
  sid int NOT NULL UNIQUE,
  pid int NOT NULL DEFAULT '0',
  itemtype smallint NOT NULL,
  count smallint NOT NULL DEFAULT '0',
  attributes bytea NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  player_items
--

CREATE TABLE IF NOT EXISTS player_items (
  player_id int NOT NULL DEFAULT '0' REFERENCES players (id) ON DELETE CASCADE,
  pid int NOT NULL DEFAULT '0',
  sid int NOT NULL DEFAULT '0',
  itemtype smallint NOT NULL DEFAULT '0',
  count smallint NOT NULL DEFAULT '0',
  attributes bytea NOT NULL
) ;

--
-- Estrutura para a tabela  player_kills
--

CREATE TABLE IF NOT EXISTS player_kills (
  player_id int NOT NULL,
  time bigint NOT NULL DEFAULT '0',
  target int NOT NULL,
  unavenged smallint NOT NULL DEFAULT '0'
) ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  player_namelocks
--

CREATE TABLE IF NOT EXISTS player_namelocks (
  player_id int PRIMARY KEY REFERENCES players (id) ON DELETE CASCADE ON UPDATE CASCADE,
  reason varchar(255) NOT NULL,
  namelocked_at bigint NOT NULL,
  namelocked_by int NOT NULL REFERENCES players (id) ON DELETE CASCADE ON UPDATE CASCADE
) ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  player_prey
--

CREATE TABLE IF NOT EXISTS player_prey (
  player_id int NOT NULL,
  name varchar(50) NOT NULL,
  mindex smallint NOT NULL,
  mcolumn int NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  player_preytimes
--

CREATE TABLE IF NOT EXISTS player_preytimes (
  player_id int NOT NULL,
  bonus_type1 int NOT NULL,
  bonus_value1 int NOT NULL,
  bonus_name1 varchar(50) NOT NULL,
  bonus_type2 int NOT NULL,
  bonus_value2 int NOT NULL,
  bonus_name2 varchar(50) NOT NULL,
  bonus_type3 int NOT NULL,
  bonus_value3 int NOT NULL,
  bonus_name3 varchar(50) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  player_rewards
--

CREATE TABLE IF NOT EXISTS player_rewards (
  player_id int NOT NULL UNIQUE REFERENCES players (id) ON DELETE CASCADE,
  sid int NOT NULL UNIQUE,
  pid int NOT NULL DEFAULT '0',
  itemtype smallint NOT NULL,
  count smallint NOT NULL DEFAULT '0',
  attributes bytea NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  player_spells
--

CREATE TABLE IF NOT EXISTS player_spells (
  player_id int NOT NULL REFERENCES players (id) ON DELETE CASCADE,
  name varchar(255) NOT NULL
) ;

--CREATE INDEX player_id ON player_spells (player_id);

-- --------------------------------------------------------

--
-- Estrutura para a tabela  player_storage
--

CREATE TABLE IF NOT EXISTS player_storage (
  player_id int NOT NULL DEFAULT '0' REFERENCES players (id) ON DELETE CASCADE,
  key int NOT NULL DEFAULT '0',
  value int NOT NULL DEFAULT '0',
  PRIMARY KEY (player_id, key)
) ;

--
-- Estrutura para a tabela  sellchar
--

CREATE TABLE IF NOT EXISTS sellchar (
id bigserial PRIMARY KEY ,
  name varchar(40) NOT NULL,
  vocation int NOT NULL,
  price int NOT NULL,
  status varchar(40) NOT NULL,
  oldid varchar(40) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  server_config
--

CREATE TABLE IF NOT EXISTS server_config (
  config varchar(50) PRIMARY KEY,
  value varchar(256) NOT NULL DEFAULT ''
) ;

--
-- Adicionando dados a tabela  server_config
--

INSERT INTO server_config (config, value) VALUES
('db_version', '24'),
('double', 'desactived'),
('motd_hash', 'd40f8dcfa99c13f947571211f86d3e1edd1b329c'),
('motd_num', '2'),
('players_record', '1');

-- --------------------------------------------------------

--
-- Estrutura para a tabela  store_history
--

CREATE TABLE IF NOT EXISTS store_history (
  account_id int NOT NULL REFERENCES accounts (id) ON DELETE CASCADE,
  mode smallint NOT NULL DEFAULT '0',
  description varchar(3500) NOT NULL,
  coin_amount int NOT NULL,
  time bigint NOT NULL,
  timestamp int NOT NULL DEFAULT '0',
  id serial NOT NULL,
  coins int NOT NULL DEFAULT '0'  
) ;

--CREATE INDEX account_id ON store_history (account_id);
-- --------------------------------------------------------

--
-- Estrutura para a tabela  tickets
--

CREATE TABLE IF NOT EXISTS tickets (
  ticket_id int PRIMARY KEY,
  ticket_subject varchar(255) NOT NULL,
  ticket_author varchar(255) NOT NULL,
  ticket_author_acc_id int NOT NULL,
  ticket_last_reply varchar(255) NOT NULL,
  ticket_admin_reply varchar(255) NOT NULL,
  ticket_date int NOT NULL,
  ticket_ended int NOT NULL,
  ticket_status int NOT NULL,
  ticket_category varchar(255) NOT NULL,
  ticket_description varchar(255) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  tickets_reply
--

CREATE TABLE IF NOT EXISTS tickets_reply (
  ticket_id int PRIMARY KEY,
  reply_message varchar(255) NOT NULL,
  reply_author varchar(255) NOT NULL,
  ticket_author_acc_id int NOT NULL,
  ticket_last_reply varchar(255) NOT NULL,
  ticket_admin_reply varchar(255) NOT NULL,
  reply_date int NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  tile_store
--

CREATE TABLE IF NOT EXISTS tile_store (
  house_id int NOT NULL REFERENCES houses (id) ON DELETE CASCADE,
  data bytea NOT NULL  
) ;

--CREATE INDEX house_id ON tile_store (house_id);
-- --------------------------------------------------------

--
-- Estrutura para a tabela  videos
--

CREATE TABLE IF NOT EXISTS videos (
id bigserial PRIMARY KEY ,
  titulo varchar(255) NOT NULL,
  descricao text NOT NULL,
  categoria int NOT NULL,
  link varchar(11) NOT NULL,
  ativo int NOT NULL DEFAULT '1'
)  ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  videos_categorias
--

CREATE TABLE IF NOT EXISTS videos_categorias (
id bigserial PRIMARY KEY ,
  nome varchar(255) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  videos_comentarios
--

CREATE TABLE IF NOT EXISTS videos_comentarios (
id bigserial PRIMARY KEY ,
  mensagem text NOT NULL,
  character varchar(255) NOT NULL,
  ip varchar(15) NOT NULL,
  topico int NOT NULL,
  data timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  ativo int NOT NULL DEFAULT '1'
) ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  z_changelog
--

CREATE TABLE IF NOT EXISTS z_changelog (
id bigserial PRIMARY KEY ,
  type varchar(255) NOT NULL DEFAULT '',
  "where" varchar(255) NOT NULL DEFAULT '',
  date int NOT NULL DEFAULT '0',
  description varchar(255) NOT NULL
)  ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  z_forum
--

CREATE TABLE IF NOT EXISTS z_forum (
id bigserial ,
  first_post int NOT NULL DEFAULT '0',
  last_post int NOT NULL DEFAULT '0',
  section int NOT NULL DEFAULT '0',
  replies int NOT NULL DEFAULT '0',
  views int NOT NULL DEFAULT '0',
  author_aid int NOT NULL DEFAULT '0',
  author_guid int NOT NULL DEFAULT '0',
  post_text text NOT NULL,
  post_topic varchar(255) NOT NULL,
  post_smile smallint NOT NULL DEFAULT '0',
  post_date int NOT NULL DEFAULT '0',
  last_edit_aid int NOT NULL DEFAULT '0',
  edit_date int NOT NULL DEFAULT '0',
  post_ip varchar(15) NOT NULL DEFAULT '0.0.0.0',
  icon_id int NOT NULL DEFAULT '0',
  PRIMARY KEY (id, section)
)  ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  z_helpdesk
--

CREATE TABLE IF NOT EXISTS z_helpdesk (
  uid bigserial PRIMARY KEY ,
  account INT NOT NULL,
  type int NOT NULL,
  status int,
  text text NOT NULL,
  id int NOT NULL,
  subject varchar(255),
  priority int,
  reply int NOT NULL,
  who int,  
  tag int,
  registered int
)  ;

--	START - OLD COLUMNS
--account varchar(255) NOT NULL,
--	END - OLD COLUMNS

-- --------------------------------------------------------

--
-- Estrutura para a tabela  z_network_box
--

CREATE TABLE IF NOT EXISTS z_network_box (
id bigserial PRIMARY KEY ,
  network_name varchar(10) NOT NULL,
  network_link varchar(50) NOT NULL
)  ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  z_news_tickers
--

CREATE TABLE IF NOT EXISTS z_news_tickers (
  date int NOT NULL DEFAULT '1',
  author int NOT NULL,
  image_id int NOT NULL DEFAULT '0',
  text text NOT NULL,
  hide_ticker smallint NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  z_ots_comunication
--

CREATE TABLE IF NOT EXISTS z_ots_comunication (
id bigserial PRIMARY KEY ,
  name varchar(255) NOT NULL,
  type varchar(255) NOT NULL,
  action varchar(255) NOT NULL,
  param1 varchar(255) NOT NULL,
  param2 varchar(255) NOT NULL,
  param3 varchar(255) NOT NULL,
  param4 varchar(255) NOT NULL,
  param5 varchar(255) NOT NULL,
  param6 varchar(255) NOT NULL,
  param7 varchar(255) NOT NULL,
  delete_it int NOT NULL DEFAULT '1'
) ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  z_ots_guildcomunication
--

CREATE TABLE IF NOT EXISTS z_ots_guildcomunication (
id bigserial PRIMARY KEY ,
  name varchar(255) NOT NULL,
  type varchar(255) NOT NULL,
  action varchar(255) NOT NULL,
  param1 varchar(255) NOT NULL,
  param2 varchar(255) NOT NULL,
  param3 varchar(255) NOT NULL,
  param4 varchar(255) NOT NULL,
  param5 varchar(255) NOT NULL,
  param6 varchar(255) NOT NULL,
  param7 varchar(255) NOT NULL,
  delete_it int NOT NULL DEFAULT '1'
)  ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  z_polls
--

CREATE TABLE IF NOT EXISTS z_polls (
id bigserial PRIMARY KEY ,
  question varchar(255) NOT NULL,
  "end" int NOT NULL,
  start int NOT NULL,
  answers int NOT NULL,
  votes_all int NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  z_polls_answers
--

CREATE TABLE IF NOT EXISTS z_polls_answers (
  poll_id int NOT NULL,
  answer_id int NOT NULL,
  answer varchar(255) NOT NULL,
  votes int NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estrutura da tabela z_shop_category
--

CREATE TABLE z_shop_category (
  id serial NOT NULL,
  name varchar(50) NOT NULL,
  "desc" varchar(255) NOT NULL,
  button varchar(50) NOT NULL,
  hide int NOT NULL DEFAULT '0'
) ;

--
-- Extraindo dados da tabela z_shop_category
--

INSERT INTO z_shop_category (id, name, "desc", button, hide) VALUES
(1, 'Extra Services', 'Buy an extra service to transfer a character to another game world, to change your character name or sex, to change your account name, or to get a new recovery key.', '_sbutton_getextraservice.gif', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela z_shop_donates
--

CREATE TABLE z_shop_donates (
  id serial NOT NULL,
  date int NOT NULL,
  reference varchar(50) NOT NULL,
  account_name varchar(50) NOT NULL,
  method varchar(50) NOT NULL,
  price varchar(20) NOT NULL,
  coins int NOT NULL,
  status varchar(20) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estrutura da tabela z_shop_donate_confirm
--

CREATE TABLE z_shop_donate_confirm (
  id serial NOT NULL,
  date int NOT NULL,
  account_name varchar(50) NOT NULL,
  donate_id int NOT NULL,
  msg text NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  z_shopguild_history_item
--

CREATE TABLE IF NOT EXISTS z_shopguild_history_item (
id bigserial PRIMARY KEY ,
  to_name varchar(255) NOT NULL DEFAULT '0',
  to_account int NOT NULL DEFAULT '0',
  from_nick varchar(255) NOT NULL,
  from_account int NOT NULL DEFAULT '0',
  price int NOT NULL DEFAULT '0',
  offer_id int NOT NULL DEFAULT '0',
  trans_state varchar(255) NOT NULL,
  trans_start int NOT NULL DEFAULT '0',
  trans_real int NOT NULL DEFAULT '0'
) ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  z_shopguild_history_pacc
--

CREATE TABLE IF NOT EXISTS z_shopguild_history_pacc (
id bigserial PRIMARY KEY ,
  to_name varchar(255) NOT NULL DEFAULT '0',
  to_account int NOT NULL DEFAULT '0',
  from_nick varchar(255) NOT NULL,
  from_account int NOT NULL DEFAULT '0',
  price int NOT NULL DEFAULT '0',
  pacc_days int NOT NULL DEFAULT '0',
  trans_state varchar(255) NOT NULL,
  trans_start int NOT NULL DEFAULT '0',
  trans_real int NOT NULL DEFAULT '0'
) ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  z_shopguild_offer
--

CREATE TABLE IF NOT EXISTS z_shopguild_offer (
id bigserial PRIMARY KEY ,
  points int NOT NULL DEFAULT '0',
  itemid1 int NOT NULL DEFAULT '0',
  count1 int NOT NULL DEFAULT '0',
  itemid2 int NOT NULL DEFAULT '0',
  count2 int NOT NULL DEFAULT '0',
  offer_type varchar(255) DEFAULT NULL,
  offer_description text NOT NULL,
  offer_name varchar(255) NOT NULL,
  pid int NOT NULL DEFAULT '0'
)  ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  z_shop_history_item
--

CREATE TABLE IF NOT EXISTS z_shop_history_item (
id bigserial PRIMARY KEY ,
  to_name varchar(255) NOT NULL DEFAULT '0',
  to_account int NOT NULL DEFAULT '0',
  from_nick varchar(255) NOT NULL,
  from_account int NOT NULL DEFAULT '0',
  price int NOT NULL DEFAULT '0',
  offer_id varchar(255) NOT NULL DEFAULT '',
  trans_state varchar(255) NOT NULL,
  trans_start int NOT NULL DEFAULT '0',
  trans_real int NOT NULL DEFAULT '0'
) ;

-- --------------------------------------------------------

--
-- Estrutura para a tabela  z_shop_offer
--

CREATE TABLE z_shop_offer (
  id serial NOT NULL,
  category int NOT NULL,
  coins int NOT NULL DEFAULT '0',
  price varchar(50) NOT NULL,
  itemid int NOT NULL DEFAULT '0',
  mount_id varchar(100) NOT NULL,
  addon_name varchar(100) NOT NULL,
  count int NOT NULL DEFAULT '0',
  offer_type varchar(255) DEFAULT NULL,
  offer_description text NOT NULL,
  offer_name varchar(255) NOT NULL,
  offer_date int NOT NULL,
  default_image varchar(50) NOT NULL,
  hide int NOT NULL DEFAULT '0'
) ;

--
-- Extraindo dados da tabela z_shop_offer
--

INSERT INTO z_shop_offer (id, category, coins, price, itemid, mount_id, addon_name, count, offer_type, offer_description, offer_name, offer_date, default_image, hide) VALUES
(1, 1, 12, '', 0, '', '', 1, 'changename', 'Buy a character name change to rename one of your characters.', 'Character Change Name', 1416865577, 'changename.png', 1),
(2, 1, 10, '', 0, '', '', 1, 'changesex', 'Buy a character sex change to turn your male character into a female one, or your female character into a male one.', 'Character Change Sex', 1416874417, 'changesex.png', 1),
(3, 1, 12, '', 0, '', '', 1, 'changeaccountname', 'Buy an account name change to select a different name for your account.', 'Account Name Change', 1416874601, 'changeaccountname.png', 1),
(4, 1, 25, '', 0, '', '', 1, 'newrk', 'If you need a new recovery key, you can order it here. Note that the letter for the new recovery key can only be sent to the address in the account registration.', 'Recovery Key', 1416874816, 'newrk.png', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela z_shop_payment
--

CREATE TABLE z_shop_payment (
  id serial NOT NULL,
  ref varchar(10) NOT NULL,
  account_name varchar(50) NOT NULL,
  service_id int NOT NULL,
  service_category_id int NOT NULL,
  payment_method_id int NOT NULL,
  price varchar(50) NOT NULL,
  coins smallint NOT NULL,
  status varchar(50) NOT NULL DEFAULT 'waiting',
  date int NOT NULL,
  gift int NOT NULL DEFAULT '0'
) ;
