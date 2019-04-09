/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.247.130
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : 192.168.247.130:3306
 Source Schema         : blog_dev

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 09/04/2019 22:34:34
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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dict
-- ----------------------------
INSERT INTO `dict` VALUES (2, '2019-04-07 00:37:27', '2019-04-07 00:55:38', NULL, 0, 'ip', '127.0.0.1:8080', 'host_port', '域名123');
INSERT INTO `dict` VALUES (4, '2019-04-07 00:52:14', '2019-04-07 00:56:11', NULL, 0, 'test', 'test', 'test', 'test');
INSERT INTO `dict` VALUES (5, '2019-04-09 17:32:47', '2019-04-09 22:30:27', NULL, 0, 'upload_path', 'E:\\Java Project\\idea\\self study\\myBlog\\upload\\src\\main\\resources\\static\\', 'upload_path', '文件上传路径；\nupload/src/main/resources/static；\nD:\\upload；');
INSERT INTO `dict` VALUES (6, '2019-04-09 22:22:05', '2019-04-09 22:28:06', NULL, 0, 'file_call_path', 'http://localhost:8081/', 'file_call_path', '文件访问地址');

SET FOREIGN_KEY_CHECKS = 1;
