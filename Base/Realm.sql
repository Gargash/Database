-- ----------------------------
-- Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
`id`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identifier' ,
`username`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`sha_pass_hash`  varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`gmlevel`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`sessionkey`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`v`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`s`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`email`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`joindate`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`last_ip`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.0.0.0' ,
`failed_logins`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`locked`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`last_login`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`active_realm_id`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`expansion`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`mutetime`  bigint(40) UNSIGNED NOT NULL DEFAULT 0 ,
`locale`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`os`  varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
PRIMARY KEY (`id`),
UNIQUE INDEX `idx_username` (`username`) USING BTREE ,
INDEX `idx_gmlevel` (`gmlevel`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Account System'
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `account_banned`
-- ----------------------------
DROP TABLE IF EXISTS `account_banned`;
CREATE TABLE `account_banned` (
`id`  int(11) NOT NULL DEFAULT 0 COMMENT 'Account id' ,
`bandate`  bigint(40) NOT NULL DEFAULT 0 ,
`unbandate`  bigint(40) NOT NULL DEFAULT 0 ,
`bannedby`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`banreason`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`active`  tinyint(4) NOT NULL DEFAULT 1 ,
PRIMARY KEY (`id`, `bandate`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Ban List'

;

-- ----------------------------
-- Table structure for `ip_banned`
-- ----------------------------
DROP TABLE IF EXISTS `ip_banned`;
CREATE TABLE `ip_banned` (
`ip`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.0.0.0' ,
`bandate`  bigint(40) NOT NULL ,
`unbandate`  bigint(40) NOT NULL ,
`bannedby`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '[Console]' ,
`banreason`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'no reason' ,
PRIMARY KEY (`ip`, `bandate`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Banned IPs'

;

-- ----------------------------
-- Table structure for `realmcharacters`
-- ----------------------------
DROP TABLE IF EXISTS `realmcharacters`;
CREATE TABLE `realmcharacters` (
`realmid`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`acctid`  bigint(20) UNSIGNED NOT NULL ,
`numchars`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`realmid`, `acctid`),
INDEX `acctid` (`acctid`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Realm Character Tracker'

;

-- ----------------------------
-- Table structure for `realmd_db_version`
-- ----------------------------
DROP TABLE IF EXISTS `realmd_db_version`;
CREATE TABLE `realmd_db_version` (
`required_10008_01_realmd_realmd_db_version`  bit(1) NULL DEFAULT NULL 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Last applied sql update to DB'

;

-- ----------------------------
-- Table structure for `realmlist`
-- ----------------------------
DROP TABLE IF EXISTS `realmlist`;
CREATE TABLE `realmlist` (
`id`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`address`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '127.0.0.1' ,
`port`  int(11) NOT NULL DEFAULT 8085 ,
`icon`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`realmflags`  tinyint(3) UNSIGNED NOT NULL DEFAULT 2 COMMENT 'Supported masks: 0x1 (invalid, not show in realm list), 0x2 (offline, set by arctiumworld), 0x4 (show version and build), 0x20 (new players), 0x40 (recommended)' ,
`timezone`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`allowedSecurityLevel`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`population`  float UNSIGNED NOT NULL DEFAULT 0 ,
`realmbuilds`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '15464' ,
PRIMARY KEY (`id`),
UNIQUE INDEX `idx_name` (`name`) USING BTREE 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Realm System'
AUTO_INCREMENT=2

;

-- ----------------------------
-- Table structure for `uptime`
-- ----------------------------
DROP TABLE IF EXISTS `uptime`;
CREATE TABLE `uptime` (
`realmid`  int(11) UNSIGNED NOT NULL ,
`starttime`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`startstring`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`uptime`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`maxplayers`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`realmid`, `starttime`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Uptime system'

;

-- ----------------------------
-- Auto increment value for `account`
-- ----------------------------
ALTER TABLE `account` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `realmlist`
-- ----------------------------
ALTER TABLE `realmlist` AUTO_INCREMENT=2;

-- ----------------------------
-- Misc Records
-- ----------------------------
INSERT INTO `realmd_db_version` VALUES (NULL);
INSERT INTO `realmlist` VALUES (1, 'MoP 5.0.4 Beta', '127.0.0.1', 8085, 1, 0, 1, 0, 0, '15882');