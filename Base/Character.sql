-- ----------------------------
-- Table structure for `account_data`
-- ----------------------------
DROP TABLE IF EXISTS `account_data`;
CREATE TABLE `account_data` (
`account`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`type`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`time`  bigint(11) UNSIGNED NOT NULL DEFAULT 0 ,
`data`  longblob NOT NULL ,
PRIMARY KEY (`account`, `type`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `arena_team`
-- ----------------------------
DROP TABLE IF EXISTS `arena_team`;
CREATE TABLE `arena_team` (
`arenateamid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`name`  char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`captainguid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`type`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`BackgroundColor`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EmblemStyle`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EmblemColor`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`BorderStyle`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`BorderColor`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`arenateamid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `arena_team_member`
-- ----------------------------
DROP TABLE IF EXISTS `arena_team_member`;
CREATE TABLE `arena_team_member` (
`arenateamid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`played_week`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`wons_week`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`played_season`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`wons_season`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`personal_rating`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`arenateamid`, `guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `arena_team_stats`
-- ----------------------------
DROP TABLE IF EXISTS `arena_team_stats`;
CREATE TABLE `arena_team_stats` (
`arenateamid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`rating`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`games_week`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`wins_week`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`games_season`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`wins_season`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`rank`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`arenateamid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `auction`
-- ----------------------------
DROP TABLE IF EXISTS `auction`;
CREATE TABLE `auction` (
`id`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`houseid`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`itemguid`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item_template`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Item Identifier' ,
`item_count`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item_randompropertyid`  int(11) NOT NULL DEFAULT 0 ,
`itemowner`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`buyoutprice`  int(11) NOT NULL DEFAULT 0 ,
`time`  bigint(40) UNSIGNED NOT NULL DEFAULT 0 ,
`moneyTime`  bigint(40) UNSIGNED NOT NULL DEFAULT 0 ,
`buyguid`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`lastbid`  int(11) NOT NULL DEFAULT 0 ,
`startbid`  int(11) NOT NULL DEFAULT 0 ,
`deposit`  int(11) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `bugreport`
-- ----------------------------
DROP TABLE IF EXISTS `bugreport`;
CREATE TABLE `bugreport` (
`id`  int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identifier' ,
`type`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`content`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Debug System'
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `character_account_data`
-- ----------------------------
DROP TABLE IF EXISTS `character_account_data`;
CREATE TABLE `character_account_data` (
`guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`type`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`time`  bigint(11) UNSIGNED NOT NULL DEFAULT 0 ,
`data`  longblob NOT NULL ,
PRIMARY KEY (`guid`, `type`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `character_achievement`
-- ----------------------------
DROP TABLE IF EXISTS `character_achievement`;
CREATE TABLE `character_achievement` (
`guid`  int(11) UNSIGNED NOT NULL ,
`achievement`  int(11) UNSIGNED NOT NULL ,
`date`  bigint(11) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `achievement`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `character_achievement_progress`
-- ----------------------------
DROP TABLE IF EXISTS `character_achievement_progress`;
CREATE TABLE `character_achievement_progress` (
`guid`  int(11) UNSIGNED NOT NULL ,
`criteria`  int(11) UNSIGNED NOT NULL ,
`counter`  int(11) UNSIGNED NOT NULL ,
`date`  bigint(11) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `criteria`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `character_action`
-- ----------------------------
DROP TABLE IF EXISTS `character_action`;
CREATE TABLE `character_action` (
`guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`spec`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`button`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`action`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`type`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `spec`, `button`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Table structure for `character_aura`
-- ----------------------------
DROP TABLE IF EXISTS `character_aura`;
CREATE TABLE `character_aura` (
`guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`caster_guid`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Full Global Unique Identifier' ,
`item_guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`spell`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`stackcount`  int(11) UNSIGNED NOT NULL DEFAULT 1 ,
`remaincharges`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`basepoints0`  int(11) NOT NULL DEFAULT 0 ,
`basepoints1`  int(11) NOT NULL DEFAULT 0 ,
`basepoints2`  int(11) NOT NULL DEFAULT 0 ,
`periodictime0`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`periodictime1`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`periodictime2`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`maxduration`  int(11) NOT NULL DEFAULT 0 ,
`remaintime`  int(11) NOT NULL DEFAULT 0 ,
`effIndexMask`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `caster_guid`, `item_guid`, `spell`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Table structure for `character_battleground_data`
-- ----------------------------
DROP TABLE IF EXISTS `character_battleground_data`;
CREATE TABLE `character_battleground_data` (
`guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`instance_id`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`team`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`join_x`  float NOT NULL DEFAULT 0 ,
`join_y`  float NOT NULL DEFAULT 0 ,
`join_z`  float NOT NULL DEFAULT 0 ,
`join_o`  float NOT NULL DEFAULT 0 ,
`join_map`  int(11) NOT NULL DEFAULT 0 ,
`taxi_start`  int(11) NOT NULL DEFAULT 0 ,
`taxi_end`  int(11) NOT NULL DEFAULT 0 ,
`mount_spell`  int(11) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Table structure for `character_declinedname`
-- ----------------------------
DROP TABLE IF EXISTS `character_declinedname`;
CREATE TABLE `character_declinedname` (
`guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`genitive`  varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`dative`  varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`accusative`  varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`instrumental`  varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`prepositional`  varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
PRIMARY KEY (`guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `character_equipmentsets`
-- ----------------------------
DROP TABLE IF EXISTS `character_equipmentsets`;
CREATE TABLE `character_equipmentsets` (
`guid`  int(11) NOT NULL DEFAULT 0 ,
`setguid`  bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT ,
`setindex`  tinyint(4) NOT NULL DEFAULT 0 ,
`name`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`iconname`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`ignore_mask`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item0`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item1`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item2`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item3`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item4`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item5`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item6`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item7`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item8`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item9`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item10`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item11`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item12`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item13`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item14`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item15`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item16`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item17`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item18`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`setguid`),
UNIQUE INDEX `idx_set` (`guid`, `setguid`, `setindex`) USING BTREE ,
INDEX `Idx_setindex` (`setindex`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `character_gifts`
-- ----------------------------
DROP TABLE IF EXISTS `character_gifts`;
CREATE TABLE `character_gifts` (
`guid`  int(20) UNSIGNED NOT NULL DEFAULT 0 ,
`item_guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`entry`  int(20) UNSIGNED NOT NULL DEFAULT 0 ,
`flags`  int(20) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`item_guid`),
INDEX `idx_guid` (`guid`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `character_glyphs`
-- ----------------------------
DROP TABLE IF EXISTS `character_glyphs`;
CREATE TABLE `character_glyphs` (
`guid`  int(11) UNSIGNED NOT NULL ,
`spec`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`slot`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`glyph`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `spec`, `slot`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `character_homebind`
-- ----------------------------
DROP TABLE IF EXISTS `character_homebind`;
CREATE TABLE `character_homebind` (
`guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`map`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Map Identifier' ,
`zone`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Zone Identifier' ,
`position_x`  float NOT NULL DEFAULT 0 ,
`position_y`  float NOT NULL DEFAULT 0 ,
`position_z`  float NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Table structure for `character_instance`
-- ----------------------------
DROP TABLE IF EXISTS `character_instance`;
CREATE TABLE `character_instance` (
`guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`instance`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`permanent`  tinyint(1) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `instance`),
INDEX `instance` (`instance`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `character_inventory`
-- ----------------------------
DROP TABLE IF EXISTS `character_inventory`;
CREATE TABLE `character_inventory` (
`guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`bag`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`slot`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`item`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Item Global Unique Identifier' ,
`item_template`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Item Identifier' ,
PRIMARY KEY (`item`),
INDEX `idx_guid` (`guid`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Table structure for `character_battle_pet`
-- ----------------------------
DROP TABLE IF EXISTS `character_battle_pet`;
CREATE TABLE `character_battle_pet` (
`id`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`entry`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`owner`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`modelid`  int(11) UNSIGNED NULL DEFAULT 0 ,
`CreatedBySpell`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`PetType`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`level`  int(11) UNSIGNED NOT NULL DEFAULT 1 ,
`exp`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`Reactstate`  tinyint(1) UNSIGNED NOT NULL DEFAULT 0 ,
`name`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Pet' ,
`renamed`  tinyint(1) UNSIGNED NOT NULL DEFAULT 0 ,
`slot`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`curhealth`  int(11) UNSIGNED NOT NULL DEFAULT 1 ,
`curmana`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`curitem`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`savetime`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`resettalents_cost`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`resettalents_time`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`abdata`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`id`),
INDEX `owner` (`owner`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Battle Pet System'

;

-- ----------------------------
-- Table structure for `character_battle_pet_declinedname`
-- ----------------------------
DROP TABLE IF EXISTS `character_battle_pet_declinedname`;
CREATE TABLE `character_battle_pet_declinedname` (
`id`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`owner`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`genitive`  varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`dative`  varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`accusative`  varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`instrumental`  varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`prepositional`  varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
PRIMARY KEY (`id`),
INDEX `owner_key` (`owner`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `character_pet`
-- ----------------------------
DROP TABLE IF EXISTS `character_pet`;
CREATE TABLE `character_pet` (
`id`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`entry`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`owner`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`modelid`  int(11) UNSIGNED NULL DEFAULT 0 ,
`CreatedBySpell`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`PetType`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`level`  int(11) UNSIGNED NOT NULL DEFAULT 1 ,
`exp`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`Reactstate`  tinyint(1) UNSIGNED NOT NULL DEFAULT 0 ,
`name`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Pet' ,
`renamed`  tinyint(1) UNSIGNED NOT NULL DEFAULT 0 ,
`slot`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`curhealth`  int(11) UNSIGNED NOT NULL DEFAULT 1 ,
`curmana`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`savetime`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`resettalents_cost`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`resettalents_time`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`abdata`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`id`),
INDEX `owner` (`owner`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Pet System'

;

-- ----------------------------
-- Table structure for `character_pet_declinedname`
-- ----------------------------
DROP TABLE IF EXISTS `character_pet_declinedname`;
CREATE TABLE `character_pet_declinedname` (
`id`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`owner`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`genitive`  varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`dative`  varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`accusative`  varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`instrumental`  varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`prepositional`  varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
PRIMARY KEY (`id`),
INDEX `owner_key` (`owner`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `character_queststatus`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus`;
CREATE TABLE `character_queststatus` (
`guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`quest`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier' ,
`status`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`rewarded`  tinyint(1) UNSIGNED NOT NULL DEFAULT 0 ,
`explored`  tinyint(1) UNSIGNED NOT NULL DEFAULT 0 ,
`timer`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`mobcount1`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`mobcount2`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`mobcount3`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`mobcount4`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`itemcount1`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`itemcount2`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`itemcount3`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`itemcount4`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`itemcount5`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`itemcount6`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `quest`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Table structure for `character_queststatus_daily`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_daily`;
CREATE TABLE `character_queststatus_daily` (
`guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`quest`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier' ,
PRIMARY KEY (`guid`, `quest`),
INDEX `idx_guid` (`guid`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Table structure for `character_queststatus_monthly`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_monthly`;
CREATE TABLE `character_queststatus_monthly` (
`guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`quest`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier' ,
PRIMARY KEY (`guid`, `quest`),
INDEX `idx_guid` (`guid`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Table structure for `character_queststatus_weekly`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_weekly`;
CREATE TABLE `character_queststatus_weekly` (
`guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`quest`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier' ,
PRIMARY KEY (`guid`, `quest`),
INDEX `idx_guid` (`guid`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Table structure for `character_reputation`
-- ----------------------------
DROP TABLE IF EXISTS `character_reputation`;
CREATE TABLE `character_reputation` (
`guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`faction`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`standing`  int(11) NOT NULL DEFAULT 0 ,
`flags`  int(11) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `faction`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Table structure for `character_skills`
-- ----------------------------
DROP TABLE IF EXISTS `character_skills`;
CREATE TABLE `character_skills` (
`guid`  int(11) UNSIGNED NOT NULL COMMENT 'Global Unique Identifier' ,
`skill`  mediumint(9) UNSIGNED NOT NULL ,
`value`  mediumint(9) UNSIGNED NOT NULL ,
`max`  mediumint(9) UNSIGNED NOT NULL ,
PRIMARY KEY (`guid`, `skill`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Table structure for `character_social`
-- ----------------------------
DROP TABLE IF EXISTS `character_social`;
CREATE TABLE `character_social` (
`guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier' ,
`friend`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Friend Global Unique Identifier' ,
`flags`  tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Friend Flags' ,
`note`  varchar(48) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'Friend Note' ,
PRIMARY KEY (`guid`, `friend`, `flags`),
INDEX `guid` (`guid`) USING BTREE ,
INDEX `friend` (`friend`) USING BTREE ,
INDEX `guid_flags` (`guid`, `flags`) USING BTREE ,
INDEX `friend_flags` (`friend`, `flags`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Table structure for `character_spell`
-- ----------------------------
DROP TABLE IF EXISTS `character_spell`;
CREATE TABLE `character_spell` (
`guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`spell`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Spell Identifier' ,
`active`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
`disabled`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `spell`),
INDEX `Idx_spell` (`spell`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Table structure for `character_spell_cooldown`
-- ----------------------------
DROP TABLE IF EXISTS `character_spell_cooldown`;
CREATE TABLE `character_spell_cooldown` (
`guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier, Low part' ,
`spell`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Spell Identifier' ,
`item`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Item Identifier' ,
`time`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `spell`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `character_stats`
-- ----------------------------
DROP TABLE IF EXISTS `character_stats`;
CREATE TABLE `character_stats` (
`guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier, Low part' ,
`maxhealth`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`maxpower1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`maxpower2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`maxpower3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`maxpower4`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`maxpower5`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`maxpower6`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`maxpower7`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`maxpower8`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`maxpower9`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`maxpower10`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`strength`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`agility`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`stamina`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`intellect`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`spirit`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`armor`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`resHoly`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`resFire`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`resNature`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`resFrost`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`resShadow`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`resArcane`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`blockPct`  float UNSIGNED NOT NULL DEFAULT 0 ,
`dodgePct`  float UNSIGNED NOT NULL DEFAULT 0 ,
`parryPct`  float UNSIGNED NOT NULL DEFAULT 0 ,
`critPct`  float UNSIGNED NOT NULL DEFAULT 0 ,
`rangedCritPct`  float UNSIGNED NOT NULL DEFAULT 0 ,
`spellCritPct`  float UNSIGNED NOT NULL DEFAULT 0 ,
`attackPower`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`rangedAttackPower`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`spellPower`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `character_talent`
-- ----------------------------
DROP TABLE IF EXISTS `character_talent`;
CREATE TABLE `character_talent` (
`guid`  int(11) UNSIGNED NOT NULL ,
`talent_id`  int(11) UNSIGNED NOT NULL ,
`current_rank`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`spec`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `talent_id`, `spec`),
INDEX `guid_key` (`guid`) USING BTREE ,
INDEX `talent_key` (`talent_id`) USING BTREE ,
INDEX `spec_key` (`spec`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `character_ticket`
-- ----------------------------
DROP TABLE IF EXISTS `character_ticket`;
CREATE TABLE `character_ticket` (
`ticket_id`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
`guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`ticket_text`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`response_text`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ticket_lastchange`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
PRIMARY KEY (`ticket_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `character_tutorial`
-- ----------------------------
DROP TABLE IF EXISTS `character_tutorial`;
CREATE TABLE `character_tutorial` (
`account`  bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Account Identifier' ,
`tut0`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`tut1`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`tut2`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`tut3`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`tut4`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`tut5`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`tut6`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`tut7`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`account`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `characters`
-- ----------------------------
DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters` (
`guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`account`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Account Identifier' ,
`name`  varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`race`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`class`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`gender`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`level`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`xp`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`money`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`playerBytes`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`playerBytes2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`playerFlags`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`position_x`  float NOT NULL DEFAULT 0 ,
`position_y`  float NOT NULL DEFAULT 0 ,
`position_z`  float NOT NULL DEFAULT 0 ,
`map`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Map Identifier' ,
`dungeon_difficulty`  tinyint(1) UNSIGNED NOT NULL DEFAULT 0 ,
`orientation`  float NOT NULL DEFAULT 0 ,
`taximask`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`online`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`cinematic`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`totaltime`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`leveltime`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`logout_time`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`is_logout_resting`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`rest_bonus`  float NOT NULL DEFAULT 0 ,
`resettalents_cost`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`resettalents_time`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`trans_x`  float NOT NULL DEFAULT 0 ,
`trans_y`  float NOT NULL DEFAULT 0 ,
`trans_z`  float NOT NULL DEFAULT 0 ,
`trans_o`  float NOT NULL DEFAULT 0 ,
`transguid`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`extra_flags`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`stable_slots`  tinyint(1) UNSIGNED NOT NULL DEFAULT 0 ,
`at_login`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`zone`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`death_expire_time`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`taxi_path`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`arenaPoints`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`totalHonorPoints`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`todayHonorPoints`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`yesterdayHonorPoints`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`totalKills`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`todayKills`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`yesterdayKills`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`chosenTitle`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`knownCurrencies`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`watchedFaction`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`drunk`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`health`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`power1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`power2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`power3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`power4`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`power5`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`power6`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`power7`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`power8`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`power9`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`power10`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`specCount`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
`activeSpec`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`exploredZones`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`equipmentCache`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`knownTitles`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`actionBars`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`deleteInfos_Account`  int(11) UNSIGNED NULL DEFAULT NULL ,
`deleteInfos_Name`  varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`deleteDate`  bigint(20) UNSIGNED NULL DEFAULT NULL ,
PRIMARY KEY (`guid`),
INDEX `idx_account` (`account`) USING BTREE ,
INDEX `idx_online` (`online`) USING BTREE ,
INDEX `idx_name` (`name`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Table structure for `corpse`
-- ----------------------------
DROP TABLE IF EXISTS `corpse`;
CREATE TABLE `corpse` (
`guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`player`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier' ,
`position_x`  float NOT NULL DEFAULT 0 ,
`position_y`  float NOT NULL DEFAULT 0 ,
`position_z`  float NOT NULL DEFAULT 0 ,
`orientation`  float NOT NULL DEFAULT 0 ,
`map`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Map Identifier' ,
`phaseMask`  smallint(5) UNSIGNED NOT NULL DEFAULT 1 ,
`time`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`corpse_type`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`instance`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`),
INDEX `idx_type` (`corpse_type`) USING BTREE ,
INDEX `instance` (`instance`) USING BTREE ,
INDEX `Idx_player` (`player`) USING BTREE ,
INDEX `Idx_time` (`time`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Death System'

;

-- ----------------------------
-- Table structure for `creature_respawn`
-- ----------------------------
DROP TABLE IF EXISTS `creature_respawn`;
CREATE TABLE `creature_respawn` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`respawntime`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`instance`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `instance`),
INDEX `instance` (`instance`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Grid Loading System'

;

-- ----------------------------
-- Table structure for `game_event_status`
-- ----------------------------
DROP TABLE IF EXISTS `game_event_status`;
CREATE TABLE `game_event_status` (
`event`  smallint(6) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`event`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Game event system'

;

-- ----------------------------
-- Table structure for `gameobject_respawn`
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_respawn`;
CREATE TABLE `gameobject_respawn` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`respawntime`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`instance`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `instance`),
INDEX `instance` (`instance`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Grid Loading System'

;

-- ----------------------------
-- Table structure for `group_instance`
-- ----------------------------
DROP TABLE IF EXISTS `group_instance`;
CREATE TABLE `group_instance` (
`leaderGuid`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`instance`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`permanent`  tinyint(1) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`leaderGuid`, `instance`),
INDEX `instance` (`instance`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `group_member`
-- ----------------------------
DROP TABLE IF EXISTS `group_member`;
CREATE TABLE `group_member` (
`groupId`  int(11) UNSIGNED NOT NULL ,
`memberGuid`  int(11) UNSIGNED NOT NULL ,
`assistant`  tinyint(1) UNSIGNED NOT NULL ,
`subgroup`  smallint(6) UNSIGNED NOT NULL ,
PRIMARY KEY (`groupId`, `memberGuid`),
INDEX `Idx_memberGuid` (`memberGuid`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Groups'

;

-- ----------------------------
-- Table structure for `groups`
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
`groupId`  int(11) UNSIGNED NOT NULL ,
`leaderGuid`  int(11) UNSIGNED NOT NULL ,
`mainTank`  int(11) UNSIGNED NOT NULL ,
`mainAssistant`  int(11) UNSIGNED NOT NULL ,
`lootMethod`  tinyint(4) UNSIGNED NOT NULL ,
`looterGuid`  int(11) UNSIGNED NOT NULL ,
`lootThreshold`  tinyint(4) UNSIGNED NOT NULL ,
`icon1`  int(11) UNSIGNED NOT NULL ,
`icon2`  int(11) UNSIGNED NOT NULL ,
`icon3`  int(11) UNSIGNED NOT NULL ,
`icon4`  int(11) UNSIGNED NOT NULL ,
`icon5`  int(11) UNSIGNED NOT NULL ,
`icon6`  int(11) UNSIGNED NOT NULL ,
`icon7`  int(11) UNSIGNED NOT NULL ,
`icon8`  int(11) UNSIGNED NOT NULL ,
`groupType`  tinyint(1) UNSIGNED NOT NULL ,
`difficulty`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`raiddifficulty`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`groupId`),
UNIQUE INDEX `leaderGuid` (`leaderGuid`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Groups'

;

-- ----------------------------
-- Table structure for `guild`
-- ----------------------------
DROP TABLE IF EXISTS `guild`;
CREATE TABLE `guild` (
`guildid`  int(6) UNSIGNED NOT NULL DEFAULT 0 ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`leaderguid`  int(6) UNSIGNED NOT NULL DEFAULT 0 ,
`EmblemStyle`  int(5) NOT NULL DEFAULT 0 ,
`EmblemColor`  int(5) NOT NULL DEFAULT 0 ,
`BorderStyle`  int(5) NOT NULL DEFAULT 0 ,
`BorderColor`  int(5) NOT NULL DEFAULT 0 ,
`BackgroundColor`  int(5) NOT NULL DEFAULT 0 ,
`info`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`motd`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`createdate`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`BankMoney`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guildid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Guild System'

;

-- ----------------------------
-- Table structure for `guild_bank_eventlog`
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_eventlog`;
CREATE TABLE `guild_bank_eventlog` (
`guildid`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Guild Identificator' ,
`LogGuid`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Log record identificator - auxiliary column' ,
`TabId`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Guild bank TabId' ,
`EventType`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Event type' ,
`PlayerGuid`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`ItemOrMoney`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`ItemStackCount`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`DestTabId`  tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Destination Tab Id' ,
`TimeStamp`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Event UNIX time' ,
PRIMARY KEY (`guildid`, `LogGuid`, `TabId`),
INDEX `guildid_key` (`guildid`) USING BTREE ,
INDEX `Idx_PlayerGuid` (`PlayerGuid`) USING BTREE ,
INDEX `Idx_LogGuid` (`LogGuid`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `guild_bank_item`
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_item`;
CREATE TABLE `guild_bank_item` (
`guildid`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`TabId`  tinyint(1) UNSIGNED NOT NULL DEFAULT 0 ,
`SlotId`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`item_guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item_entry`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guildid`, `TabId`, `SlotId`),
INDEX `guildid_key` (`guildid`) USING BTREE ,
INDEX `Idx_item_guid` (`item_guid`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `guild_bank_right`
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_right`;
CREATE TABLE `guild_bank_right` (
`guildid`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`TabId`  tinyint(1) UNSIGNED NOT NULL DEFAULT 0 ,
`rid`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`gbright`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`SlotPerDay`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guildid`, `TabId`, `rid`),
INDEX `guildid_key` (`guildid`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `guild_bank_tab`
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_tab`;
CREATE TABLE `guild_bank_tab` (
`guildid`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`TabId`  tinyint(1) UNSIGNED NOT NULL DEFAULT 0 ,
`TabName`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`TabIcon`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`TabText`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`guildid`, `TabId`),
INDEX `guildid_key` (`guildid`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `guild_eventlog`
-- ----------------------------
DROP TABLE IF EXISTS `guild_eventlog`;
CREATE TABLE `guild_eventlog` (
`guildid`  int(11) UNSIGNED NOT NULL COMMENT 'Guild Identificator' ,
`LogGuid`  int(11) UNSIGNED NOT NULL COMMENT 'Log record identificator - auxiliary column' ,
`EventType`  tinyint(1) UNSIGNED NOT NULL COMMENT 'Event type' ,
`PlayerGuid1`  int(11) UNSIGNED NOT NULL COMMENT 'Player 1' ,
`PlayerGuid2`  int(11) UNSIGNED NOT NULL COMMENT 'Player 2' ,
`NewRank`  tinyint(2) UNSIGNED NOT NULL COMMENT 'New rank(in case promotion/demotion)' ,
`TimeStamp`  bigint(20) UNSIGNED NOT NULL COMMENT 'Event UNIX time' ,
PRIMARY KEY (`guildid`, `LogGuid`),
INDEX `Idx_PlayerGuid1` (`PlayerGuid1`) USING BTREE ,
INDEX `Idx_PlayerGuid2` (`PlayerGuid2`) USING BTREE ,
INDEX `Idx_LogGuid` (`LogGuid`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Guild Eventlog'

;

-- ----------------------------
-- Table structure for `guild_member`
-- ----------------------------
DROP TABLE IF EXISTS `guild_member`;
CREATE TABLE `guild_member` (
`guildid`  int(6) UNSIGNED NOT NULL DEFAULT 0 ,
`guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`rank`  tinyint(2) UNSIGNED NOT NULL DEFAULT 0 ,
`pnote`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`offnote`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`BankResetTimeMoney`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`BankRemMoney`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`BankResetTimeTab0`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`BankRemSlotsTab0`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`BankResetTimeTab1`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`BankRemSlotsTab1`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`BankResetTimeTab2`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`BankRemSlotsTab2`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`BankResetTimeTab3`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`BankRemSlotsTab3`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`BankResetTimeTab4`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`BankRemSlotsTab4`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`BankResetTimeTab5`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`BankRemSlotsTab5`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
UNIQUE INDEX `guid_key` (`guid`) USING BTREE ,
INDEX `guildid_key` (`guildid`) USING BTREE ,
INDEX `guildid_rank_key` (`guildid`, `rank`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Guild System'

;

-- ----------------------------
-- Table structure for `guild_rank`
-- ----------------------------
DROP TABLE IF EXISTS `guild_rank`;
CREATE TABLE `guild_rank` (
`guildid`  int(6) UNSIGNED NOT NULL DEFAULT 0 ,
`rid`  int(11) UNSIGNED NOT NULL ,
`rname`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`rights`  int(3) UNSIGNED NOT NULL DEFAULT 0 ,
`BankMoneyPerDay`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guildid`, `rid`),
INDEX `Idx_rid` (`rid`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Guild System'

;

-- ----------------------------
-- Table structure for `instance`
-- ----------------------------
DROP TABLE IF EXISTS `instance`;
CREATE TABLE `instance` (
`id`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`map`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`resettime`  bigint(40) UNSIGNED NOT NULL DEFAULT 0 ,
`difficulty`  tinyint(1) UNSIGNED NOT NULL DEFAULT 0 ,
`encountersMask`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`data`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`id`),
INDEX `map` (`map`) USING BTREE ,
INDEX `resettime` (`resettime`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `instance_reset`
-- ----------------------------
DROP TABLE IF EXISTS `instance_reset`;
CREATE TABLE `instance_reset` (
`mapid`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`difficulty`  tinyint(1) UNSIGNED NOT NULL DEFAULT 0 ,
`resettime`  bigint(40) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`mapid`, `difficulty`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `item_instance`
-- ----------------------------
DROP TABLE IF EXISTS `item_instance`;
CREATE TABLE `item_instance` (
`guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`owner_guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`data`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`text`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`guid`),
INDEX `idx_owner_guid` (`owner_guid`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Item System'

;

-- ----------------------------
-- Table structure for `item_loot`
-- ----------------------------
DROP TABLE IF EXISTS `item_loot`;
CREATE TABLE `item_loot` (
`guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`owner_guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`itemid`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`amount`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`suffix`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`property`  int(11) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `itemid`),
INDEX `idx_owner_guid` (`owner_guid`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Item System'

;

-- ----------------------------
-- Table structure for `mail`
-- ----------------------------
DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail` (
`id`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Identifier' ,
`messageType`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`stationery`  tinyint(3) NOT NULL DEFAULT 41 ,
`mailTemplateId`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`sender`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier' ,
`receiver`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier' ,
`subject`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`body`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`has_items`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`expire_time`  bigint(40) UNSIGNED NOT NULL DEFAULT 0 ,
`deliver_time`  bigint(40) UNSIGNED NOT NULL DEFAULT 0 ,
`money`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`cod`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`checked`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`),
INDEX `idx_receiver` (`receiver`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Mail System'

;

-- ----------------------------
-- Table structure for `mail_items`
-- ----------------------------
DROP TABLE IF EXISTS `mail_items`;
CREATE TABLE `mail_items` (
`mail_id`  int(11) NOT NULL DEFAULT 0 ,
`item_guid`  int(11) NOT NULL DEFAULT 0 ,
`item_template`  int(11) NOT NULL DEFAULT 0 ,
`receiver`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier' ,
PRIMARY KEY (`mail_id`, `item_guid`),
INDEX `idx_receiver` (`receiver`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `battle_pet_aura`
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_aura`;
CREATE TABLE `battle_pet_aura` (
`guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`caster_guid`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Full Global Unique Identifier' ,
`item_guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`spell`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`stackcount`  int(11) UNSIGNED NOT NULL DEFAULT 1 ,
`remaincharges`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`basepoints0`  int(11) NOT NULL DEFAULT 0 ,
`basepoints1`  int(11) NOT NULL DEFAULT 0 ,
`basepoints2`  int(11) NOT NULL DEFAULT 0 ,
`periodictime0`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`periodictime1`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`periodictime2`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`maxduration`  int(11) NOT NULL DEFAULT 0 ,
`remaintime`  int(11) NOT NULL DEFAULT 0 ,
`effIndexMask`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `caster_guid`, `item_guid`, `spell`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Battle Pet System'

;

-- ----------------------------
-- Table structure for `battle_pet_spell`
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_spell`;
CREATE TABLE `battle_pet_spell` (
`guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`spell`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Spell Identifier' ,
`lvlreq` int(11) unsigned NOT NULL DEFAULT '1',
PRIMARY KEY (`guid`, `spell`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Battle Pet System'

;

-- ----------------------------
-- Records for `battle_pet_spell`
-- ----------------------------

INSERT INTO `bpet_ability` VALUES (0, 32703, 10); -- regen
INSERT INTO `bpet_ability` VALUES (1, 32703, 10); -- regen
INSERT INTO `bpet_ability` VALUES (2, 32703, 10); -- regen
INSERT INTO `bpet_ability` VALUES (3, 7160, 10); -- execute
INSERT INTO `bpet_ability` VALUES (4, 7160, 10); -- execute
INSERT INTO `bpet_ability` VALUES (5, 7160, 10); -- execute
INSERT INTO `bpet_ability` VALUES (6, 118442, 10); -- swiftness
INSERT INTO `bpet_ability` VALUES (7, 118442, 10); -- swiftness
INSERT INTO `bpet_ability` VALUES (8, 118442, 10); -- swiftness
INSERT INTO `bpet_ability` VALUES (9, 41410, 10); -- damned
INSERT INTO `bpet_ability` VALUES (10, 41410, 10); -- damned
INSERT INTO `bpet_ability` VALUES (11, 41410, 10); -- damned
INSERT INTO `bpet_ability` VALUES (12, 115997, 10); -- elusiveness
INSERT INTO `bpet_ability` VALUES (13, 115997, 10); -- elusiveness
INSERT INTO `bpet_ability` VALUES (14, 115997, 10); -- elusiveness
INSERT INTO `bpet_ability` VALUES (15, 33054, 10); -- spellshield
INSERT INTO `bpet_ability` VALUES (16, 33054, 10); -- spellshield
INSERT INTO `bpet_ability` VALUES (17, 33054, 10); -- spellshield
INSERT INTO `bpet_ability` VALUES (18, 2380, 10); -- wheather resistance
INSERT INTO `bpet_ability` VALUES (19, 2380, 10); -- wheather resistance
INSERT INTO `bpet_ability` VALUES (20, 2380, 10); -- wheather resistance
INSERT INTO `bpet_ability` VALUES (21, 60075, 10); -- enrage
INSERT INTO `bpet_ability` VALUES (22, 60075, 10); -- enrage
INSERT INTO `bpet_ability` VALUES (23, 60075, 10); -- enrage
INSERT INTO `bpet_ability` VALUES (24, 8361, 10); -- purity
INSERT INTO `bpet_ability` VALUES (25, 8361, 10); -- purity
INSERT INTO `bpet_ability` VALUES (26, 8361, 10); -- purity
INSERT INTO `bpet_ability` VALUES (27, 64668, 10); -- failsafe
INSERT INTO `bpet_ability` VALUES (28, 64668, 10); -- failsafe
INSERT INTO `bpet_ability` VALUES (29, 64668, 10); -- failsafe

-- ----------------------------
-- Table structure for `battle_pet_spell_cooldown`
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_spell_cooldown`;
CREATE TABLE `battle_pet_spell_cooldown` (
`guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier, Low part' ,
`spell`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Spell Identifier' ,
`time`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `spell`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `pet_aura`
-- ----------------------------
DROP TABLE IF EXISTS `pet_aura`;
CREATE TABLE `pet_aura` (
`guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`caster_guid`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Full Global Unique Identifier' ,
`item_guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`spell`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`stackcount`  int(11) UNSIGNED NOT NULL DEFAULT 1 ,
`remaincharges`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`basepoints0`  int(11) NOT NULL DEFAULT 0 ,
`basepoints1`  int(11) NOT NULL DEFAULT 0 ,
`basepoints2`  int(11) NOT NULL DEFAULT 0 ,
`periodictime0`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`periodictime1`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`periodictime2`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`maxduration`  int(11) NOT NULL DEFAULT 0 ,
`remaintime`  int(11) NOT NULL DEFAULT 0 ,
`effIndexMask`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `caster_guid`, `item_guid`, `spell`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Pet System'

;

-- ----------------------------
-- Table structure for `pet_spell`
-- ----------------------------
DROP TABLE IF EXISTS `pet_spell`;
CREATE TABLE `pet_spell` (
`guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`spell`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Spell Identifier' ,
`active`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `spell`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Pet System'

;

-- ----------------------------
-- Table structure for `pet_spell_cooldown`
-- ----------------------------
DROP TABLE IF EXISTS `pet_spell_cooldown`;
CREATE TABLE `pet_spell_cooldown` (
`guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier, Low part' ,
`spell`  int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Spell Identifier' ,
`time`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `spell`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `petition`
-- ----------------------------
DROP TABLE IF EXISTS `petition`;
CREATE TABLE `petition` (
`ownerguid`  int(10) UNSIGNED NOT NULL ,
`petitionguid`  int(10) UNSIGNED NULL DEFAULT 0 ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`type`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`ownerguid`, `type`),
UNIQUE INDEX `index_ownerguid_petitionguid` (`ownerguid`, `petitionguid`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Guild System'

;

-- ----------------------------
-- Table structure for `petition_sign`
-- ----------------------------
DROP TABLE IF EXISTS `petition_sign`;
CREATE TABLE `petition_sign` (
`ownerguid`  int(10) UNSIGNED NOT NULL ,
`petitionguid`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`playerguid`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`player_account`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`type`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`petitionguid`, `playerguid`),
INDEX `Idx_playerguid` (`playerguid`) USING BTREE ,
INDEX `Idx_ownerguid` (`ownerguid`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Guild System'

;

-- ----------------------------
-- Table structure for `saved_variables`
-- ----------------------------
DROP TABLE IF EXISTS `saved_variables`;
CREATE TABLE `saved_variables` (
`NextArenaPointDistributionTime`  bigint(40) UNSIGNED NOT NULL DEFAULT 0 ,
`NextDailyQuestResetTime`  bigint(40) UNSIGNED NOT NULL DEFAULT 0 ,
`NextWeeklyQuestResetTime`  bigint(40) UNSIGNED NOT NULL DEFAULT 0 ,
`NextMonthlyQuestResetTime`  bigint(40) UNSIGNED NOT NULL DEFAULT 0 ,
`cleaning_flags`  int(11) UNSIGNED NOT NULL DEFAULT 0 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Variable Saves'

;

-- ----------------------------
-- Table structure for `world`
-- ----------------------------
DROP TABLE IF EXISTS `world`;
CREATE TABLE `world` (
`map`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`data`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`map`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Auto increment value for `bugreport`
-- ----------------------------
ALTER TABLE `bugreport` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `character_equipmentsets`
-- ----------------------------
ALTER TABLE `character_equipmentsets` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `character_ticket`
-- ----------------------------
ALTER TABLE `character_ticket` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `character_tutorial`
-- ----------------------------
ALTER TABLE `character_tutorial` AUTO_INCREMENT=1;