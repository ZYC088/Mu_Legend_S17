/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : mu_online_game

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 03/01/2022 23:09:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for character_base
-- ----------------------------
DROP TABLE IF EXISTS `character_base`;
CREATE TABLE `character_base` (
  `class` tinyint unsigned NOT NULL,
  `strenght` int unsigned NOT NULL,
  `agility` int unsigned NOT NULL,
  `vitality` int unsigned NOT NULL,
  `energy` int unsigned NOT NULL,
  `leadership` int unsigned NOT NULL,
  `life` int NOT NULL DEFAULT '0',
  `mana` int NOT NULL DEFAULT '0',
  `level_to_life` float unsigned NOT NULL,
  `level_to_mana` float unsigned NOT NULL,
  `vitality_to_life` float unsigned NOT NULL,
  `energy_to_mana` float unsigned NOT NULL,
  `world` smallint unsigned NOT NULL,
  `level` smallint NOT NULL DEFAULT '1',
  `points` int unsigned NOT NULL,
  `automatic_life_recovery` float unsigned NOT NULL,
  `automatic_mana_recovery` float unsigned NOT NULL,
  `automatic_shield_recovery` float unsigned NOT NULL,
  `automatic_stamina_recovery` float unsigned NOT NULL,
  `normal_levelup_points` int NOT NULL DEFAULT '5',
  `plus_levelup_points` int NOT NULL DEFAULT '1',
  `master_levelup_points` int NOT NULL DEFAULT '1',
  `majestic_level_up_points` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`class`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of character_base
-- ----------------------------
BEGIN;
INSERT INTO `character_base` VALUES (0, 18, 18, 15, 30, 0, 60, 60, 1, 2, 2, 2, 0, 1, 0, 3, 3.7, 0, 6, 5, 1, 1, 1);
INSERT INTO `character_base` VALUES (1, 28, 20, 25, 10, 0, 110, 20, 2, 0.5, 3, 1, 0, 1, 0, 3, 3.7, 0, 8, 5, 1, 1, 1);
INSERT INTO `character_base` VALUES (2, 22, 25, 20, 15, 0, 80, 30, 1, 1.5, 2, 1.5, 3, 1, 0, 3, 3.7, 0, 6, 5, 1, 1, 1);
INSERT INTO `character_base` VALUES (3, 26, 26, 26, 26, 0, 110, 60, 1, 1, 2, 2, 0, 1, 0, 3, 3.7, 0, 6, 7, 0, 1, 1);
INSERT INTO `character_base` VALUES (4, 26, 20, 20, 15, 25, 90, 40, 1.5, 1, 2, 1.5, 0, 1, 0, 3, 3.7, 0, 6, 7, 0, 1, 1);
INSERT INTO `character_base` VALUES (5, 21, 21, 18, 23, 0, 70, 20, 1, 1.5, 2, 1.7, 51, 1, 0, 3, 3.7, 0, 6, 5, 1, 1, 1);
INSERT INTO `character_base` VALUES (6, 32, 27, 25, 20, 0, 100, 40, 1.3, 1, 2, 1.3, 0, 1, 0, 3, 3.7, 0, 6, 7, 0, 1, 1);
INSERT INTO `character_base` VALUES (7, 30, 30, 25, 24, 0, 110, 40, 2, 1, 2, 1, 0, 1, 0, 3, 3.7, 0, 6, 7, 0, 1, 1);
INSERT INTO `character_base` VALUES (8, 13, 18, 14, 40, 0, 60, 60, 1.2, 1.8, 2, 1.5, 3, 1, 0, 3, 3.7, 0, 3, 5, 1, 1, 1);
INSERT INTO `character_base` VALUES (9, 28, 30, 15, 10, 0, 130, 10, 1.5, 1, 3, 1, 0, 1, 0, 3, 3.7, 0, 3, 5, 1, 1, 1);
INSERT INTO `character_base` VALUES (10, 20, 18, 20, 25, 0, 100, 80, 1.5, 1.5, 2, 2, 51, 1, 0, 3, 3.7, 0, 3, 5, 1, 1, 1);
INSERT INTO `character_base` VALUES (11, 19, 19, 15, 30, 0, 70, 70, 1.2, 1.8, 2, 1.5, 0, 1, 0, 3, 3.7, 0, 3, 5, 1, 1, 1);
INSERT INTO `character_base` VALUES (12, 18, 18, 19, 30, 0, 88, 75, 1.2, 1.8, 2, 1.5, 0, 1, 0, 3, 3.7, 0, 3, 5, 1, 1, 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
