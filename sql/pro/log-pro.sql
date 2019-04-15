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

 Date: 15/04/2019 15:57:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `del_flag` int(11) NOT NULL,
  `content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bind_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (1, '2019-04-15 09:42:24', NULL, 0, '创建草稿, 并新增文章 Markdown 内容', 'article', 'ar-1555292543920');
INSERT INTO `log` VALUES (2, '2019-04-15 09:52:55', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1555292543920');
INSERT INTO `log` VALUES (3, '2019-04-15 10:18:03', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1555292543920');
INSERT INTO `log` VALUES (4, '2019-04-15 10:28:51', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1555292543920');
INSERT INTO `log` VALUES (5, '2019-04-15 10:34:48', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1555292543920');
INSERT INTO `log` VALUES (6, '2019-04-15 11:06:41', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1555292543920');
INSERT INTO `log` VALUES (7, '2019-04-15 12:31:51', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1555292543920');
INSERT INTO `log` VALUES (8, '2019-04-15 13:56:14', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1555292543920');
INSERT INTO `log` VALUES (9, '2019-04-15 15:18:53', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1555292543920');
INSERT INTO `log` VALUES (10, '2019-04-15 15:36:29', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1555292543920');

SET FOREIGN_KEY_CHECKS = 1;
