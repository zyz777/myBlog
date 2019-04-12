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

 Date: 12/04/2019 16:17:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article_draft
-- ----------------------------
DROP TABLE IF EXISTS `article_draft`;
CREATE TABLE `article_draft`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `del_flag` int(1) NOT NULL,
  `ar_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '如果是新增,则自动生成',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `descn` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ad_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'article_draft的 ad_id',
  `is_new` int(1) NOT NULL COMMENT '新增true; 版本更新false',
  `cid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'category的 cid',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ad_ad_id`(`ad_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for article_history
-- ----------------------------
DROP TABLE IF EXISTS `article_history`;
CREATE TABLE `article_history`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `del_flag` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `descn` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_comment` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_recommend` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_top` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `browse_num` int(11) NOT NULL,
  `comment_num` int(11) NOT NULL,
  `like_num` int(11) NOT NULL,
  `ar_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'article_release的 ar_id',
  `version` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ah_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'article_history的 ah_id',
  `cid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'category的 cid',
  `ar_start_time` datetime(0) NOT NULL COMMENT '当前版本开始时间',
  `ar_end_time` datetime(0) NULL DEFAULT NULL COMMENT '当前版本结束时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ah_ah_id`(`ah_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for article_release
-- ----------------------------
DROP TABLE IF EXISTS `article_release`;
CREATE TABLE `article_release`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `del_flag` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `descn` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_comment` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_recommend` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_top` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `browse_num` int(11) NOT NULL,
  `comment_num` int(11) NOT NULL,
  `like_num` int(11) NOT NULL,
  `ar_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `version` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'category的 cid',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ar_ar_id`(`ar_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for article_tag_mapping
-- ----------------------------
DROP TABLE IF EXISTS `article_tag_mapping`;
CREATE TABLE `article_tag_mapping`  (
  `ar_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'article_draft/article_release的 ar_id',
  `tid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'tag的tid',
  UNIQUE INDEX `atm_ar_id_tid`(`ar_id`, `tid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for article_version
-- ----------------------------
DROP TABLE IF EXISTS `article_version`;
CREATE TABLE `article_version`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `del_flag` int(11) NOT NULL,
  `version` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ar_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `update_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `av_version_ar_id`(`version`, `ar_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `del_flag` int(11) NOT NULL,
  `cid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `p_cid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `del_flag` int(11) NOT NULL,
  `tid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
