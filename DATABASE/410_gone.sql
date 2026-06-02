/*
 Navicat Premium Data Transfer

 Source Server         : 103.147.35.20 - tunnel
 Source Server Type    : MySQL
 Source Server Version : 100339
 Source Host           : 127.0.0.1:3307
 Source Schema         : katatech_db

 Target Server Type    : MySQL
 Target Server Version : 100339
 File Encoding         : 65001

 Date: 15/04/2026 18:31:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for 410_gone
-- ----------------------------
DROP TABLE IF EXISTS `410_gone`;
CREATE TABLE `410_gone`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url_gone` varchar(600) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_user` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 215 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
