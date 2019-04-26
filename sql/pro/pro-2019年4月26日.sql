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

 Date: 26/04/2019 17:35:08
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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article_draft
-- ----------------------------
INSERT INTO `article_draft` VALUES (1, '2019-04-15 09:42:24', '2019-04-26 14:42:17', NULL, 0, 'ar-1555292543920', '灵魂体', '人的构成。', '|   文章概要|   |\n| :------------: | :------------: |\n|  文章标题 |  <font color=\'red\'>《灵魂体》</font> |\n|  讲员 | <font color=\'red\'>钟弟兄</font>  |\n|  时间 | <font color=\'red\'>2019年4月5日 晚</font>  |\n|  地点 | <font color=\'red\'>下梅林查经会</font>  |\n|  性质 | <font color=\'red\'>补课</font>  |\n\n[TOC]\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n# 前言\n> **<span style=\"color: blue;\">Q：人是从哪来的？</span>**\n<img src=\"/upload//1555376363386.jpg\" style=\"height:14rem;\"/>\n<img src=\"/upload//1555377226473.jpg\" style=\"height:14rem;\"/>\n> <span id=\"2-b\" style=\"color: red;\">**A：`希伯来书 3:4 和合本`**[(附录)](#2-j)</span>：神造<code><span style=\"font-size: small; color: red;\">**万物**</span></code>\n\n<span/>\n\n> **<span style=\"color: blue;\">Q：人要在地球村这个环境里生存，地球怎么来的？</span>**\n> <span id=\"1-b\" style=\"color: red;\">**A：`创世记 1:1 和合本`**[(附录)](#1-j)</span>：神造<code><span style=\"font-size: small; color: red;\">**天地**</span></code>\n\n<span id=\"3-b\" style=\"color: red;\">**`罗马书 1:20 和合本`**[(附录)](#3-j)</span>：藉着`所造之物`可以晓得<code><span style=\"color: red;\">**神**</span></code>是存在的\n\n> 乔布斯造苹果手机\n>> 就如人造物，乔布斯造手机，他可以解说手机的奥秘，证明手机是他造的。\n\n<span style=\"color: red;\">**`同理`**</span>\n\n> 神造`天地万物`\n>> 神可以解说`天地万物`的奥秘，在`《圣经》`中可以找到这些解说，证明`天地万物`是神造，证明<span style=\"color: red;\">**`神`**</span>是存在的。\n世上任何宗教的经文，都不敢说天地万物是他们造的。\n\n<span style=\"color: red;\">**接下来，一起来探讨`人的奥秘`！！！**</span>\n\n# 一、人的构成\n<!-- //此处注释掉了\n<span id=\"4-b\" style=\"color: red;\">**`诗篇 90:9-10 和合本`**[(附录)](#4-j)</span>：<code><span style=\"font-size: small; color: red;\">**预言**</span></code>人的一生都是<span style=\"color: red;\">‘劳苦愁烦’</span>（工作累，苦，加班太多，作业太多...）。\n\n人的一天，24小时，都在<span style=\"color: red;\">‘喜怒悲唉’</span>中反复、循环的度过。\n\n> **<span style=\"color: blue;\">Q：为什么人会有这么多行为表现呢？会感觉愁，会感觉烦，会笑，会哭...</span>**\n> <span id=\"5-b\" style=\"color: red;\">**A：强行解释**</span>：都是由你的思想，意念控制的，让你的肉体发出行为。\n-->\n<span></span>\n\n<span id=\"6-b\" style=\"color: red;\">**`帖撒罗尼迦前书 5:23 和合本`**[(附录)](#6-j)</span>：顺序是 &rarr; <code><span style=\"font-size: small; color: red;\">**灵**</span></code>、<code><span style=\"font-size: small; color: red;\">**魂**</span></code>、<code><span style=\"font-size: small; color: red;\">**肉体**</span></code>；由此可知，<code><span style=\"font-size: small; color: red;\">**灵**</span></code>是最重要的。\n> <span style=\"color: red;\">① 灵：英文是“spirit”，意思是“精神，思想”。\n② 魂：英文是“breath”，意思是“呼吸”。\n③ 肉体：英文是“flesh”，意思是“肉体”。</span>\n\n![11](/upload/1555302649898.png \"11\")\n\n## ①灵\n> <span style=\"color: blue;\">**Q：灵是什么？**</span>\n> <span id=\"8-b\" style=\"color: red;\">**A：`约翰福音 6:63 和合本`**[(附录)](#8-j)</span>：\n- ① `话` 就是 `灵`\n- ② 就是生命（带给你生命）\n`话`：精神、思想、意念\n<span style=\"color:red;\">怎样思想，就是怎样的灵；反过来也一样。有怎样的灵，就有怎样的思想。</span>\n灵是我的思想，灵喜，肉体就笑；灵悲，肉体就会苦。\n\n<span></span>\n\n> **<span style=\"color: blue;\">Q：话是什么？</span>**\n> <span style=\"color: red;\">**A：`神的道`。详情请学习后面的课程《福音》《祷告》《心田》**</span>\n\n<span></span>\n\n> <span style=\"color: blue;\">**Q：灵的痛苦，人是否能忍受？**</span>\n> <span id=\"12-b\" style=\"color: red;\">**A：`箴言 18:14 和合本`**[(附录)](#12-j)</span>：肉体的疼痛，人都能忍受的了；但灵的痛苦，无人承担得起，人承受不了。\n\n<span></span>\n> <span style=\"color: blue;\">**Q：若灵好，可以干嘛？有什么益处？**</span>\n> <span style=\"color: red;\">**A：肉体安康，病得医治。有生命，会长寿。**</span>\n> <span id=\"13-b\" style=\"color: red;\">**`箴言 17:22 和合本`**[(附录)](#13-j)</span>：喜乐的灵\n> <span id=\"14-b\" style=\"color: red;\">**`诗篇 16:9 和合本`**[(附录)](#14-j)</span>：心灵好，你的肉体，也会好。\n> <span id=\"15-b\" style=\"color: red;\">**`箴言 4:22 和合本`**[(附录)](#15-j)</span>：\n- ① 得着它，得生命\n- ② 医治全体\n>> <span style=\"color: blue;\">**Q：`它`是什么？**</span>\n>> <span style=\"color: red;\">**A：**</span>：在上面已经讲过，什么是`生命`？`[约翰福音 6:63]`中，`话`就是生命。那么，`它`&rarr; 就是`话`，`话`&rarr; 就是`神的道`。\n\n> 得着`神的道` &rarr; 医治你的灵（让你的灵有生命）&rarr; 再医治全体 &rarr; 有生命\n\n<span id=\"16-b\" style=\"color: red;\">**`使徒行传 20:7-10 和合本`**[(附录)](#16-j)</span>：灵魂决定，肉体存活。灵永存，肉体永存\n\n\n## ②魂\n`控制肉体的行动`，比如：呼吸，吃喝拉撒，表情等人体生命特征，及行为表现。\n受**<span style=\"color: red;\">`灵`</span>**的控制，接收**<span style=\"color: red;\">`灵`</span>**的指令，控制`肉体`执行指令\n\n## ③肉体\n<span id=\"17-b\" style=\"color: red;\">**`约翰福音 6:63 和合本`**[(附录)](#8-j)</span>：肉体无益\n\n# 二、灵的来源\n> <span style=\"color: blue;\">**Q：灵从何而来？**</span>\n> <span id=\"18-b\" style=\"color: red;\">**A：`撒迦利亚书 12:1 和合本`**[(附录)](#18-j)</span>：神造人的灵，从神而来。\n\n<span></span>\n> <span style=\"color: blue;\">**Q：神是什么？**</span>\n<img src=\"/upload//1555399956766.jpg\" style=\"height:13rem;\"/>\n> <span id=\"9-b\" style=\"color: red;\">**A：`约翰福音 4:24 和合本`**[(附录)](#9-j)</span>：神是灵\n\n<span></span>\n> <span style=\"color: blue;\">**Q：神是如何造的灵？灵造灵？**</span>\n> <span id=\"19-b\" style=\"color: red;\">**A：`约翰福音 1:1-4 和合本`**[(附录)](#19-j)</span>：神是`道`，用`道`（思想）造\n<img src=\"/upload//1555400747510.jpg\" style=\"height:17rem;\"/><img src=\"/upload//1555400910715.jpg\" style=\"height:10rem;\"/>\n\n<span></span>\n> <span style=\"color: blue;\">**Q：用道造的灵，这人有什么不一样的地方？**</span>\n> <span id=\"7-b\" style=\"color: red;\">**A：`哥林多前书 2:15 和合本`**[(附录)](#7-j)</span>：看透万事\n\n<span></span>\n> <span style=\"color: blue;\">**Q：看透万事？这么厉害，我怎么感觉我很傻B？**</span>\n> <span style=\"color: red;\">**A：那是因为，人的灵，不是神所造的那个灵了，人的灵，已经没有`神的道`了**</span>\n>> `亚当时代`\n>>> <span id=\"10-b\" style=\"color: red;\">**`创世记 1:26-27 和合本`**[(附录)](#10-j)</span>：神照着自己的形像造人\n<span id=\"21-b\" style=\"color: red;\">**`创世记 2:7 和合本`**[(附录)](#21-j)</span>：造`亚当`，让他治理`地球`。神的`灵`住在他里面。\n>>>> `用地上的尘土造人`：亚当已经是活人，但是他只有`魂`、`肉体`，和`畜类`一样，按本能行事；但在神的眼里，亚当不算活人，所以给了亚当`灵`，让亚当成为`有灵`的活人。\n\n>>><span style=\"color: red;\">亚当犯罪之后（罪带来的结局就是死）</span>：`神(的灵)`离开了亚当，`魔鬼`就住进了亚当的心里，地上就归`魔鬼`统治了。\n<span id=\"22-b\" style=\"color: red;\">**`创世记 6:3 和合本`**[(附录)](#22-j)</span>：属血气，就是罪，罪就是魔鬼。\n<span id=\"24-b\" style=\"color: red;\">**`约翰一书 5:19 和合本`**[(附录)](#24-j)</span>：`恶者`&rarr;`魔鬼`。\n<span id=\"23-b\" style=\"color: red;\">**`创世记 6:5 和合本`**[(附录)](#23-j)</span>：灵是人的思想、意念。`终日所思想的尽都是恶`，灵里都是罪，被罪辖制，人的灵被魔鬼掌控。\n<span id=\"36-b\" style=\"color: red;\">**`创世记 3:14 和合本`**[(附录)](#36-j)</span>：`蛇吃土`\n>>>> `蛇`🐍：比喻撒旦\n`土`：指肉体败坏\n`蛇吃土`：魔鬼撒旦会用尽一切办法，让你肉体败坏，然后吃掉。\n\n\n<span></span>\n> <span id=\"35-b\" style=\"color: red;\">**`哥林多后书 4:16 和合本`**[(附录)](#35-j)</span>：\n- ① 肉体：毁坏\n- ② 内心（灵）：更新\n\n> <span id=\"37-b\" style=\"color: red;\">**`腓立比书 3:21 和合本`**[(附录)](#37-j)</span>：当我们更新`灵`，就会改变肉体。\n\n\n\n# 三、肉体的来源\n> <span style=\"color: blue;\">**Q：肉体怎么来的？**</span>\n> <span id=\"25-b\" style=\"color: red;\">**A：`约伯记 1:21 和合本`**[(附录)](#25-j)</span>：`我赤身出于母胎，也必赤身归回`\n\n<span></span>\n> <span style=\"color: blue;\">**Q：`出于母胎`我知道，`赤身归回`什么意思？变回婴孩，回归母胎？**</span>\n<img src=\"/upload//1555403633143.png\" style=\"height:10rem;\"/>\n> <span id=\"25-b\" style=\"color: red;\">**A：感谢神，你妈这么长寿！！！（是出于母胎和尘土）**</span>\n<span id=\"28-b\" style=\"color: red;\">**`创世记 3:19 和合本`**[(附录)](#28-j)</span>：出于尘土\n<span id=\"26-b\" style=\"color: red;\">**`约伯记 33:6 和合本`**[(附录)](#26-j)</span>：人是`土`造的。科学早已证明，人体的元素和土元素是一模一样的。当我们死后，就会变为土，或许被某些果树当作养分吸收，父母吃了水果（土元素），生了我，我死后归回尘土，然后一直就这样循环着。\n\n\n\n<span></span>\n><span id=\"27-b\" style=\"color: red;\">**`犹大书 1:10 和合本`**[(附录)](#27-j)</span>：和畜生一样。畜类没有灵，只有`魂`在管`肉体`的行动表现。\n\n<span></span>\n> <span style=\"color: blue;\">**Q：末世来临，所有的灵将接受审判**</span>\n> <span id=\"29-b\" style=\"color: red;\">**A：`启示录 20:12 和合本`**[(附录)](#29-j)</span>：虽然你肉体死了，归于尘土，但你的灵没死，要接受审判。\n\n# 四、有神样式的人\n<span style=\"color: red;\">**肉体虽然毁坏，但灵可以更新。要让我们的灵，都能有神的样式。**</span>\n\n> <span style=\"color: blue;\">**Q：神的样式是怎样的呢？**</span>\n> <span id=\"11-b\" style=\"color: red;\">**A：`以弗所书 4:24 和合本`**[(附录)](#11-j)</span>：`有真理的仁义和圣洁`\n<span id=\"30-b\" style=\"color: red;\">**`加拉太书 5:22-23 和合本`**[(附录)](#30-j)</span>：结出`圣灵九果`\n\n# 五、有魔鬼思想样式的人\n> <span style=\"color: blue;\">**Q：魔鬼的样式是怎样的呢？**</span>\n> <span id=\"31-b\" style=\"color: red;\">**A：`加拉太书 5:19-21 和合本`**[(附录)](#31-j)</span>：情欲的事情\n<span id=\"32-b\" style=\"color: red;\">**`创世记 8:21-22 和合本`**[(附录)](#32-j)</span>：恶念从小就有，因为人是由血气生的。属血气就是罪\n<span id=\"33-b\" style=\"color: red;\">**`罗马书 8:5-8 和合本`**[(附录)](#33-j)</span>：体贴肉体，与神为仇\n<span id=\"34-b\" style=\"color: red;\">**`罗马书 8:13 和合本`**[(附录)](#34-j)</span>：顺从肉体，必要死。是“必要”、“一定”哦。\n\n\n\n# 经文附录\n> <span id=\"1-j\">[创世记 1:1 和合本](#1-b)</span>\n>> **<span style=\"color: red;\"> 起初,神创造天地。</span>**\n\n> <span id=\"2-j\">[希伯来书 3:4 和合本](#2-b)</span>\n>> **<span style=\"color: red;\">因为房屋都必有人建造，但建造万物的就是　神。 </span>**\n\n> <span id=\"3-j\">[罗马书 1:20 和合本](#3-b)</span>\n>> **<font color=\'red\'>自从造天地以来，　神的永能和神性是明明可知的，虽是眼不能见，但藉着所造之物就可以晓得，叫人无可推诿。 </font>**\n\n> <span id=\"4-j\">[诗篇 90:9-10 和合本](#4-b)</span>\n>> **<span style=\"color: red;\">我们经过的日子都在你震怒之下；\n我们度尽的年岁好像一声叹息。\n我们一生的年日是七十岁，\n若是强壮可到八十岁；\n但其中所矜夸的不过是劳苦愁烦，\n转眼成空，我们便如飞而去。</span>**\n\n> <span id=\"6-j\">[帖撒罗尼迦前书 5:23 和合本](#6-b)</span>\n>> **<span style=\"color: red;\">愿赐平安的　神亲自使你们全然成圣！又愿你们的灵与魂与身子得蒙保守，在我们主耶稣基督降临的时候，完全无可指摘！</span>**\n\n> <span id=\"7-j\">[哥林多前书 2:15 和合本](#7-b)</span>\n>> **<span style=\"color: red;\">属灵的人能看透万事，却没有一人能看透了他。</span>**\n\n>  <span id=\"8-j\">约翰福音 6:63 和合本 [返回1](#8-b) [返回2](#17-b)</span>\n>> **<span style=\"color: red;\">叫人活着的乃是灵，肉体是无益的。我对你们所说的话就是灵，就是生命。</span>**\n\n> <span id=\"9-j\">[约翰福音 4:24 和合本](#9-b)</span>\n>> **<span style=\"color: red;\"> 神是个灵（或无个字），所以拜他的必须用心灵和诚实拜他。</span>**\n\n> <span id=\"10-j\">[创世记 1:26-27 和合本](#10-b)</span>\n>> **<span style=\"color: red;\">神说：“我们要照着我们的形像、按着我们的样式造人，使他们管理海里的鱼、空中的鸟、地上的牲畜，和全地，并地上所爬的一切昆虫。”　神就照着自己的形像造人，乃是照着他的形像造男造女。</span>**\n\n> <span id=\"11-j\">[以弗所书 4:24 和合本](#11-b)</span>\n>> **<span style=\"color: red;\">并且穿上新人；这新人是照着　神的形像造的，有真理的仁义和圣洁。</span>**\n\n> <span id=\"12-j\">[箴言 18:14 和合本](#12-b)</span>\n>>**<span style=\"color: red;\">人有疾病，心能忍耐；\n心灵忧伤，谁能承当呢？</span>**\n\n> <span id=\"13-j\">[箴言 17:22 和合本](#13-b)</span>\n>> **<span style=\"color: red;\">喜乐的心乃是良药；\n忧伤的灵使骨枯干。</span>**\n\n> <span id=\"14-j\">[诗篇 16:9 和合本](#14-b)</span>\n>> **<span style=\"color: red;\">因此，我的心欢喜，我的灵（原文是荣耀）快乐；\n我的肉身也要安然居住。</span>**\n\n> <span id=\"15-j\">[箴言 4:22 和合本](#15-b)</span>\n>> **<span style=\"color: red;\">因为得着它的，就得了生命，\n又得了医全体的良药。</span>**\n\n> <span id=\"16-j\">[使徒行传 20:7-10 和合本](#16-b)</span>\n>> **<span style=\"color: red;\">七日的第一日，我们聚会擘饼的时候，保罗因为要次日起行，就与他们讲论，直讲到半夜。我们聚会的那座楼上，有好些灯烛。有一个少年人，名叫犹推古，坐在窗台上，困倦沉睡。保罗讲了多时，少年人睡熟了，就从三层楼上掉下去；扶起他来，已经死了。保罗下去，伏在他身上，抱着他，说：“你们不要发慌，他的灵魂还在身上。”</span>**\n\n> <span id=\"18-j\">[撒迦利亚书 12:1 和合本](#18-b)</span>\n>> **<span style=\"color: red;\">耶和华论以色列的默示。\n铺张诸天、建立地基、造人里面之灵的耶和华说：</span>**\n\n> <span id=\"19-j\">[约翰福音 1:1-4 和合本](#19-b)</span>\n>>  **<span style=\"color: red;\">太初有道，道与　神同在，道就是　神。这道太初与　神同在。万物是藉着他造的；凡被造的，没有一样不是藉着他造的。生命在他里头，这生命就是人的光。</span>**\n\n> <span id=\"21-j\">[创世记 2:7 和合本](#21-b)</span>\n>> **<span style=\"color: red;\">耶和华　神用地上的尘土造人，将生气吹在他鼻孔里，他就成了有灵的活人，名叫亚当。</span>**\n\n> <span id=\"22-j\">[创世记 6:3 和合本](#22-b)</span>\n>> **<span style=\"color: red;\">耶和华说：“人既属乎血气，我的灵就不永远住在他里面；然而他的日子还可到一百二十年。”</span>**\n\n> <span id=\"23-j\">[创世记 6:5 和合本](#23-b)</span>\n>> **<span style=\"color: red;\">耶和华见人在地上罪恶很大，终日所思想的尽都是恶，</span>**\n\n> <span id=\"24-j\">[约翰一书 5:19 和合本](#24-b)</span>\n>> **<span style=\"color: red;\">我们知道，我们是属　神的，全世界都卧在那恶者手下。</span>**\n\n> <span id=\"25-j\">[约伯记 1:21 和合本](#25-b)</span>\n>> **<span style=\"color: red;\">说：“我赤身出于母胎，也必赤身归回；赏赐的是耶和华，收取的也是耶和华。耶和华的名是应当称颂的。”</span>**\n\n> <span id=\"26-j\">[约伯记 33:6 和合本](#26-b)</span>\n>> **<span style=\"color: red;\">我在　神面前与你一样，\n也是用土造成。</span>**\n\n> <span id=\"27-j\">[犹大书 1:10 和合本](#27-b)</span>\n>> **<span style=\"color: red;\">但这些人毁谤他们所不知道的。他们本性所知道的事与那没有灵性的畜类一样，在这事上竟败坏了自己。</span>**\n\n> <span id=\"28-j\">[创世记 3:19 和合本](#28-b)</span>\n>> **<span style=\"color: red;\">你必汗流满面才得糊口，\n直到你归了土，\n因为你是从土而出的。\n你本是尘土，仍要归于尘土。</span>**\n\n> <span id=\"29-j\">[启示录 20:12 和合本](#29-b)</span>\n>> **<span style=\"color: red;\">我又看见死了的人，无论大小，都站在宝座前。案卷展开了，并且另有一卷展开，就是生命册。死了的人都凭着这些案卷所记载的，照他们所行的受审判。</span>**\n\n> <span id=\"30-j\">[加拉太书 5:22-23 和合本](#30-b)</span>\n>> **<span style=\"color: red;\">圣灵所结的果子，就是仁爱、喜乐、和平、忍耐、恩慈、良善、信实、温柔、节制。这样的事没有律法禁止。</span>**\n\n> <span id=\"31-j\">[加拉太书 5:19-21 和合本](#31-b)</span>\n>> **<span style=\"color: red;\">情欲的事都是显而易见的，就如奸淫、污秽、邪荡、拜偶像、邪术、仇恨、争竞、忌恨、恼怒、结党、纷争、异端、嫉妒（有古卷加：凶杀二字）、醉酒、荒宴等类。我从前告诉你们，现在又告诉你们，行这样事的人必不能承受　神的国。</span>**\n\n> <span id=\"32-j\">[创世记 8:21-22 和合本](#32-b)</span>\n>> **<span style=\"color: red;\">耶和华闻那馨香之气，就心里说：“我不再因人的缘故咒诅地（人从小时心里怀着恶念），也不再按着我才行的灭各种的活物了。地还存留的时候，稼穑、寒暑、冬夏、昼夜就永不停息了。”</span>**\n\n> <span id=\"33-j\">[罗马书 8:5-8 和合本](#33-b)</span>\n>> **<span style=\"color: red;\">因为，随从肉体的人体贴肉体的事；随从圣灵的人体贴圣灵的事。体贴肉体的，就是死；体贴圣灵的，乃是生命、平安。原来体贴肉体的，就是与　神为仇；因为不服　神的律法，也是不能服，而且属肉体的人不能得　神的喜欢。</span>**\n\n> <span id=\"34-j\">[罗马书 8:13 和合本](#34-b)</span>\n>> **<span style=\"color: red;\">你们若顺从肉体活着，必要死；若靠着圣灵治死身体的恶行，必要活着。</span>**\n\n> <span id=\"35-j\">[哥林多后书 4:16 和合本](#35-b)</span>\n>> **<span style=\"color: red;\">所以，我们不丧胆。外体虽然毁坏，内心却一天新似一天。</span>**\n\n> <span id=\"36-j\">[创世记 3:14 和合本](#36-b)</span>\n>> **<span style=\"color: red;\">耶和华　神对蛇说：\n你既做了这事，就必受咒诅，\n比一切的牲畜野兽更甚；\n你必用肚子行走，\n终身吃土。</span>**\n\n> <span id=\"37-j\">[腓立比书 3:21 和合本](#37-b)</span>\n>> **<span style=\"color: red;\">他要按着那能叫万有归服自己的大能，将我们这卑贱的身体改变形状，和他自己荣耀的身体相似。</span>**\n\n\n', '', 'ad-1555292543920', 1, 'c-1556260437220');
INSERT INTO `article_draft` VALUES (2, '2019-04-20 16:28:22', '2019-04-26 14:39:58', NULL, 0, 'ar-1555748901932', '祷告', '你会祷告吗？你经常求的是什么？祷告的意思是什么？什么才是蒙神悦纳的祷告？', '|   文章概要|   |\n| :------------: | :------------: |\n|  文章标题 |  <font color=\'red\'>《祷告》</font> |\n|  讲员 | <font color=\'red\'>钟弟兄</font>  |\n|  时间 | <font color=\'red\'>2019年4月4日 晚</font>  |\n|  地点 | <font color=\'red\'>下梅林查经会</font>  |\n|  性质 | <font color=\'red\'>补课</font>  |\n\n[TOC]\n\n\n# 前言\n平常听得最多的，也是经常要做的两件事。\n那就是： `读经`、`祷告`\n这两件事是我们每一个基督徒（选民）都必须，一定要去做的事。\n<span style=\'color:red;\'>**下面一起来看看，`祷告`的意义所在！！！**</span>\n\n# 一、祷告的重要性\n> <span style=\"color: blue;\">**Q：有时候会想，世上那么多信徒，若是常常祷告，那神岂不是会忙不过来？看来我还是不祷告了，让神轻松点。**</span>\n> <span id=\"1-b\" style=\"color: red;\">**A：`路加福音 18:1-8 和合本`**[(附录)](#1-j)</span>：`常常祷告`。**不断地打扰神，不断地求神，打扰越多，神的帮助越快，神是最喜欢我们打扰了。**\n好比寡妇经常去官的面前伸冤，经常去烦官，导致这个官人，最后被烦的没办法了，只能成全寡妇。\n> <span id=\"2-b\" style=\"color: red;\">**`帖撒罗尼迦前书 5:17-18 和合本`**[(附录)](#2-j)</span>：`不住地祷告`。使徒保罗也说了，这是神的旨意。\n\n<span></span>\n> <span style=\"color: blue;\">**Q：但是要祷告什么内容？一般都会求什么？**</span>\n> <span style=\"color: red;\">**A：这就和旧约的烧香有关系了。**</span>\n\n# 二、烧香与祷告关系\n## 1）旧约时代的“烧香”\n> <span style=\"color: blue;\">**Q：先看看旧约的烧香是怎么回事吧？是和现今那些拜偶像的一样吗？拿一些烧香棒，插在香炉上面烧吗？**</span>\n> <span style=\"color: red;\">**A：看看旧约圣经是怎么说的吧！**</span>\n>> <span id=\"3-b\" style=\"color: red;\">**`出埃及记 25:8-9 和合本`**[(附录)](#3-j)</span>：**神**让**摩西**造`圣所`，造`帐幕`\n> <span id=\"4-b\" style=\"color: red;\">**`希伯来书 9:3-4 和合本`**[(附录)](#4-j)</span>：`金香炉`\n> <span id=\"5-b\" style=\"color: red;\">**`出埃及记 30:1 和合本`**[(附录)](#5-j)</span>：烧香的坛 &rarr; `金香炉`\n> <span id=\"6-b\" style=\"color: red;\">**`出埃及记 30:7-8 和合本`**[(附录)](#6-j)</span>：**世世代代**的烧香\n> <span id=\"7-b\" style=\"color: red;\">**`出埃及记 30:9 和合本`**[(附录)](#7-j)</span>：指定的`香`\n> <span id=\"9-b\" style=\"color: red;\">**`利未记 16:12-13 和合本`**[(附录)](#9-j)</span>：\n① **盛满**火炭，火炭 &rarr; 火\n② **香**放在**火**上\n③ **香的烟**上升遮掩法柜上的施恩座，升到**神**的面前\n④ **免得死亡**，因为`约柜`代表`神`，人不能直接见`神`的面，见了，就`必死`\n\n\n<span></span>\n> <span style=\"color: blue;\">**Q：金香炉的大小**</span>\n> <span id=\"8-b\" style=\"color: red;\">**A：`出埃及记 30:2 和合本`**[(附录)](#8-j)</span>：`肘`：圣经时代人们用手肘至手指尖的距离作为长度单位，称为一肘。旧约时代一肘约等于44.5 公分，新约时代的一肘约等于55.5 公分。（摘自百度）\n\n<span></span>\n> <span style=\"color: blue;\">**Q：对`帐幕`与`祭司烧香`的简单描述**</span>\n> <span style=\"color: red;\">**A：**</span>\n>> `帐幕`的布局：\n>>> **帐幕**分为**里**、**外**两层。外层是叫**`圣所`**，给以色列会众聚会的地方；里层是叫**`至圣所`**，只有**祭司**才可以进去**烧香**。\n**`至圣所`**最里面，有**约柜**，**约柜**上面，放置了两个**施恩座**，`神`就住在**`约柜`**里面，**约柜**就代表**神**。\n**约柜**的前面，有一层**幔子**。**幔子**外，是**金香炉**。**金香炉**对着**施恩座**。\n\n>>`祭司烧香`：\n>>> **祭司**要在腰上绑着**绳子**和**铃铛**，只要**祭司**有任何动作，**铃铛**都会响。\n**祭司**手拿**香炉**，要从**神的坛**中**取火炭**，**盛满香炉**，对着**施恩座**，然后再铺上一层**指定的香**，使**香烟**上升，遮掩**施恩座**。\n如果不幸看到**约柜**，相当于直接就见**神**的面，**立刻就死**。所以当**铃铛未发出响声**，外面的人，就知道**祭司**已死，可以在**圣所**外用**绳子**把他拉出来了。\n\n\n\n## 2）关系：“烧香”映射“祷告”\n> <span id=\"11-b\" style=\"color: red;\">**`希伯来书 10:1 和合本`**[(附录)](#11-j)</span>：律法（影子）&rarr; 映射将来 &rarr; 真像（实体）。\n\n<span></span>\n> <span id=\"12-b\" style=\"color: red;\">**`希伯来书 8:5 和合本`**[(附录)](#12-j)</span>：在天上，也是这样供奉，如今，只是天上事的影子，让我们学着这样去供奉。\n\n也就是说，旧约做的事，在新约，如今的我们，灵里也该这样去做。\n所以，旧约是属肉的时代，新约是属灵的时代。\n\n## 3）新约时代的“祷告”\n> <span style=\"color: blue;\">**Q：`香炉`是什么的影子？**</span>\n> <span id=\"13-b\" style=\"color: red;\">**A：`使徒行传 9:15 和合本`**[(附录)](#13-j)</span>：`器皿` &rarr; **人**\n\n<span></span>\n> <span style=\"color: blue;\">**Q：`火`是什么的影子？**</span>\n> <span id=\"14-b\" style=\"color: red;\">**A：`耶利米书 23:29 和合本`**[(附录)](#14-j)</span>：神的话语 &rarr; `道`，就是`火`\n> <span id=\"15-b\" style=\"color: red;\">**`耶利米书 5:14 和合本`**[(附录)](#15-j)</span>：神的话语 &rarr; `道`，就是`火`\n而且，要**盛满火炭**哦！也就是**盛满道**，**盛满道**，**盛满道**。\n\n<span></span>\n> <span style=\"color: blue;\">**Q：`香料`是什么的影子？**</span>\n> <span id=\"16-b\" style=\"color: red;\">**A：`启示录 5:8 和合本`**[(附录)](#16-j)</span>：`祷告`\n\n<span></span>\n> <span style=\"color: blue;\">**Q：`香烟`是什么的影子？**</span>\n> <span id=\"17-b\" style=\"color: red;\">**A：`启示录 8:4 和合本`**[(附录)](#17-j)</span>：`祷告声音`。\n\n<span></span>\n> <span style=\"color: blue;\">**Q：`往上升`是什么的影子？**</span>\n><span style=\"color: red;\">**A：`启示录 8:4 和合本`**[(附录)](#17-j)</span>：`神`。经由**天使**的手，上升到**神**的面前\n\n<span></span>\n> <span style=\"color: blue;\">**Q：如果我们没有指定的`香`、指定的`火`去烧香，会怎么样？**</span>\n> <span id=\"18-b\" style=\"color: red;\">**A：`利未记 10:1-2 和合本`**[(附录)](#18-j)</span>：献上`凡火`的后果\n>> 旧约 &rarr; 肉体死\n>> 新约 &rarr; 灵死\n\n> 在新约里面，不仅**灵会死**，而且，你的祷告没有到**神**的面前。\n因为，你的祷告是要经由**天使**的手，才能到**神**面前呢。\n如果你献的是**凡火**，**香**不好，那么**天使**就会把你的**香烟**拦截下来，无法到达**神**的面前。\n\n<span></span>\n> <span style=\"color: blue;\">**Q：`灵死`是怎么死？**</span>\n> <span style=\"color: red;\">**A：请学习课程《活人和死人》**</span>\n\n<span></span>\n> <span style=\"color: blue;\">**Q：什么是`凡火`？**</span>\n> <span style=\"color: red;\">**A：很多自我的想法，私欲**</span>：（遇到任何困难，都可以向神祷告），这就是严重的凡火。\n>> 比如：\n>>> 求钱财\n>>> 求女朋友\n>>> 求地位\n>>> 求名利\n\n# 三、神所喜悦的祷告\n> <span id=\"19-b\" style=\"color: red;\">**`马太福音 6:33 和合本`**[(附录)](#19-j)</span>：\n>> 先求\n>>> ① 神的国\n>>> ② 神的义\n\n<span></span>\n> <span style=\"color: blue;\">**Q：`神的国`是什么？**</span>\n> <span style=\"color: red;\">**A：**将来主再临的日子，**神的国**要降临在地上，重现**伊甸园**那美好国度，**神**要与我们同住。\n先求**神的国**，主要是说，求**神**能够使我们预备好自己的身心，等候迎接主的到来。\n\n<span></span>\n> <span style=\"color: blue;\">**Q：`神的义`是什么？**</span>\n> <span id=\"20-b\" style=\"color: red;\">**A：`申命记 6:25 和合本`**[(附录)](#20-j)</span>：遵守诫命（旨意）。\n\n<span></span>\n> <span style=\"color: blue;\">**Q：怎么做到`遵守旨意`？**</span>\n> <span id=\"21-b\" style=\"color: red;\">**A：`以弗所书 5:15-17 和合本`**[(附录)](#21-j)</span>：如果不明白旨意，怎么去遵守呢？\n所以，你要祈求神让你明白旨意是什么。明白了，才能**遵守旨意**。\n> <span id=\"22-b\" style=\"color: red;\">**`马太福音 7:21 和合本`**[(附录)](#22-j)</span>：遵守旨意\n\n> <span id=\"23-b\" style=\"color: red;\">**`使徒行传 22:14 和合本`**[(附录)](#23-j)</span>：\n> <span id=\"24-b\" style=\"color: red;\">**`使徒行传 17:11 和合本`**[(附录)](#24-j)</span>：\n\n<span></span>\n> <span style=\"color: blue;\">**Q：所以，`神`总是这样希望！！！**</span>\n> <span id=\"10-b\" style=\"color: red;\">**A：`诗篇 53:2 和合本`**[(附录)](#10-j)</span>：\n\n```flow\nst=>start: 先求\nop=>operation: 神的国\nop2=>operation: 神的义(申命记 6:25 和合本)\nop3=>operation: 求明白旨意，明白才能遵守旨意(以弗所书5:15-17)\nop4=>operation: 遵守旨意（马太福音 7:21）（使徒行传 22:14，17:11）\n\nst->op->op2->op3->op4->op\n```\n\n# 四、神不喜悦的祷告\n> <span id=\"25-b\" style=\"color: red;\">**`马太福音 6:25-34 和合本`**[(附录)](#25-j)</span>：\n>> ①【31-32节】求世上物质 &rarr; 外邦人；\n   ② 遵行旨意 &rarr; 祈求就得\n\n<span></span>\n> <span id=\"26-b\" style=\"color: red;\">**`箴言 1:22-29 和合本`**[(附录)](#26-j)</span>：恨恶知识（指神的话语） &rarr; 祈求，神不听。\n\n\n\n# 经文附录\n\n> <span id=\"1-j\">[路加福音 18:1-8 和合本](#1-b)</span>\n>> **<span style=\"color: red;\">耶稣设一个比喻，是要人常常祷告，不可灰心。说：“某城里有一个官，不惧怕　神，也不尊重世人。那城里有个寡妇，常到他那里，说：‘我有一个对头，求你给我伸冤。’他多日不准，后来心里说：‘我虽不惧怕　神，也不尊重世人，只因这寡妇烦扰我，我就给她伸冤吧，免得她常来缠磨我！’”主说：“你们听这不义之官所说的话。　神的选民昼夜呼吁他，他纵然为他们忍了多时，岂不终久给他们伸冤吗？我告诉你们，要快快地给他们伸冤了。然而，人子来的时候，遇得见世上有信德吗？”</span>**\n\n> <span id=\"2-j\">[帖撒罗尼迦前书 5:17-18 和合本](#2-b)</span>\n>> **<span style=\"color: red;\">不住地祷告，凡事谢恩；因为这是　神在基督耶稣里向你们所定的旨意。</span>**\n\n> <span id=\"3-j\">[出埃及记 25:8-9 和合本](#3-b)</span>\n>> **<span style=\"color: red;\">又当为我造圣所，使我可以住在他们中间。制造帐幕和其中的一切器具都要照我所指示你的样式。”</span>**\n\n> <span id=\"4-j\">[希伯来书 9:3-4 和合本](#4-b)</span>\n>> **<span style=\"color: red;\">第二幔子后又有一层帐幕，叫作至圣所，有金香炉（炉：或译坛），有包金的约柜，柜里有盛吗哪的金罐和亚伦发过芽的杖，并两块约版；</span>**\n\n> <span id=\"5-j\">[出埃及记 30:1 和合本](#5-b)</span>\n>> **<span style=\"color: red;\">“你要用皂荚木做一座烧香的坛。 </span>**\n\n> <span id=\"6-j\">[出埃及记 30:7-8 和合本](#6-b)</span>\n>> **<span style=\"color: red;\">亚伦在坛上要烧馨香料做的香；每早晨他收拾灯的时候，要烧这香。黄昏点灯的时候，他要在耶和华面前烧这香，作为世世代代常烧的香。</span>**\n\n> <span id=\"7-j\">[出埃及记 30:9 和合本](#7-b)</span>\n>> **<span style=\"color: red;\">在这坛上不可奉上异样的香，不可献燔祭、素祭，也不可浇上奠祭。</span>**\n\n> <span id=\"8-j\">[出埃及记 30:2 和合本](#8-b)</span>\n>> **<span style=\"color: red;\">这坛要四方的，长一肘，宽一肘，高二肘；坛的四角要与坛接连一块。</span>**\n\n> <span id=\"9-j\">[利未记 16:12-13 和合本](#9-b)</span>\n>> **<span style=\"color: red;\">拿香炉，从耶和华面前的坛上盛满火炭，又拿一捧捣细的香料，都带入幔子内，在耶和华面前，把香放在火上，使香的烟云遮掩法柜上的施恩座，免得他死亡；</span>**\n\n> <span id=\"10-j\">[诗篇 53:2 和合本](#10-b)</span>\n>> **<span style=\"color: red;\">　神从天上垂看世人，要看有明白的没有？\n有寻求他的没有？</span>**\n\n> <span id=\"11-j\">[希伯来书 10:1 和合本](#11-b)</span>\n>> **<span style=\"color: red;\">律法既是将来美事的影儿，不是本物的真像，总不能藉着每年常献一样的祭物叫那近前来的人得以完全。</span>**\n\n\n> <span id=\"12-j\">[希伯来书 8:5 和合本](#12-b)</span>\n>> **<span style=\"color: red;\">他们供奉的事本是天上事的形状和影像，正如摩西将要造帐幕的时候，蒙　神警戒他，说：“你要谨慎，作各样的物件都要照着在山上指示你的样式。”</span>**\n\n> <span id=\"13-j\">[使徒行传 9:15 和合本](#13-b)</span>\n>> **<span style=\"color: red;\">主对亚拿尼亚说：“你只管去！他是我所拣选的器皿，要在外邦人和君王，并以色列人面前宣扬我的名。</span>**\n\n> <span id=\"14-j\">[耶利米书 23:29 和合本](#14-b)</span>\n>> **<span style=\"color: red;\">耶和华说：“我的话岂不像火，又像能打碎磐石的大锤吗？”</span>**\n\n> <span id=\"15-j\">[耶利米书 5:14 和合本](#15-b)</span>\n>> **<span style=\"color: red;\">所以耶和华－万军之　神如此说：\n因为百姓说这话，\n我必使我的话在你口中为火，使他们为柴；\n这火便将他们烧灭。</span>**\n\n> <span id=\"16-j\">[启示录 5:8 和合本](#16-b)</span>\n>> **<span style=\"color: red;\">他既拿了书卷，四活物和二十四位长老就俯伏在羔羊面前，各拿着琴和盛满了香的金炉；这香就是众圣徒的祈祷。</span>**\n\n> <span id=\"17-j\">[启示录 8:4 和合本](#17-b)</span>\n>> **<span style=\"color: red;\">那香的烟和众圣徒的祈祷从天使的手中一同升到　神面前。</span>**\n\n> <span id=\"18-j\">[利未记 10:1-2 和合本](#18-b)</span>\n>> **<span style=\"color: red;\">亚伦的儿子拿答、亚比户各拿自己的香炉，盛上火，加上香，在耶和华面前献上凡火，是耶和华没有吩咐他们的，就有火从耶和华面前出来，把他们烧灭，他们就死在耶和华面前。</span>**\n\n> <span id=\"19-j\">[马太福音 6:33 和合本](#19-b)</span>\n>> **<span style=\"color: red;\">你们要先求他的国和他的义，这些东西都要加给你们了。 </span>**\n\n> <span id=\"20-j\">[申命记 6:25 和合本](#20-b)</span>\n>> **<span style=\"color: red;\">我们若照耶和华－我们　神所吩咐的一切诫命谨守遵行，这就是我们的义了。’”</span>**\n\n> <span id=\"21-j\">[以弗所书 5:15-17 和合本](#21-b)</span>\n>> **<span style=\"color: red;\">你们要谨慎行事，不要像愚昧人，当像智慧人。要爱惜光阴，因为现今的世代邪恶。不要作糊涂人，要明白主的旨意如何。</span>**\n\n> <span id=\"22-j\">[马太福音 7:21 和合本](#22-b)</span>\n>> **<span style=\"color: red;\">“凡称呼我‘主啊，主啊’的人不能都进天国；惟独遵行我天父旨意的人才能进去。 </span>**\n\n> <span id=\"23-j\">[使徒行传 22:14 和合本](#23-b)</span>\n>> **<span style=\"color: red;\">他又说：‘我们祖宗的　神拣选了你，叫你明白他的旨意，又得见那义者，听他口中所出的声音。 </span>**\n\n> <span id=\"24-j\">[使徒行传 17:11 和合本](#24-b)</span>\n>> **<span style=\"color: red;\">这地方的人贤于帖撒罗尼迦的人，甘心领受这道，天天考查圣经，要晓得这道是与不是。</span>**\n\n> <span id=\"25-j\">[马太福音 6:25-34 和合本](#25-b)</span>\n>> **<span style=\"color: red;\">“所以我告诉你们，不要为生命忧虑吃什么，喝什么；为身体忧虑穿什么。生命不胜于饮食吗？身体不胜于衣裳吗？你们看那天上的飞鸟，也不种，也不收，也不积蓄在仓里，你们的天父尚且养活它。你们不比飞鸟贵重得多吗？你们哪一个能用思虑使寿数多加一刻呢（或译：使身量多加一肘呢）？何必为衣裳忧虑呢？你想野地里的百合花怎么长起来；它也不劳苦，也不纺线。然而我告诉你们，就是所罗门极荣华的时候，他所穿戴的，还不如这花一朵呢！你们这小信的人哪！野地里的草今天还在，明天就丢在炉里，　神还给它这样的妆饰，何况你们呢！~~31.~~所以，不要忧虑说，吃什么？喝什么？穿什么？~~32.~~这都是外邦人所求的。你们需用的这一切东西，你们的天父是知道的。~~33.~~你们要先求他的国和他的义，这些东西都要加给你们了。所以，不要为明天忧虑，因为明天自有明天的忧虑；一天的难处一天当就够了。”</span>**\n\n> <span id=\"26-j\">[箴言 1:22-29 和合本](#26-b)</span>\n>> **<span style=\"color: red;\">说：你们愚昧人喜爱愚昧，\n亵慢人喜欢亵慢，\n愚顽人恨恶知识，要到几时呢？\n你们当因我的责备回转；\n我要将我的灵浇灌你们，\n将我的话指示你们。\n我呼唤，你们不肯听从；\n我伸手，无人理会；\n反轻弃我一切的劝戒，\n不肯受我的责备。\n你们遭灾难，我就发笑；\n惊恐临到你们，我必嗤笑。\n惊恐临到你们，好像狂风；\n灾难来到，如同暴风；\n急难痛苦临到你们身上。\n那时，你们必呼求我，我却不答应，\n恳切地寻找我，却寻不见。\n因为，你们恨恶知识，\n不喜爱敬畏耶和华，</span>**', '', 'ad-1555748901932', 1, 'c-1556260437220');
INSERT INTO `article_draft` VALUES (3, '2019-04-20 22:28:17', '2019-04-26 14:38:40', NULL, 0, 'ar-1555770497261', '与神相遇', '神是什么？如何找到神，并认识神？认识神有什么好处', '|   文章概要|   |\n| :------------: | :------------: |\n|  文章标题 |  <font color=\'red\'>《与神相遇》</font> |\n|  讲员 | <font color=\'red\'>敖姊妹</font>  |\n|  时间 | <font color=\'red\'>2019年4月13日 下午</font>  |\n|  地点 | <font color=\'red\'>下梅林查经会</font>  |\n|  性质 | <font color=\'red\'>补课</font>  |\n\n[TOC]\n\n# 前言\n上一节课学了《灵魂体》，我们已经知道，灵是最重要的。\n而且，我们的灵，已经不是神造亚当那个时候，神所造的灵了，当时亚当的灵，是充满着神的意念、思想的。\n如今，我们的灵，若是要变回当初那个神所造的灵的话，就要有神的样式。\n怎样才有神的样式呢？就是我们的灵，要和神的灵同步，就是说，我们的思想、意念，要接近神，和神的思想、意念一致。\n\n所以这一切的前提条件是：我们要认识神。\n<span style=\"color: red;\">**接下来，让我们一起来学习今天的主题《与神相遇》**</span>\n\n# 一、认识神的重要性\n> <span style=\"color: blue;\">**Q：为什么要认识`神`？**</span>\n> <span id=\"1-b\" style=\"color: red;\">**A：`雅各书 1:17 和合本`**[(附录)](#1-j)</span>：因为你们一切的**美善**、**恩赐**，都是从**神**而来\n> <span id=\"2-b\" style=\"color: red;\">**`彼得后书 1:2 和合本`**[(附录)](#2-j)</span>：认识**神**，可以得到 &uarr; &uarr; &uarr;\n\n<span></span>\n> <span style=\"color: blue;\">**Q：信`神` == 认识`神` 吗？**</span>\n> <span id=\"3-b\" style=\"color: red;\">**A：`历代志上 28:9 和合本`**[(附录)](#3-j)</span>：寻求 &rarr; 寻见\n如果你只**信神**，但是没有一颗**寻求的神心**，等于是**不认识神**。\n因为，**神**是看内心的\n\n# 二、如何认识神？\n> <span style=\"color: blue;\">**Q：`神`是什么？**</span>\n> <span id=\"4-b\" style=\"color: red;\">**A：`约翰福音 4:24 和合本`**[(附录)](#4-j)</span>：**神 = 灵** （spirit: 精神、思想、意念）\n可是**灵**是看不见、摸不着的。你根本找不到。\n\n<span></span>\n> <span style=\"color: blue;\">**Q：找不到神？那还怎么认识`神`？**</span>\n> <span id=\"5-b\" style=\"color: red;\">**A：`约翰福音 1:1-2 和合本`**[(附录)](#5-j)</span>：**道 = 神** （道 就是 话语）\n你要先找到**神**，才能认识**神**。\n怎么找？\n通过**《圣经》**去找**神**，和认识**神**。\n**《圣经》**是**神**的**话语**，从**话语**中找到**道**，找到**道**就等于找到了**神**。\n\n<span></span>\n> <span style=\"color: blue;\">**Q：**</span>\n> <span id=\"6-b\" style=\"color: red;\">**A：`路加福音 12:49 和合本`**[(附录)](#6-j)</span>：**火** 丢 **地上**。\n>> **火**：\n>>> <span id=\"7-b\" style=\"color: red;\">**`耶利米书 5:14 和合本`**[(附录)](#7-j)</span>：神的话\n> <span id=\"8-b\" style=\"color: red;\">**`耶利米书 23:29 和合本`**[(附录)](#8-j)</span>：神的话\n\n>> **地上**：\n>>> <span id=\"9-b\" style=\"color: red;\">**`哥林多前书 3:9 和合本`**[(附录)](#9-j)</span>：人的心田\n\n<span></span>\n> <span style=\"color: blue;\">**Q：？**</span>\n> <span id=\"10-b\" style=\"color: red;\">**`哥林多后书 3:6 和合本`**[(附录)](#10-j)</span>：**字句（圣经）** &rarr; **死**；**精意（道）或译圣灵（神）**。\n所以才说，**《圣经》**是**神的话语**，要解开**话语**，找到**道**。\n**道**就是：**解开的精意的话语**。\n> <span id=\"11-b\" style=\"color: red;\">**`以赛亚书 45:15 和合本`**[(附录)](#11-j)</span>：**自隐的神**，就是**道**隐藏起来了。因为**道**就是**神**。\n所以，我们才要**查考圣经**，**再宣读**（精意的话语）\n\n\n# 三、隐藏的道给谁？怎么给？\n> <span style=\"color: blue;\">**Q：隐藏的道给谁？**</span>\n> <span id=\"12-b\" style=\"color: red;\">**A：`诗篇 14:2 和合本`**[(附录)](#12-j)</span>：明白的人，寻求的人。\n>> 小故事：\n>>> 小时候妈妈总是把我的‘小霸王学习机’藏起来，好吧，那时候还没有‘学习机’，只有‘游戏机’。\n但是我却知道线索，线索就是藏家里了。我就翻箱倒柜的寻找，最后还是找不到。\n\n>> 所以，**神**把**道**藏起来了，线索就是**《圣经》**，要去**寻求**，要去**明白**。\n\n<span></span>\n> <span style=\"color: blue;\">**Q：来看一则圣经的故事。**</span>\n> <span id=\"13-b\" style=\"color: red;\">**A：`使徒行传 8:26-36 和合本`**[(附录)](#13-j)</span>：‘腓利和太监’的故事。\n>> **腓利**是谁：\n>>> <span id=\"14-b\" style=\"color: red;\">**`使徒行传 21:8 和合本`**[(附录)](#14-j)</span>：\n- 执事，就是管家角色，给人做饭的，打杂的，\n- 是下人，穿的很破旧。\n- 一无所有\n\n>> **太监**是谁：\n>>> - 女王身边的大红人，掌管银库\n- 总管\n- 有权有势有钱。\n\n>> **太监**做了哪些事：\n>>> 1. 跨洲礼拜：非常**饥渴慕义**。\n<span id=\"15-b\" style=\"color: red;\">**`马太福音 5:6 和合本`**[(附录)](#15-j)</span>：得饱足。（派**腓利**去**太监**那里）\n<span id=\"16-b\" style=\"color: red;\">**`但以理书 12:4 和合本`**[(附录)](#16-j)</span>：来往奔跑（跨洲礼拜）\n>>> 2. 谦卑：不会因为**腓利**一身乞丐模样，就嫌弃他，而是请**腓利**上车，勇于承认对**圣经**的无知\n3. 本着**圣经**为基准作信仰。\n>>>> - 不明白：还在读\n>>>> - 明白：施洗（圣灵与火）\n\n>>> 4. 抓住机会（请腓利）、（施洗）\n\n> <span id=\"17-b\" style=\"color: red;\">**`撒母耳记上 16:7 和合本`**[(附录)](#17-j)</span>：**神**看内心，不看外在。\n\n**`等待图片中... ...`**\n\n<span></span>\n> <span style=\"color: blue;\">**Q：`圣灵与火`是什么？**</span>\n> <span style=\"color: red;\">**A：请学习课程《施洗的真意》**</span>\n\n<span></span>\n> <span id=\"18-b\" style=\"color: red;\">**`希伯来书 1:14 和合本`**[(附录)](#18-j)</span>：**天使**是服役的**灵**。\n\n<span></span>\n> <span style=\"color: red;\">所以，**《圣经》**是**神的话语**，而不是**神的道**，而是要解开**话语**之后，得到**精意**，这才是**道**。</span>\n\n# 经文附录\n\n> <span id=\"1-j\">[雅各书 1:17 和合本](#1-b)</span>\n>> **<span style=\"color: red;\">各样美善的恩赐和各样全备的赏赐都是从上头来的，从众光之父那里降下来的；在他并没有改变，也没有转动的影儿。 </span>**\n\n> <span id=\"2-j\">[彼得后书 1:2 和合本](#2-b)</span>\n>> **<span style=\"color: red;\">愿恩惠、平安，因你们认识　神和我们主耶稣，多多地加给你们。</span>**\n\n> <span id=\"3-j\">[历代志上 28:9 和合本](#3-b)</span>\n>> **<span style=\"color: red;\">“我儿所罗门哪，你当认识耶和华－你父的　神，诚心乐意地侍奉他；因为他鉴察众人的心，知道一切心思意念。你若寻求他，他必使你寻见；你若离弃他，他必永远丢弃你。</span>**\n\n> <span id=\"4-j\">[约翰福音 4:24 和合本](#4-b)</span>\n>> **<span style=\"color: red;\">　神是个灵（或无个字），所以拜他的必须用心灵和诚实拜他。 </span>**\n\n> <span id=\"5-j\">[约翰福音 1:1-2 和合本](#5-b)</span>\n>> **<span style=\"color: red;\">太初有道，道与　神同在，道就是　神。这道太初与　神同在。</span>**\n\n> <span id=\"6-j\">[路加福音 12:49 和合本](#6-b)</span>\n>> **<span style=\"color: red;\">“我来要把火丢在地上，倘若已经着起来，不也是我所愿意的吗？ </span>**\n\n> <span id=\"7-j\">[耶利米书 5:14 和合本](#7-b)</span>\n>> **<span style=\"color: red;\">所以耶和华－万军之　神如此说：\n因为百姓说这话，\n我必使我的话在你口中为火，使他们为柴；\n这火便将他们烧灭。\n </span>**\n\n> <span id=\"8-j\">[耶利米书 23:29 和合本](#8-b)</span>\n>> **<span style=\"color: red;\">耶和华说：“我的话岂不像火，又像能打碎磐石的大锤吗？” </span>**\n\n> <span id=\"9-j\">[哥林多前书 3:9 和合本](#9-b)</span>\n>> **<span style=\"color: red;\">因为我们是与　神同工的；你们是　神所耕种的田地，所建造的房屋。 </span>**\n\n> <span id=\"10-j\">[哥林多后书 3:6 和合本](#10-b)</span>\n>> **<span style=\"color: red;\">他叫我们能承当这新约的执事，不是凭着字句，乃是凭着精意；因为那字句是叫人死，精意（或译：圣灵）是叫人活。 </span>**\n\n> <span id=\"11-j\">[以赛亚书 45:15 和合本](#11-b)</span>\n>> **<span style=\"color: red;\">救主－以色列的　神啊，\n你实在是自隐的　神。\n </span>**\n\n> <span id=\"12-j\">[诗篇 14:2 和合本](#12-b)</span>\n>> **<span style=\"color: red;\">耶和华从天上垂看世人，\n要看有明白的没有，\n有寻求　神的没有。\n </span>**\n\n> <span id=\"13-j\">[使徒行传 8:26-36 和合本](#13-b)</span>\n>> **<span style=\"color: red;\">有主的一个使者对腓利说：“起来！向南走，往那从耶路撒冷下迦萨的路上去。”那路是旷野。腓利就起身去了，不料，有一个埃塞俄比亚（就是古实，见以赛亚十八章一节）人，是个有大权的太监，在埃塞俄比亚女王甘大基的手下总管银库，他上耶路撒冷礼拜去了。现在回来，在车上坐着，念先知以赛亚的书。圣灵对腓利说：“你去！贴近那车走。”腓利就跑到太监那里，听见他念先知以赛亚的书，便问他说：“你所念的，你明白吗？”他说：“没有人指教我，怎能明白呢？”于是请腓利上车，与他同坐。他所念的那段经，说：\n他像羊被牵到宰杀之地，\n又像羊羔在剪毛的人手下无声；\n他也是这样不开口。\n他卑微的时候，\n人不按公义审判他（原文是他的审判被夺去）；\n谁能述说他的世代？\n因为他的生命从地上夺去。\n太监对腓利说：“请问，先知说这话是指着谁？是指着自己呢？是指着别人呢？”腓利就开口从这经上起，对他传讲耶稣。二人正往前走，到了有水的地方，太监说：“看哪，这里有水，我受洗有什么妨碍呢？”（有古卷加：37腓利说：“你若是一心相信，就可以。”他回答说：“我信耶稣基督是　神的儿子。”） </span>**\n\n> <span id=\"14-j\">[使徒行传 21:8 和合本](#14-b)</span>\n>> **<span style=\"color: red;\">第二天，我们离开那里，来到凯撒利亚，就进了传福音的腓利家里，和他同住。他是那七个执事里的一个。 </span>**\n\n> <span id=\"15-j\">[马太福音 5:6 和合本](#15-b)</span>\n>> **<span style=\"color: red;\">饥渴慕义的人有福了！\n因为他们必得饱足。</span>**\n\n> <span id=\"16-j\">[但以理书 12:4 和合本](#16-b)</span>\n>> **<span style=\"color: red;\">但以理啊，你要隐藏这话，封闭这书，直到末时。必有多人来往奔跑（或译：切心研究），知识就必增长。”\n </span>**\n\n> <span id=\"17-j\">[撒母耳记上 16:7 和合本](#17-b)</span>\n>> **<span style=\"color: red;\">耶和华却对撒母耳说：“不要看他的外貌和他身材高大，我不拣选他。因为，耶和华不像人看人：人是看外貌；耶和华是看内心。” </span>**\n\n> <span id=\"18-j\">[希伯来书 1:14 和合本](#18-b)</span>\n>> **<span style=\"color: red;\">天使岂不都是服役的灵、奉差遣为那将要承受救恩的人效力吗？\n </span>**\n', '', 'ad-1555770497261', 1, 'c-1556260437220');
INSERT INTO `article_draft` VALUES (4, '2019-04-26 14:57:36', '2019-04-26 15:43:40', NULL, 0, 'ar-1556261855598', '圣殿', '如何造圣殿？怎么的圣殿才是符合神心意，可以居住的呢？', '|   文章概要|   |\n| :------------: | :------------: |\n|  文章标题 |  <font color=\'red\'>《圣殿》</font> |\n|  讲员 | <font color=\'red\'>姜姊妹</font>  |\n|  时间 | <font color=\'red\'>2019年3月24日 晚</font>  |\n|  地点 | <font color=\'red\'>上梅林查经会</font>  |\n|  性质 | <font color=\'red\'>正常上课</font>  |\n\n[TOC]\n\n\n# 前言\n## 1. 回顾上期\n<span style=\"color: red;\">**上节课学了《福音》**</span>\n## 2. 本期\n<span style=\"color: red;\">**这个世界是撒旦统治**</span>\n# 一、旧约时神的居所\n\n> <span id=\"1-b\" style=\"color: red;\">**`出埃及记 25:8-9 和合本`**[(附录)](#1-j)</span>：\n> <span id=\"2-b\" style=\"color: red;\">**`使徒行传 7:44-45 和合本`**[(附录)](#2-j)</span>：\n> <span id=\"3-b\" style=\"color: red;\">**`使徒行传 7:46-47 和合本`**[(附录)](#3-j)</span>：\n> <span id=\"4-b\" style=\"color: red;\">**`使徒行传 7:48-50 和合本`**[(附录)](#4-j)</span>：\n\n# 二、新约时神的居所\n> <span id=\"5-b\" style=\"color: red;\">**`约翰福音 2:19-20 和合本`**[(附录)](#5-j)</span>：\n> <span id=\"6-b\" style=\"color: red;\">**`马太福音 3:16 和合本`**[(附录)](#6-j)</span>：\n> <span id=\"7-b\" style=\"color: red;\">**`马太福音 23:27 和合本`**[(附录)](#7-j)</span>：\n> <span id=\"8-b\" style=\"color: red;\">**`约翰福音 1:14 和合本`**[(附录)](#8-j)</span>：\n> <span id=\"9-b\" style=\"color: red;\">**`哥林多前书 3:16 和合本`**[(附录)](#9-j)</span>：\n> <span id=\"10-b\" style=\"color: red;\">**`约翰福音 17:8 和合本`**[(附录)](#10-j)</span>：\n> <span id=\"11-b\" style=\"color: red;\">**`约翰福音 4:20 和合本`**[(附录)](#11-j)</span>：\n> <span id=\"12-b\" style=\"color: red;\">**`约翰福音 1:1-4 和合本`**[(附录)](#12-j)</span>：\n> <span id=\"13-b\" style=\"color: red;\">**`以弗所书 2:20-22 和合本`**[(附录)](#13-j)</span>：\n\n\n# 三、如何建造圣殿\n> <span id=\"14-b\" style=\"color: red;\">**`箴言 24:3-4 和合本`**[(附录)](#14-j)</span>：\n> <span id=\"15-b\" style=\"color: red;\">**`耶利米书 1:10 和合本`**[(附录)](#15-j)</span>：\n> <span id=\"16-b\" style=\"color: red;\">**`犹大书 1:20 和合本`**[(附录)](#16-j)</span>：\n> <span id=\"17-b\" style=\"color: red;\">**`以弗所书 6:16 和合本`**[(附录)](#17-j)</span>：\n> <span id=\"18-b\" style=\"color: red;\">**`雅各书 2:20 和合本`**[(附录)](#18-j)</span>：\n> <span id=\"19-b\" style=\"color: red;\">**`雅各书 2:26 和合本`**[(附录)](#19-j)</span>：\n\n\n\n# 经文附录\n> <span id=\"1-j\">[出埃及记 25:8-9 和合本](#1-b)</span>\n>> **<span style=\"color: red;\">又当为我造圣所，使我可以住在他们中间。制造帐幕和其中的一切器具都要照我所指示你的样式。”\n </span>**\n\n> <span id=\"2-j\">[使徒行传 7:44-45 和合本](#2-b)</span>\n>> **<span style=\"color: red;\">“我们的祖宗在旷野，有法柜的帐幕，是　神吩咐摩西叫他照所看见的样式做的。这帐幕，我们的祖宗相继承受。当　神在他们面前赶出外邦人去的时候，他们同约书亚把帐幕搬进承受为业之地，直存到大卫的日子。 </span>**\n\n> <span id=\"3-j\">[使徒行传 7:46-47 和合本](#3-b)</span>\n>> **<span style=\"color: red;\">大卫在　神面前蒙恩，祈求为雅各的　神预备居所；却是所罗门为　神造成殿宇。 </span>**\n\n\n> <span id=\"4-j\">[使徒行传 7:48-50 和合本](#4-b)</span>\n>> **<span style=\"color: red;\">其实，至高者并不住人手所造的，就如先知所言：\n主说：天是我的座位，\n地是我的脚凳；\n你们要为我造何等的殿宇？\n哪里是我安息的地方呢？\n这一切不都是我手所造的吗？\n </span>**\n\n> <span id=\"5-j\">[约翰福音 2:19-20 和合本](#5-b)</span>\n>> **<span style=\"color: red;\">耶稣回答说：“你们拆毁这殿，我三日内要再建立起来。”犹太人便说：“这殿是四十六年才造成的，你三日内就再建立起来吗？” </span>**\n\n> <span id=\"6-j\">[马太福音 3:16 和合本](#6-b)</span>\n>> **<span style=\"color: red;\">耶稣受了洗，随即从水里上来。天忽然为他开了，他就看见　神的灵仿佛鸽子降下，落在他身上。 </span>**\n\n> <span id=\"7-j\">[马太福音 23:27 和合本](#7-b)</span>\n>> **<span style=\"color: red;\">“你们这假冒为善的文士和法利赛人有祸了！因为你们好像粉饰的坟墓，外面好看，里面却装满了死人的骨头和一切的污秽。 </span>**\n\n> <span id=\"8-j\">[约翰福音 1:14 和合本](#8-b)</span>\n>> **<span style=\"color: red;\">道成了肉身，住在我们中间，充充满满地有恩典有真理。我们也见过他的荣光，正是父独生子的荣光。 </span>**\n\n> <span id=\"9-j\">[哥林多前书 3:16 和合本](#9-b)</span>\n>> **<span style=\"color: red;\">岂不知你们是　神的殿，　神的灵住在你们里头吗？ </span>**\n\n> <span id=\"10-j\">[约翰福音 17:8 和合本](#10-b)</span>\n>> **<span style=\"color: red;\">因为你所赐给我的道，我已经赐给他们，他们也领受了，又确实知道，我是从你出来的，并且信你差了我来。 </span>**\n\n> <span id=\"11-j\">[约翰福音 4:20 和合本](#11-b)</span>\n>> **<span style=\"color: red;\">我们的祖宗在这山上礼拜，你们倒说，应当礼拜的地方是在耶路撒冷。” </span>**\n\n> <span id=\"12-j\">[约翰福音 1:1-4 和合本](#12-b)</span>\n>> **<span style=\"color: red;\">太初有道，道与　神同在，道就是　神。这道太初与　神同在。万物是藉着他造的；凡被造的，没有一样不是藉着他造的。生命在他里头，这生命就是人的光。 </span>**\n\n> <span id=\"13-j\">[以弗所书 2:20-22 和合本](#13-b)</span>\n>> **<span style=\"color: red;\">并且被建造在使徒和先知的根基上，有基督耶稣自己为房角石，各（或译：全）房靠他联络得合式，渐渐成为主的圣殿。你们也靠他同被建造，成为　神藉着圣灵居住的所在。\n </span>**\n\n> <span id=\"14-j\">[箴言 24:3-4 和合本](#14-b)</span>\n>> **<span style=\"color: red;\">房屋因智慧建造，\n又因聪明立稳；\n其中因知识充满各样美好宝贵的财物。\n </span>**\n\n> <span id=\"15-j\">[耶利米书 1:10 和合本](#15-b)</span>\n>> **<span style=\"color: red;\">看哪，我今日立你在列邦列国之上，\n为要施行拔出、拆毁、毁坏、倾覆，\n又要建立、栽植。\n </span>**\n\n> <span id=\"16-j\">[犹大书 1:20 和合本](#16-b)</span>\n>> **<span style=\"color: red;\">亲爱的弟兄啊，你们却要在至圣的真道上造就自己，在圣灵里祷告， </span>**\n\n> <span id=\"17-j\">[以弗所书 6:16 和合本](#17-b)</span>\n>> **<span style=\"color: red;\">此外，又拿着信德当作盾牌，可以灭尽那恶者一切的火箭； </span>**\n\n> <span id=\"18-j\">[雅各书 2:20 和合本](#18-b)</span>\n>> **<span style=\"color: red;\">虚浮的人哪，你愿意知道没有行为的信心是死的吗？ </span>**\n\n> <span id=\"19-j\">[雅各书 2:26 和合本](#19-b)</span>\n>> **<span style=\"color: red;\">身体没有灵魂是死的，信心没有行为也是死的。\n </span>**\n', '', 'ad-1556261855598', 1, 'c-1556260437220');
INSERT INTO `article_draft` VALUES (5, '2019-04-26 16:04:54', '2019-04-26 17:10:29', NULL, 0, 'ar-1556265893962', '神的意念和人的意念', '神的意念和人的意念', '|   文章概要|   |\n| :------------: | :------------: |\n|  文章标题 |  <font color=\'red\'>《神的意念和人的意念》</font> |\n|  讲员 | <font color=\'red\'>姜姊妹</font>  |\n|  时间 | <font color=\'red\'>2019年3月27日 晚</font>  |\n|  地点 | <font color=\'red\'>上梅林查经会</font>  |\n|  性质 | <font color=\'red\'>正常上课</font>  |\n\n[TOC]\n\n\n# 前言\n> <span id=\"1-b\" style=\"color: red;\">**`耶利米书 1:10 和合本`**[(附录)](#1-j)</span>：\n\n# 一、神的意念和人的意念的区别\n> <span id=\"2-b\" style=\"color: red;\">**`雅各书 3:13-18 和合本`**[(附录)](#2-j)</span>：\n> <span id=\"3-b\" style=\"color: red;\">**`以赛亚书 55:8-9 和合本`**[(附录)](#3-j)</span>：\n> <span id=\"4-b\" style=\"color: red;\">**`箴言 14:12 和合本`**[(附录)](#4-j)</span>：\n\n\n# 二、圣经中人物所做的选择以及结局\n|   | 神的意念  | 人的意念 | 结局|总结|\n| :------------: | :------------: | :------------: | :------------: | :------------: |\n|**亚当**<br/>**夏娃**|<span id=\"5-b\" style=\"color: red;\">**`创世记 2:15-17 和合本`**[(附录)](#5-j)</span>：|<span id=\"6-b\" style=\"color: red;\">**`创世记 3:4-6 和合本`**[(附录)](#6-j)</span>：|||\n|||<span id=\"7-b\" style=\"color: red;\">**`约翰一书 2:15-16 和合本`**[(附录)](#7-j)</span>：||<span id=\"14-b\" style=\"color: red;\">**`约翰福音 8:32 和合本`**[(附录)](#14-j)</span>：|\n|**罗得**|<span id=\"8-b\" style=\"color: red;\">**`创世记 19:12-13 和合本`**[(附录)](#8-j)</span>：|<span id=\"9-b\" style=\"color: red;\">**`创世记 19:14 和合本`**[(附录)](#9-j)</span>：|||\n|**扫罗**|<span id=\"10-b\" style=\"color: red;\">**`撒母耳记上 15:2-3 和合本`**[(附录)](#10-j)</span>：|<span id=\"11-b\" style=\"color: red;\">**`撒母耳记上 15:9 和合本`**[(附录)](#11-j)</span>：<br/><span id=\"12-b\" style=\"color: red;\">**`撒母耳记上 15:18-21 和合本`**[(附录)](#12-j)</span>：||<span id=\"13-b\" style=\"color: red;\">**`撒母耳记上 15:22-23 和合本`**[(附录)](#13-j)</span>：|\n|**彼得**|<span id=\"15-b\" style=\"color: red;\">**`马太福音 16:15-19 和合本`**[(附录)](#15-j)</span>：|<span id=\"16-b\" style=\"color: red;\">**`马太福音 16:21-23 和合本`**[(附录)](#16-j)</span>：||箴言 14:12， <span id=\"17-b\" style=\"color: red;\">**`罗马书 8:5-8 和合本`**[(附录)](#17-j)</span>：|\n|**马大**<br/>**马利亚**<br/><span id=\"18-b\" style=\"color: red;\">**`路加福音 10:38-42 和合本`**[(附录)](#18-j)</span>：||||&nbsp;|\n\n> <span id=\"20-b\" style=\"color: red;\">**`申命记 30:19 和合本`**[(附录)](#20-j)</span>：\n> <span id=\"21-b\" style=\"color: red;\">**`提摩太后书 3:14-15 和合本`**[(附录)](#21-j)</span>：\n\n# 经文附录\n> <span id=\"1-j\">[耶利米书 1:10 和合本](#1-b)</span>\n>> **<span style=\"color: red;\">看哪，我今日立你在列邦列国之上，\n为要施行拔出、拆毁、毁坏、倾覆，\n又要建立、栽植。\n </span>**\n\n> <span id=\"2-j\">[雅各书 3:13-18 和合本](#2-b)</span>\n>> **<span style=\"color: red;\">你们中间谁是有智慧有见识的呢？他就当在智慧的温柔上显出他的善行来。你们心里若怀着苦毒的嫉妒和纷争，就不可自夸，也不可说谎话抵挡真道。这样的智慧不是从上头来的，乃是属地的，属情欲的，属鬼魔的。在何处有嫉妒、纷争，就在何处有扰乱和各样的坏事。惟独从上头来的智慧，先是清洁，后是和平，温良柔顺，满有怜悯，多结善果，没有偏见，没有假冒。并且使人和平的，是用和平所栽种的义果。\n </span>**\n\n> <span id=\"3-j\">[以赛亚书 55:8-9 和合本](#3-b)</span>\n>> **<span style=\"color: red;\">耶和华说：我的意念非同你们的意念；\n我的道路非同你们的道路。\n天怎样高过地，\n照样，我的道路高过你们的道路；\n我的意念高过你们的意念。\n </span>**\n\n> <span id=\"4-j\">[箴言 14:12 和合本](#4-b)</span>\n>> **<span style=\"color: red;\">有一条路，人以为正，\n至终成为死亡之路。\n </span>**\n\n> <span id=\"5-j\">[创世记 2:15-17 和合本](#5-b)</span>\n>> **<span style=\"color: red;\">耶和华　神将那人安置在伊甸园，使他修理，看守。耶和华　神吩咐他说：“园中各样树上的果子，你可以随意吃，只是分别善恶树上的果子，你不可吃，因为你吃的日子必定死！”\n </span>**\n\n> <span id=\"6-j\">[创世记 3:4-6 和合本](#6-b)</span>\n>> **<span style=\"color: red;\">蛇对女人说：“你们不一定死；因为　神知道，你们吃的日子眼睛就明亮了，你们便如　神能知道善恶。”于是女人见那棵树的果子好作食物，也悦人的眼目，且是可喜爱的，能使人有智慧，就摘下果子来吃了，又给她丈夫，她丈夫也吃了。 </span>**\n\n> <span id=\"7-j\">[约翰一书 2:15-16 和合本](#7-b)</span>\n>> **<span style=\"color: red;\">不要爱世界和世界上的事。人若爱世界，爱父的心就不在他里面了。因为，凡世界上的事，就像肉体的情欲、眼目的情欲，并今生的骄傲，都不是从父来的，乃是从世界来的。 </span>**\n\n> <span id=\"8-j\">[创世记 19:12-13 和合本](#8-b)</span>\n>> **<span style=\"color: red;\">二人对罗得说：“你这里还有什么人吗？无论是女婿是儿女，和这城中一切属你的人，你都要将他们从这地方带出去。我们要毁灭这地方；因为城内罪恶的声音在耶和华面前甚大，耶和华差我们来，要毁灭这地方。” </span>**\n\n> <span id=\"9-j\">[创世记 19:14 和合本](#9-b)</span>\n>> **<span style=\"color: red;\">罗得就出去，告诉娶了（或译：将要娶）他女儿的女婿们说：“你们起来离开这地方，因为耶和华要毁灭这城。”他女婿们却以为他说的是戏言。\n </span>**\n\n> <span id=\"10-j\">[撒母耳记上 15:2-3 和合本](#10-b)</span>\n>> **<span style=\"color: red;\">万军之耶和华如此说：‘以色列人出埃及的时候，在路上亚玛力人怎样待他们，怎样抵挡他们，我都没忘。现在你要去击打亚玛力人，灭尽他们所有的，不可怜惜他们，将男女、孩童、吃奶的，并牛、羊、骆驼，和驴尽行杀死。’”\n </span>**\n\n> <span id=\"11-j\">[撒母耳记上 15:9 和合本](#11-b)</span>\n>> **<span style=\"color: red;\">扫罗和百姓却怜惜亚甲，也爱惜上好的牛、羊、牛犊、羊羔，并一切美物，不肯灭绝。凡下贱瘦弱的，尽都杀了。\n </span>**\n\n> <span id=\"12-j\">[撒母耳记上 15:18-21 和合本](#12-b)</span>\n>> **<span style=\"color: red;\">耶和华差遣你，吩咐你说，你去击打那些犯罪的亚玛力人，将他们灭绝净尽。你为何没有听从耶和华的命令，急忙掳掠财物，行耶和华眼中看为恶的事呢？”扫罗对撒母耳说：“我实在听从了耶和华的命令，行了耶和华所差遣我行的路，擒了亚玛力王亚甲来，灭尽了亚玛力人。百姓却在所当灭的物中，取了最好的牛羊，要在吉甲献与耶和华－你的　神。” </span>**\n\n> <span id=\"13-j\">[撒母耳记上 15:22-23 和合本](#13-b)</span>\n>> **<span style=\"color: red;\">撒母耳说：\n耶和华喜悦燔祭和平安祭，\n岂如喜悦人听从他的话呢？\n听命胜于献祭；\n顺从胜于公羊的脂油。\n悖逆的罪与行邪术的罪相等；\n顽梗的罪与拜虚神和偶像的罪相同。\n你既厌弃耶和华的命令，\n耶和华也厌弃你作王。\n </span>**\n\n> <span id=\"14-j\">[约翰福音 8:32 和合本](#14-b)</span>\n>> **<span style=\"color: red;\">你们必晓得真理，真理必叫你们得以自由。” </span>**\n\n> <span id=\"15-j\">[马太福音 16:15-19 和合本](#15-b)</span>\n>> **<span style=\"color: red;\">耶稣说：“你们说我是谁？”西门·彼得回答说：“你是基督，是永生　神的儿子。”耶稣对他说：“西门·巴·约拿，你是有福的！因为这不是属血肉的指示你的，乃是我在天上的父指示的。我还告诉你，你是彼得，我要把我的教会建造在这磐石上；阴间的权柄（权柄：原文是门）不能胜过他。我要把天国的钥匙给你，凡你在地上所捆绑的，在天上也要捆绑；凡你在地上所释放的，在天上也要释放。” </span>**\n\n> <span id=\"16-j\">[马太福音 16:21-23 和合本](#16-b)</span>\n>> **<span style=\"color: red;\">从此，耶稣才指示门徒，他必须上耶路撒冷去，受长老、祭司长、文士许多的苦，并且被杀，第三日复活。彼得就拉着他，劝他说：“主啊，万不可如此！这事必不临到你身上。”耶稣转过来，对彼得说：“撒但，退我后边去吧！你是绊我脚的；因为你不体贴　神的意思，只体贴人的意思。” </span>**\n\n> <span id=\"17-j\">[罗马书 8:5-8 和合本](#17-b)</span>\n>> **<span style=\"color: red;\">因为，随从肉体的人体贴肉体的事；随从圣灵的人体贴圣灵的事。体贴肉体的，就是死；体贴圣灵的，乃是生命、平安。原来体贴肉体的，就是与　神为仇；因为不服　神的律法，也是不能服，而且属肉体的人不能得　神的喜欢。 </span>**\n\n> <span id=\"18-j\">[路加福音 10:38-42 和合本](#18-b)</span>\n>> **<span style=\"color: red;\">他们走路的时候，耶稣进了一个村庄。有一个女人，名叫马大，接他到自己家里。她有一个妹子，名叫马利亚，在耶稣脚前坐着听他的道。马大伺候的事多，心里忙乱，就进前来，说：“主啊，我的妹子留下我一个人伺候，你不在意吗？请吩咐她来帮助我。”耶稣回答说：“马大！马大！你为许多的事思虑烦扰，但是不可少的只有一件；马利亚已经选择那上好的福分，是不能夺去的。”\n </span>**\n\n> <span id=\"20-j\">[申命记 30:19 和合本](#20-b)</span>\n>> **<span style=\"color: red;\">我今日呼天唤地向你作见证；我将生死祸福陈明在你面前，所以你要拣选生命，使你和你的后裔都得存活； </span>**\n\n> <span id=\"21-j\">[提摩太后书 3:14-15 和合本](#21-b)</span>\n>> **<span style=\"color: red;\">但你所学习的，所确信的，要存在心里；因为你知道是跟谁学的，并且知道你是从小明白圣经，这圣经能使你因信基督耶稣，有得救的智慧。 </span>**\n\n\n', '', 'ad-1556265893962', 1, 'c-1556260437220');

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
-- Records of article_tag_mapping
-- ----------------------------
INSERT INTO `article_tag_mapping` VALUES ('ar-1555292543920', 't-1556260460594');
INSERT INTO `article_tag_mapping` VALUES ('ar-1555748901932', 't-1556260460594');
INSERT INTO `article_tag_mapping` VALUES ('ar-1555770497261', 't-1556260460594');
INSERT INTO `article_tag_mapping` VALUES ('ar-1556261855598', 't-1556260460594');
INSERT INTO `article_tag_mapping` VALUES ('ar-1556265893962', 't-1556260460594');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '2019-04-26 14:33:57', '2019-04-26 14:33:57', NULL, 0, 'c-1556260437220', '属灵的生命', '', 1, NULL);

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
INSERT INTO `dict` VALUES (1, '2019-04-14 16:44:35', '2019-04-20 14:03:38', NULL, 0, 'file_call_path', 'http://localhost:8080/upload/', 'file_call_path', '文件访问路径前缀');
INSERT INTO `dict` VALUES (2, '2019-04-14 16:49:55', '2019-04-26 11:19:22', NULL, 1, 'upload_path', 'E:\\Java Project\\idea\\self study\\myBlog\\fileUpload_pro\\upload\\', 'upload_path', '上传文件路径前缀');

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
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES (1, '2019-04-15 12:15:07', '2019-04-15 12:15:07', NULL, 0, 'f-1555301707194', 5424, '5 KB', 'QQ截图20190415110548.png', '1555301707175.png', 'c05a8703c39e5bf64eaf8e0c220bf525', NULL, '/1555301707175.png');
INSERT INTO `file` VALUES (2, '2019-04-15 12:30:50', '2019-04-15 12:30:50', NULL, 0, 'f-1555302649914', 8252, '8 KB', '灵魂体.png', '1555302649898.png', '30dcce7bc195067a872ab30ba4e178a5', NULL, '/1555302649898.png');
INSERT INTO `file` VALUES (3, '2019-04-16 08:59:23', '2019-04-16 08:59:23', NULL, 0, 'f-1555376363421', 44751, '43 KB', 'qq_pic_merged_1555376110499.jpg', '1555376363386.jpg', '9634a8e89e562eaf1313277d15246b68', NULL, '/1555376363386.jpg');
INSERT INTO `file` VALUES (4, '2019-04-16 09:13:46', '2019-04-16 09:13:46', NULL, 0, 'f-1555377226489', 17456, '17 KB', '1555377197709.jpg', '1555377226473.jpg', 'acee3de31f511e09c71cae614056aa5a', NULL, '/1555377226473.jpg');
INSERT INTO `file` VALUES (5, '2019-04-16 15:32:37', '2019-04-16 15:32:37', NULL, 0, 'f-1555399956928', 9627, '9 KB', '1555399894018.jpg', '1555399956766.jpg', 'af455bb063b55f9d85f7a1a2e850a04c', NULL, '/1555399956766.jpg');
INSERT INTO `file` VALUES (6, '2019-04-16 15:45:48', '2019-04-16 15:45:48', NULL, 0, 'f-1555400747525', 28925, '28 KB', '1555400723008.jpg', '1555400747510.jpg', '5a6a1809ee87aeeee4e78d233bc4a1be', NULL, '/1555400747510.jpg');
INSERT INTO `file` VALUES (7, '2019-04-16 15:48:31', '2019-04-16 15:48:31', NULL, 0, 'f-1555400910726', 27321, '26 KB', '1555400895025.jpg', '1555400910715.jpg', 'a9230f845ffb8f3f7d178e3a7d72d27c', NULL, '/1555400910715.jpg');
INSERT INTO `file` VALUES (8, '2019-04-16 16:33:53', '2019-04-16 16:33:53', NULL, 0, 'f-1555403633169', 41539, '40 KB', 'QQ截图20190416163338.png', '1555403633143.png', '80b06052aeddb48d684672b546d2eca5', NULL, '/1555403633143.png');

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
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `log` VALUES (11, '2019-04-16 10:09:41', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1555292543920');
INSERT INTO `log` VALUES (12, '2019-04-16 10:42:36', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1555292543920');
INSERT INTO `log` VALUES (13, '2019-04-16 11:16:37', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1555292543920');
INSERT INTO `log` VALUES (14, '2019-04-16 11:35:05', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1555292543920');
INSERT INTO `log` VALUES (15, '2019-04-16 14:55:54', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1555292543920');
INSERT INTO `log` VALUES (16, '2019-04-16 15:00:02', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1555292543920');
INSERT INTO `log` VALUES (17, '2019-04-16 15:50:54', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1555292543920');
INSERT INTO `log` VALUES (18, '2019-04-16 16:20:45', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1555292543920');
INSERT INTO `log` VALUES (19, '2019-04-16 17:28:22', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1555292543920');
INSERT INTO `log` VALUES (20, '2019-04-20 14:14:51', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1555292543920');
INSERT INTO `log` VALUES (21, '2019-04-20 16:28:22', NULL, 0, '创建草稿, 并新增文章 Markdown 内容', 'article', 'ar-1555748901932');
INSERT INTO `log` VALUES (22, '2019-04-20 17:27:06', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1555748901932');
INSERT INTO `log` VALUES (23, '2019-04-20 18:06:57', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1555748901932');
INSERT INTO `log` VALUES (24, '2019-04-20 18:27:10', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1555748901932');
INSERT INTO `log` VALUES (25, '2019-04-20 18:29:31', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1555748901932');
INSERT INTO `log` VALUES (26, '2019-04-20 22:28:17', NULL, 0, '创建草稿, 并新增文章 Markdown 内容', 'article', 'ar-1555770497261');
INSERT INTO `log` VALUES (27, '2019-04-20 23:23:46', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1555770497261');
INSERT INTO `log` VALUES (28, '2019-04-20 23:56:52', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1555770497261');
INSERT INTO `log` VALUES (29, '2019-04-21 00:46:39', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1555770497261');
INSERT INTO `log` VALUES (30, '2019-04-21 00:52:46', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1555770497261');
INSERT INTO `log` VALUES (31, '2019-04-21 00:54:18', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1555770497261');
INSERT INTO `log` VALUES (32, '2019-04-26 14:33:57', NULL, 0, '新增分类信息', 'category', 'c-1556260437220');
INSERT INTO `log` VALUES (33, '2019-04-26 14:34:21', NULL, 0, '新增标签信息', 'tag', 't-1556260460594');
INSERT INTO `log` VALUES (34, '2019-04-26 14:37:14', NULL, 0, '保存文章信息', 'article', 'ar-1555770497261');
INSERT INTO `log` VALUES (35, '2019-04-26 14:38:40', NULL, 0, '保存文章信息', 'article', 'ar-1555770497261');
INSERT INTO `log` VALUES (36, '2019-04-26 14:39:58', NULL, 0, '保存文章信息', 'article', 'ar-1555748901932');
INSERT INTO `log` VALUES (37, '2019-04-26 14:40:33', NULL, 0, '保存文章信息', 'article', 'ar-1555292543920');
INSERT INTO `log` VALUES (38, '2019-04-26 14:42:17', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1555292543920');
INSERT INTO `log` VALUES (39, '2019-04-26 14:57:36', NULL, 0, '创建草稿, 并新增文章 Markdown 内容', 'article', 'ar-1556261855598');
INSERT INTO `log` VALUES (40, '2019-04-26 14:59:07', NULL, 0, '保存文章信息', 'article', 'ar-1556261855598');
INSERT INTO `log` VALUES (41, '2019-04-26 15:30:05', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1556261855598');
INSERT INTO `log` VALUES (42, '2019-04-26 15:43:40', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1556261855598');
INSERT INTO `log` VALUES (43, '2019-04-26 16:04:54', NULL, 0, '创建草稿, 并新增文章 Markdown 内容', 'article', 'ar-1556265893962');
INSERT INTO `log` VALUES (44, '2019-04-26 16:05:07', NULL, 0, '保存文章信息', 'article', 'ar-1556265893962');
INSERT INTO `log` VALUES (45, '2019-04-26 16:12:13', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1556265893962');
INSERT INTO `log` VALUES (46, '2019-04-26 17:03:25', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1556265893962');
INSERT INTO `log` VALUES (47, '2019-04-26 17:10:29', NULL, 0, '修改文章 Markdown 内容', 'article', 'ar-1556265893962');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES (1, '2019-04-26 14:34:21', '2019-04-26 14:34:21', NULL, 0, 't-1556260460594', '圣经', '');

SET FOREIGN_KEY_CHECKS = 1;
