/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : blog_dev

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 11/04/2019 17:23:48
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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES (1, '2019-04-11 16:18:49', '2019-04-11 16:18:49', NULL, 0, 'f-1554970728891', 91294, '89 KB', 'headPic.png', '1554970728864.png', '1b54a4fe5a69b4d6ea4c131597860679', NULL, '/1554970728864.png');
INSERT INTO `file` VALUES (2, '2019-04-11 17:11:26', '2019-04-11 17:11:26', NULL, 0, 'f-1554973886060', 184151, '179 KB', 'ying.png', '1554973886043.png', 'd58d1f42246298663967f0e3e2201460', NULL, '/1554973886043.png');
INSERT INTO `file` VALUES (3, '2019-04-11 17:14:55', '2019-04-11 17:14:55', NULL, 0, 'f-1554974095148', 184151, '179 KB', 'ying.png', '1554974095091.png', 'd58d1f42246298663967f0e3e2201460', NULL, '/1554974095091.png');

SET FOREIGN_KEY_CHECKS = 1;
