/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 15/04/2019 15:57:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `del_flag` int(1) NOT NULL,
  `fid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `byte_size` int(11) NOT NULL COMMENT '字节',
  `display_size` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `original_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `now_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `md5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `crc32` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES (1, '2019-04-15 12:15:07', '2019-04-15 12:15:07', NULL, 0, 'f-1555301707194', 5424, '5 KB', 'QQ截图20190415110548.png', '1555301707175.png', 'c05a8703c39e5bf64eaf8e0c220bf525', NULL, '/1555301707175.png');
INSERT INTO `file` VALUES (2, '2019-04-15 12:30:50', '2019-04-15 12:30:50', NULL, 0, 'f-1555302649914', 8252, '8 KB', '灵魂体.png', '1555302649898.png', '30dcce7bc195067a872ab30ba4e178a5', NULL, '/1555302649898.png');

SET FOREIGN_KEY_CHECKS = 1;
