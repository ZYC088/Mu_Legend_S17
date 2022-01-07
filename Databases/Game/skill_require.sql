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

 Date: 07/01/2022 12:08:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for skill_require
-- ----------------------------
DROP TABLE IF EXISTS `skill_require`;
CREATE TABLE `skill_require` (
  `skill` smallint unsigned NOT NULL,
  `require_skill` smallint unsigned NOT NULL,
  `require_master_skill` smallint unsigned NOT NULL,
  `require_master_level` tinyint unsigned NOT NULL,
  PRIMARY KEY (`skill`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of skill_require
-- ----------------------------
BEGIN;
INSERT INTO `skill_require` VALUES (723, 43, 339, 10);
INSERT INTO `skill_require` VALUES (724, 2, 390, 10);
INSERT INTO `skill_require` VALUES (725, 2, 390, 10);
INSERT INTO `skill_require` VALUES (726, 9, 385, 10);
INSERT INTO `skill_require` VALUES (727, 24, 411, 10);
INSERT INTO `skill_require` VALUES (729, 215, 455, 10);
INSERT INTO `skill_require` VALUES (730, 215, 455, 10);
INSERT INTO `skill_require` VALUES (731, 55, 490, 10);
INSERT INTO `skill_require` VALUES (732, 55, 490, 10);
INSERT INTO `skill_require` VALUES (733, 13, 484, 10);
INSERT INTO `skill_require` VALUES (734, 2, 484, 10);
INSERT INTO `skill_require` VALUES (736, 61, 508, 10);
INSERT INTO `skill_require` VALUES (737, 238, 523, 10);
INSERT INTO `skill_require` VALUES (739, 263, 559, 10);
INSERT INTO `skill_require` VALUES (282, 262, 558, 10);
INSERT INTO `skill_require` VALUES (285, 284, 751, 10);
INSERT INTO `skill_require` VALUES (288, 225, 778, 10);
INSERT INTO `skill_require` VALUES (294, 293, 782, 10);
INSERT INTO `skill_require` VALUES (1501, 43, 339, 10);
INSERT INTO `skill_require` VALUES (2003, 2002, 824, 10);
INSERT INTO `skill_require` VALUES (2005, 2004, 826, 10);
INSERT INTO `skill_require` VALUES (2012, 55, 490, 10);
INSERT INTO `skill_require` VALUES (2013, 13, 484, 10);
INSERT INTO `skill_require` VALUES (243, 242, 874, 10);
INSERT INTO `skill_require` VALUES (247, 246, 856, 10);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
