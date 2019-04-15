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

 Date: 15/04/2019 15:57:19
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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article_draft
-- ----------------------------
INSERT INTO `article_draft` VALUES (1, '2019-04-15 09:42:24', '2019-04-15 15:36:29', NULL, 0, 'ar-1555292543920', NULL, NULL, '|   文章概要|   |\n| :------------: | :------------: |\n|  文章标题 |  <font color=\'red\'>《灵魂体》</font> |\n|  讲员 | <font color=\'red\'>钟弟兄</font>  |\n|  地点 | <font color=\'red\'>下梅林查经会</font>  |\n\n[TOC]\n\n# 前言\n> 创世记 1:1 和合本\n>> **<font color=\'red\'> 起初,神创造天地。</font>**\n\n\n> 希伯来书 3:4 和合本\n>> **<font color=\'red\'>因为房屋都必有人建造，但建造万物的就是　神。 </font>**\n\n<code><span style=\"font-size: small; color: red;\">**天地**</span></code>、<code><span style=\"font-size: small; color: red;\">**万物**</span></code>都是神造的，可以晓得<code><span style=\"font-size: small; color: red;\">**神**</span></code>是存在的\n\n> 罗马书 1:20 和合本\n>> **<font color=\'red\'>自从造天地以来，　神的永能和神性是明明可知的，虽是眼不能见，但藉着所造之物就可以晓得，叫人无可推诿。 </font>**\n\n\n# 一、人的构成\n\n> 诗篇 90:9-10 和合本\n>> **<span style=\"color: red;\">我们经过的日子都在你震怒之下；\n我们度尽的年岁好像一声叹息。\n我们一生的年日是七十岁，\n若是强壮可到八十岁；\n但其中所矜夸的不过是劳苦愁烦，\n转眼成空，我们便如飞而去。</span>**\n\n<code><span style=\"font-size: small; color: red;\">**预言**</span></code>人的一生都是<span style=\"color: red;\">‘劳苦愁烦’</span>（工作累，苦，加班太多，作业太多...）。\n人的一天，24小时，都在<span style=\"color: red;\">‘喜怒悲唉’</span>中反复、循环的度过。\n\n> 帖撒罗尼迦前书 5:23 和合本\n>> **<span style=\"color: red;\">愿赐平安的　神亲自使你们全然成圣！又愿你们的灵与魂与身子得蒙保守，在我们主耶稣基督降临的时候，完全无可指摘！</span>**\n\n顺序是：<code><span style=\"font-size: small; color: red;\">**灵**</span></code>、<code><span style=\"font-size: small; color: red;\">**魂**</span></code>、<code><span style=\"font-size: small; color: red;\">**肉体**</span></code>；由此可知，<code><span style=\"font-size: small; color: red;\">**灵**</span></code>是最重要的。\n\n![11](/upload/1555302649898.png \"11\")\n\n## ①灵\n> 哥林多前书 2:15 和合本\n>> **<span style=\"color: red;\">属灵的人能看透万事，却没有一人能看透了他。</span>**\n\n> 约翰福音 6:63 和合本\n>> **<span style=\"color: red;\">叫人活着的乃是灵，肉体是无益的。我对你们所说的话就是灵，就是生命。</span>**\n\n> 约翰福音 4:24 和合本\n>> **<span style=\"color: red;\"> 神是个灵（或无个字），所以拜他的必须用心灵和诚实拜他。</span>**\n\n> 创世记 1:26-27 和合本\n>> **<span style=\"color: red;\">神说：“我们要照着我们的形像、按着我们的样式造人，使他们管理海里的鱼、空中的鸟、地上的牲畜，和全地，并地上所爬的一切昆虫。”　神就照着自己的形像造人，乃是照着他的形像造男造女。</span>**\n\n> 以弗所书 4:24 和合本\n>> **<span style=\"color: red;\">并且穿上新人；这新人是照着　神的形像造的，有真理的仁义和圣洁。</span>**\n\n> 箴言 18:14 和合本\n>>**<span style=\"color: red;\">人有疾病，心能忍耐；\n心灵忧伤，谁能承当呢？</span>**\n\n> 箴言 17:22 和合本\n>> **<span style=\"color: red;\">喜乐的心乃是良药；\n忧伤的灵使骨枯干。</span>**\n\n> 诗篇 16:9 和合本\n>> **<span style=\"color: red;\">因此，我的心欢喜，我的灵（原文是荣耀）快乐；\n我的肉身也要安然居住。</span>**\n\n> 箴言 4:22 和合本\n>> **<span style=\"color: red;\">因为得着它的，就得了生命，\n又得了医全体的良药。</span>**\n\n> <span id=\"aaaBack\">使徒行传 20:7-10 和合本</span>\n>> **<span style=\"color: blue;\">[点击跳转‘附录’查看](#aaaJump)</span>**\n\n\n\n\n## ②魂\n`控制肉体的行动`，比如：呼吸，吃喝拉撒，表情。\n受**<span style=\"color: red;\">`灵`</span>**的控制，接收**<span style=\"color: red;\">`灵`</span>**的指令，控制`肉体`执行指令\n\n## ③肉体\n> 约翰福音 6:63 和合本\n>> **<span style=\"color: red;\">叫人活着的乃是灵，肉体是无益的。我对你们所说的话就是灵，就是生命。</span>**\n\n# 二、灵的来源\n> **<span style=\"color: blue;\">Q：灵从何而来？</span>**\n> **<span style=\"color: red;\">A：神造人的灵：**<span style=\"color: red;\">`造人里面之灵的耶和华`</span>**</span>**\n>> 撒迦利亚书 12:1 和合本\n>>> **<span style=\"color: red;\">耶和华论以色列的默示。\n铺张诸天、建立地基、造人里面之灵的耶和华说：</span>**\n\n<br/>\n\n> **<span style=\"color: blue;\">Q：神是如何造的灵？</span>**\n> **<span style=\"color: red;\">A：用`道`（思想）造**\n>> 约翰福音 1:1-4 和合本\n>>>  **<span style=\"color: red;\">太初有道，道与　神同在，道就是　神。这道太初与　神同在。万物是藉着他造的；凡被造的，没有一样不是藉着他造的。生命在他里头，这生命就是人的光。</span>**\n\n<br/>\n\n> 创世记 1:26-27 和合本\n>> **<span style=\"color: red;\">神说：“我们要照着我们的形像、按着我们的样式造人，使他们管理海里的鱼、空中的鸟、地上的牲畜，和全地，并地上所爬的一切昆虫。”　神就照着自己的形像造人，乃是照着他的形像造男造女。</span>**\n\n> 创世记 2:7 和合本\n>> **<span style=\"color: red;\">耶和华　神用地上的尘土造人，将生气吹在他鼻孔里，他就成了有灵的活人，名叫亚当。</span>**\n\n> 创世记 6:3 和合本\n>> **<span style=\"color: red;\">耶和华说：“人既属乎血气，我的灵就不永远住在他里面；然而他的日子还可到一百二十年。”</span>**\n\n> 创世记 6:5 和合本\n>> **<span style=\"color: red;\">耶和华见人在地上罪恶很大，终日所思想的尽都是恶，</span>**\n\n> 约翰一书 5:19 和合本\n>> **<span style=\"color: red;\">我们知道，我们是属　神的，全世界都卧在那恶者手下。</span>**\n\n# 三、肉体的来源\n> 约伯记 1:21 和合本\n>> **<span style=\"color: red;\">说：“我赤身出于母胎，也必赤身归回；赏赐的是耶和华，收取的也是耶和华。耶和华的名是应当称颂的。”</span>**\n\n> 约伯记 33:6 和合本\n>> **<span style=\"color: red;\">我在　神面前与你一样，\n也是用土造成。</span>**\n\n> 犹大书 1:10 和合本\n>> **<span style=\"color: red;\">但这些人毁谤他们所不知道的。他们本性所知道的事与那没有灵性的畜类一样，在这事上竟败坏了自己。</span>**\n\n> 创世记 3:19 和合本\n>> **<span style=\"color: red;\">你必汗流满面才得糊口，\n直到你归了土，\n因为你是从土而出的。\n你本是尘土，仍要归于尘土。</span>**\n\n> 启示录 20:12 和合本\n>> **<span style=\"color: red;\">我又看见死了的人，无论大小，都站在宝座前。案卷展开了，并且另有一卷展开，就是生命册。死了的人都凭着这些案卷所记载的，照他们所行的受审判。</span>**\n\n# 四、有神样式的人\n> 加拉太书 5:22-23 和合本\n>> **<span style=\"color: red;\">圣灵所结的果子，就是仁爱、喜乐、和平、忍耐、恩慈、良善、信实、温柔、节制。这样的事没有律法禁止。</span>**\n\n# 五、有魔鬼思想样式的人\n> 加拉太书 5:19-21 和合本\n>> **<span style=\"color: red;\">情欲的事都是显而易见的，就如奸淫、污秽、邪荡、拜偶像、邪术、仇恨、争竞、忌恨、恼怒、结党、纷争、异端、嫉妒（有古卷加：凶杀二字）、醉酒、荒宴等类。我从前告诉你们，现在又告诉你们，行这样事的人必不能承受　神的国。</span>**\n\n> 创世记 8:21-22 和合本\n>> **<span style=\"color: red;\">耶和华闻那馨香之气，就心里说：“我不再因人的缘故咒诅地（人从小时心里怀着恶念），也不再按着我才行的灭各种的活物了。地还存留的时候，稼穑、寒暑、冬夏、昼夜就永不停息了。”</span>**\n\n> 罗马书 8:5-8 和合本\n>> **<span style=\"color: red;\">因为，随从肉体的人体贴肉体的事；随从圣灵的人体贴圣灵的事。体贴肉体的，就是死；体贴圣灵的，乃是生命、平安。原来体贴肉体的，就是与　神为仇；因为不服　神的律法，也是不能服，而且属肉体的人不能得　神的喜欢。</span>**\n\n> 罗马书 8:13 和合本\n>> **<span style=\"color: red;\">你们若顺从肉体活着，必要死；若靠着圣灵治死身体的恶行，必要活着。</span>**\n\n# 附录\n> <span id=\"aaaJump\">使徒行传 20:7-10 和合本</span> [点击返回](#aaaBack)\n>> **<span style=\"color: red;\">七日的第一日，我们聚会擘饼的时候，保罗因为要次日起行，就与他们讲论，直讲到半夜。我们聚会的那座楼上，有好些灯烛。有一个少年人，名叫犹推古，坐在窗台上，困倦沉睡。保罗讲了多时，少年人睡熟了，就从三层楼上掉下去；扶起他来，已经死了。保罗下去，伏在他身上，抱着他，说：“你们不要发慌，他的灵魂还在身上。”</span>**', NULL, 'ad-1555292543920', 1, NULL);

SET FOREIGN_KEY_CHECKS = 1;
