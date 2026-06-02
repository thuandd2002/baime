/*
 Navicat Premium Data Transfer

 Source Server         : LOCALHOST
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : amslink

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 01/07/2025 23:50:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for vn_province
-- ----------------------------
DROP TABLE IF EXISTS `vn_province`;
CREATE TABLE `vn_province`  (
  `provinceid` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thu_tu` tinyint(4) NULL DEFAULT 0,
  `active` tinyint(4) NULL DEFAULT 1,
  PRIMARY KEY (`provinceid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of vn_province
-- ----------------------------
INSERT INTO `vn_province` VALUES ('01', 'TP. Hà Nội', NULL, 1, 1);
INSERT INTO `vn_province` VALUES ('79', 'TP. Hồ Chí Minh', NULL, 2, 1);
INSERT INTO `vn_province` VALUES ('92', 'TP. Cần Thơ', NULL, 3, 1);
INSERT INTO `vn_province` VALUES ('48', 'TP. Đà Nẵng', NULL, 4, 1);
INSERT INTO `vn_province` VALUES ('31', 'TP. Hải Phòng', NULL, 5, 1);
INSERT INTO `vn_province` VALUES ('46', 'TP. Huế', NULL, 6, 1);
INSERT INTO `vn_province` VALUES ('91', 'Tỉnh An Giang', NULL, 7, 1);
INSERT INTO `vn_province` VALUES ('24', 'Tỉnh Bắc Ninh', NULL, 8, 1);
INSERT INTO `vn_province` VALUES ('04', 'Tỉnh Cao Bằng', NULL, 9, 1);
INSERT INTO `vn_province` VALUES ('96', 'Tỉnh Cà Mau', NULL, 10, 1);
INSERT INTO `vn_province` VALUES ('66', 'Tỉnh Đắk Lắk', NULL, 11, 1);
INSERT INTO `vn_province` VALUES ('11', 'Tỉnh Điện Biên', NULL, 12, 1);
INSERT INTO `vn_province` VALUES ('75', 'Tỉnh Đồng Nai', NULL, 13, 1);
INSERT INTO `vn_province` VALUES ('82', 'Tỉnh Đồng Tháp', NULL, 14, 1);
INSERT INTO `vn_province` VALUES ('42', 'Tỉnh Hà Tĩnh', NULL, 15, 1);
INSERT INTO `vn_province` VALUES ('33', 'Tỉnh Hưng Yên', NULL, 16, 1);
INSERT INTO `vn_province` VALUES ('52', 'Tỉnh Gia Lai', NULL, 17, 1);
INSERT INTO `vn_province` VALUES ('56', 'Tỉnh Khánh Hoà', NULL, 18, 1);
INSERT INTO `vn_province` VALUES ('12', 'Tỉnh Lai Châu', NULL, 19, 1);
INSERT INTO `vn_province` VALUES ('68', 'Tỉnh Lâm Đồng', NULL, 20, 1);
INSERT INTO `vn_province` VALUES ('20', 'Tỉnh Lạng Sơn', NULL, 21, 1);
INSERT INTO `vn_province` VALUES ('15', 'Tỉnh Lào Cai', NULL, 22, 1);
INSERT INTO `vn_province` VALUES ('40', 'Tỉnh Nghệ An', NULL, 23, 1);
INSERT INTO `vn_province` VALUES ('37', 'Tỉnh Ninh Bình', NULL, 24, 1);
INSERT INTO `vn_province` VALUES ('25', 'Tỉnh Phú Thọ', NULL, 25, 1);
INSERT INTO `vn_province` VALUES ('51', 'Tỉnh Quảng Ngãi', NULL, 26, 1);
INSERT INTO `vn_province` VALUES ('22', 'Tỉnh Quảng Ninh', NULL, 27, 1);
INSERT INTO `vn_province` VALUES ('44', 'Tỉnh Quảng Trị', NULL, 28, 1);
INSERT INTO `vn_province` VALUES ('14', 'Tỉnh Sơn La', NULL, 29, 1);
INSERT INTO `vn_province` VALUES ('80', 'Tỉnh Tây Ninh', NULL, 30, 1);
INSERT INTO `vn_province` VALUES ('19', 'Tỉnh Thái Nguyên', NULL, 31, 1);
INSERT INTO `vn_province` VALUES ('38', 'Tỉnh Thanh Hoá', NULL, 32, 1);
INSERT INTO `vn_province` VALUES ('08', 'Tỉnh Tuyên Quang', NULL, 33, 1);
INSERT INTO `vn_province` VALUES ('86', 'Tỉnh Vĩnh Long', NULL, 34, 1);

SET FOREIGN_KEY_CHECKS = 1;
