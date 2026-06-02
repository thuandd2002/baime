/*
 Navicat Premium Data Transfer

 Source Server         : 103.147.35.20 - tunnel
 Source Server Type    : MySQL
 Source Server Version : 100339
 Source Host           : localhost:3307
 Source Schema         : katatech_db

 Target Server Type    : MySQL
 Target Server Version : 100339
 File Encoding         : 65001

 Date: 08/07/2025 23:29:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for vn_province
-- ----------------------------
DROP TABLE IF EXISTS `vn_province`;
CREATE TABLE `vn_province`  (
  `provinceid` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thu_tu` int(11) NULL DEFAULT 0,
  `active` int(11) NULL DEFAULT 1,
  PRIMARY KEY (`provinceid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of vn_province
-- ----------------------------
INSERT INTO `vn_province` VALUES (1, 'TP. Hà Nội', '0', 1, 1);
INSERT INTO `vn_province` VALUES (79, 'TP. Hồ Chí Minh', '0', 2, 1);
INSERT INTO `vn_province` VALUES (92, 'TP. Cần Thơ', '0', 3, 1);
INSERT INTO `vn_province` VALUES (48, 'TP. Đà Nẵng', '0', 4, 1);
INSERT INTO `vn_province` VALUES (31, 'TP. Hải Phòng', '0', 5, 1);
INSERT INTO `vn_province` VALUES (46, 'TP. Huế', '0', 6, 1);
INSERT INTO `vn_province` VALUES (91, 'Tỉnh An Giang', '0', 7, 1);
INSERT INTO `vn_province` VALUES (24, 'Tỉnh Bắc Ninh', '0', 8, 1);
INSERT INTO `vn_province` VALUES (4, 'Tỉnh Cao Bằng', '0', 9, 1);
INSERT INTO `vn_province` VALUES (96, 'Tỉnh Cà Mau', '0', 10, 1);
INSERT INTO `vn_province` VALUES (66, 'Tỉnh Đắk Lắk', '0', 11, 1);
INSERT INTO `vn_province` VALUES (11, 'Tỉnh Điện Biên', '0', 12, 1);
INSERT INTO `vn_province` VALUES (75, 'Tỉnh Đồng Nai', '0', 13, 1);
INSERT INTO `vn_province` VALUES (82, 'Tỉnh Đồng Tháp', '0', 14, 1);
INSERT INTO `vn_province` VALUES (42, 'Tỉnh Hà Tĩnh', '0', 15, 1);
INSERT INTO `vn_province` VALUES (33, 'Tỉnh Hưng Yên', '0', 16, 1);
INSERT INTO `vn_province` VALUES (52, 'Tỉnh Gia Lai', '0', 17, 1);
INSERT INTO `vn_province` VALUES (56, 'Tỉnh Khánh Hoà', '0', 18, 1);
INSERT INTO `vn_province` VALUES (12, 'Tỉnh Lai Châu', '0', 19, 1);
INSERT INTO `vn_province` VALUES (68, 'Tỉnh Lâm Đồng', '0', 20, 1);
INSERT INTO `vn_province` VALUES (20, 'Tỉnh Lạng Sơn', '0', 21, 1);
INSERT INTO `vn_province` VALUES (15, 'Tỉnh Lào Cai', '0', 22, 1);
INSERT INTO `vn_province` VALUES (40, 'Tỉnh Nghệ An', '0', 23, 1);
INSERT INTO `vn_province` VALUES (37, 'Tỉnh Ninh Bình', '0', 24, 1);
INSERT INTO `vn_province` VALUES (25, 'Tỉnh Phú Thọ', '0', 25, 1);
INSERT INTO `vn_province` VALUES (51, 'Tỉnh Quảng Ngãi', '0', 26, 1);
INSERT INTO `vn_province` VALUES (22, 'Tỉnh Quảng Ninh', '0', 27, 1);
INSERT INTO `vn_province` VALUES (44, 'Tỉnh Quảng Trị', '0', 28, 1);
INSERT INTO `vn_province` VALUES (14, 'Tỉnh Sơn La', '0', 29, 1);
INSERT INTO `vn_province` VALUES (80, 'Tỉnh Tây Ninh', '0', 30, 1);
INSERT INTO `vn_province` VALUES (19, 'Tỉnh Thái Nguyên', '0', 31, 1);
INSERT INTO `vn_province` VALUES (38, 'Tỉnh Thanh Hoá', '0', 32, 1);
INSERT INTO `vn_province` VALUES (8, 'Tỉnh Tuyên Quang', '0', 33, 1);
INSERT INTO `vn_province` VALUES (86, 'Tỉnh Vĩnh Long', '0', 34, 1);

SET FOREIGN_KEY_CHECKS = 1;
