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

 Date: 15/04/2019 15:57:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dict
-- ----------------------------
DROP TABLE IF EXISTS `dict`;
CREATE TABLE `dict`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `del_flag` int(11) NOT NULL,
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dict
-- ----------------------------
INSERT INTO `dict` VALUES (1, '2019-04-14 16:44:35', '2019-04-15 14:11:46', NULL, 0, 'file_call_path', 'http://96sru6.natappfree.cc/upload/', 'file_call_path', '文件访问路径前缀');
INSERT INTO `dict` VALUES (2, '2019-04-14 16:49:55', '2019-04-15 09:02:44', NULL, 0, 'upload_path', 'D:\\Java Project\\self study\\idea\\myBlog\\fileUpload_pro\\upload', 'upload_path', '上传文件路径前缀\nD:\\Java Project\\self study\\idea\\myBlog\\fileUpload_pro\\upload ;\nE:\\Java Project\\idea\\self study\\myBlog\\fileUpload_pro\\upload\\');

SET FOREIGN_KEY_CHECKS = 1;
