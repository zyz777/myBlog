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

 Date: 16/04/2019 17:39:25
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
INSERT INTO `article_draft` VALUES (1, '2019-04-15 09:42:24', '2019-04-16 17:28:22', NULL, 0, 'ar-1555292543920', NULL, NULL, '|   文章概要|   |\n| :------------: | :------------: |\n|  文章标题 |  <font color=\'red\'>《灵魂体》</font> |\n|  讲员 | <font color=\'red\'>钟弟兄</font>  |\n|  地点 | <font color=\'red\'>下梅林查经会</font>  |\n\n[TOC]\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n# 前言\n> **<span style=\"color: blue;\">Q：人是从哪来的？</span>**\n<img src=\"/upload//1555376363386.jpg\" style=\"height:14rem;\"/>\n<img src=\"/upload//1555377226473.jpg\" style=\"height:14rem;\"/>\n> <span id=\"2-b\" style=\"color: red;\">**A：`希伯来书 3:4 和合本`**[(附录)](#2-j)</span>：神造<code><span style=\"font-size: small; color: red;\">**万物**</span></code>\n\n<span/>\n\n> **<span style=\"color: blue;\">Q：人要在地球村这个环境里生存，地球怎么来的？</span>**\n> <span id=\"1-b\" style=\"color: red;\">**A：`创世记 1:1 和合本`**[(附录)](#1-j)</span>：神造<code><span style=\"font-size: small; color: red;\">**天地**</span></code>\n\n<span id=\"3-b\" style=\"color: red;\">**`罗马书 1:20 和合本`**[(附录)](#3-j)</span>：藉着`所造之物`可以晓得<code><span style=\"color: red;\">**神**</span></code>是存在的\n\n> 乔布斯造苹果手机\n>> 就如人造物，乔布斯造手机，他可以解说手机的奥秘，证明手机是他造的。\n\n<span style=\"color: red;\">**`同理`**</span>\n\n> 神造`天地万物`\n>> 神可以解说`天地万物`的奥秘，在`《圣经》`中可以找到这些解说，证明`天地万物`是神造，证明<span style=\"color: red;\">**`神`**</span>是存在的。\n世上任何宗教的经文，都不敢说天地万物是他们造的。\n\n<span style=\"color: red;\">**接下来，一起来探讨`人的奥秘`！！！**</span>\n\n# 一、人的构成\n<!-- //此处注释掉了\n<span id=\"4-b\" style=\"color: red;\">**`诗篇 90:9-10 和合本`**[(附录)](#4-j)</span>：<code><span style=\"font-size: small; color: red;\">**预言**</span></code>人的一生都是<span style=\"color: red;\">‘劳苦愁烦’</span>（工作累，苦，加班太多，作业太多...）。\n\n人的一天，24小时，都在<span style=\"color: red;\">‘喜怒悲唉’</span>中反复、循环的度过。\n\n> **<span style=\"color: blue;\">Q：为什么人会有这么多行为表现呢？会感觉愁，会感觉烦，会笑，会哭...</span>**\n> <span id=\"5-b\" style=\"color: red;\">**A：强行解释**</span>：都是由你的思想，意念控制的，让你的肉体发出行为。\n-->\n<span></span>\n\n<span id=\"6-b\" style=\"color: red;\">**`帖撒罗尼迦前书 5:23 和合本`**[(附录)](#6-j)</span>：顺序是 &rarr; <code><span style=\"font-size: small; color: red;\">**灵**</span></code>、<code><span style=\"font-size: small; color: red;\">**魂**</span></code>、<code><span style=\"font-size: small; color: red;\">**肉体**</span></code>；由此可知，<code><span style=\"font-size: small; color: red;\">**灵**</span></code>是最重要的。\n> <span style=\"color: red;\">① 灵：英文是“spirit”，意思是“精神，思想”。\n② 魂：英文是“breath”，意思是“呼吸”。\n③ 肉体：英文是“flesh”，意思是“肉体”。</span>\n\n![11](/upload/1555302649898.png \"11\")\n\n## ①灵\n> <span style=\"color: blue;\">**Q：灵是什么？**</span>\n> <span id=\"8-b\" style=\"color: red;\">**A：`约翰福音 6:63 和合本`**[(附录)](#8-j)</span>：\n- ① `话` 就是 `灵`\n- ② 就是生命（带给你生命）\n`话`：精神、思想、意念\n<span style=\"color:red;\">怎样思想，就是怎样的灵；反过来也一样。有怎样的灵，就有怎样的思想。</span>\n灵是我的思想，灵喜，肉体就笑；灵悲，肉体就会苦。\n\n<span></span>\n\n> **<span style=\"color: blue;\">Q：话是什么？</span>**\n> <span style=\"color: red;\">**A：`神的道`。详情请学习后面的课程《福音》《祷告》《心田》**</span>\n\n<span></span>\n\n> <span style=\"color: blue;\">**Q：灵的痛苦，人是否能忍受？**</span>\n> <span id=\"12-b\" style=\"color: red;\">**A：`箴言 18:14 和合本`**[(附录)](#12-j)</span>：肉体的疼痛，人都能忍受的了；但灵的痛苦，无人承担得起，人承受不了。\n\n<span></span>\n> <span style=\"color: blue;\">**Q：若灵好，可以干嘛？有什么益处？**</span>\n> <span style=\"color: red;\">**A：肉体安康，病得医治。有生命，会长寿。**</span>\n> <span id=\"13-b\" style=\"color: red;\">**`箴言 17:22 和合本`**[(附录)](#13-j)</span>：喜乐的灵\n> <span id=\"14-b\" style=\"color: red;\">**`诗篇 16:9 和合本`**[(附录)](#14-j)</span>：心灵好，你的肉体，也会好。\n> <span id=\"15-b\" style=\"color: red;\">**`箴言 4:22 和合本`**[(附录)](#15-j)</span>：\n- ① 得着它，得生命\n- ② 医治全体\n>> <span style=\"color: blue;\">**Q：`它`是什么？**</span>\n>> <span style=\"color: red;\">**A：**</span>：在上面已经讲过，什么是`生命`？`[约翰福音 6:63]`中，`话`就是生命。那么，`它`&rarr; 就是`话`，`话`&rarr; 就是`神的道`。\n\n> 得着`神的道` &rarr; 医治你的灵（让你的灵有生命）&rarr; 再医治全体 &rarr; 有生命\n\n<span id=\"16-b\" style=\"color: red;\">**`使徒行传 20:7-10 和合本`**[(附录)](#16-j)</span>：灵魂决定，肉体存活。灵永存，肉体永存\n\n\n## ②魂\n`控制肉体的行动`，比如：呼吸，吃喝拉撒，表情等人体生命特征，及行为表现。\n受**<span style=\"color: red;\">`灵`</span>**的控制，接收**<span style=\"color: red;\">`灵`</span>**的指令，控制`肉体`执行指令\n\n## ③肉体\n<span id=\"17-b\" style=\"color: red;\">**`约翰福音 6:63 和合本`**[(附录)](#8-j)</span>：肉体无益\n\n# 二、灵的来源\n> <span style=\"color: blue;\">**Q：灵从何而来？**</span>\n> <span id=\"18-b\" style=\"color: red;\">**A：`撒迦利亚书 12:1 和合本`**[(附录)](#18-j)</span>：神造人的灵，从神而来。\n\n<span></span>\n> <span style=\"color: blue;\">**Q：神是什么？**</span>\n<img src=\"/upload//1555399956766.jpg\" style=\"height:13rem;\"/>\n> <span id=\"9-b\" style=\"color: red;\">**A：`约翰福音 4:24 和合本`**[(附录)](#9-j)</span>：神是灵\n\n<span></span>\n> <span style=\"color: blue;\">**Q：神是如何造的灵？灵造灵？**</span>\n> <span id=\"19-b\" style=\"color: red;\">**A：`约翰福音 1:1-4 和合本`**[(附录)](#19-j)</span>：神是`道`，用`道`（思想）造\n<img src=\"/upload//1555400747510.jpg\" style=\"height:17rem;\"/><img src=\"/upload//1555400910715.jpg\" style=\"height:10rem;\"/>\n\n<span></span>\n> <span style=\"color: blue;\">**Q：用道造的灵，这人有什么不一样的地方？**</span>\n> <span id=\"7-b\" style=\"color: red;\">**A：`哥林多前书 2:15 和合本`**[(附录)](#7-j)</span>：看透万事\n\n<span></span>\n> <span style=\"color: blue;\">**Q：看透万事？这么厉害，我怎么感觉我很傻B？**</span>\n> <span style=\"color: red;\">**A：那是因为，人的灵，不是神所造的那个灵了，人的灵，已经没有`神的道`了**</span>\n>> `亚当时代`\n>>> <span id=\"10-b\" style=\"color: red;\">**`创世记 1:26-27 和合本`**[(附录)](#10-j)</span>：神照着自己的形像造人\n<span id=\"21-b\" style=\"color: red;\">**`创世记 2:7 和合本`**[(附录)](#21-j)</span>：造`亚当`，让他治理`地球`。神的`灵`住在他里面。\n>>>> `用地上的尘土造人`：亚当已经是活人，但是他只有`魂`、`肉体`，和`畜类`一样，按本能行事；但在神的眼里，亚当不算活人，所以给了亚当`灵`，让亚当成为`有灵`的活人。\n\n>>><span style=\"color: red;\">亚当犯罪之后（罪带来的结局就是死）</span>：`神(的灵)`离开了亚当，`魔鬼`就住进了亚当的心里，地上就归`魔鬼`统治了。\n<span id=\"22-b\" style=\"color: red;\">**`创世记 6:3 和合本`**[(附录)](#22-j)</span>：属血气，就是罪，罪就是魔鬼。\n<span id=\"24-b\" style=\"color: red;\">**`约翰一书 5:19 和合本`**[(附录)](#24-j)</span>：`恶者`&rarr;`魔鬼`。\n<span id=\"23-b\" style=\"color: red;\">**`创世记 6:5 和合本`**[(附录)](#23-j)</span>：灵是人的思想、意念。`终日所思想的尽都是恶`，灵里都是罪，被罪辖制，人的灵被魔鬼掌控。\n<span id=\"36-b\" style=\"color: red;\">**`创世记 3:14 和合本`**[(附录)](#36-j)</span>：`蛇吃土`\n>>>> `蛇`🐍：比喻撒旦\n`土`：指肉体败坏\n`蛇吃土`：魔鬼撒旦会用尽一切办法，让你肉体败坏，然后吃掉。\n\n\n<span></span>\n> <span id=\"35-b\" style=\"color: red;\">**`哥林多后书 4:16 和合本`**[(附录)](#35-j)</span>：\n- ① 肉体：毁坏\n- ② 内心（灵）：更新\n\n> <span id=\"37-b\" style=\"color: red;\">**`腓立比书 3:21 和合本`**[(附录)](#37-j)</span>：当我们更新`灵`，就会改变肉体。\n\n\n\n# 三、肉体的来源\n> <span style=\"color: blue;\">**Q：肉体怎么来的？**</span>\n> <span id=\"25-b\" style=\"color: red;\">**A：`约伯记 1:21 和合本`**[(附录)](#25-j)</span>：`我赤身出于母胎，也必赤身归回`\n\n<span></span>\n> <span style=\"color: blue;\">**Q：`出于母胎`我知道，`赤身归回`什么意思？变回婴孩，回归母胎？**</span>\n<img src=\"/upload//1555403633143.png\" style=\"height:10rem;\"/>\n> <span id=\"25-b\" style=\"color: red;\">**A：感谢神，你妈这么长寿！！！（是出于母胎和尘土）**</span>\n<span id=\"28-b\" style=\"color: red;\">**`创世记 3:19 和合本`**[(附录)](#28-j)</span>：出于尘土\n<span id=\"26-b\" style=\"color: red;\">**`约伯记 33:6 和合本`**[(附录)](#26-j)</span>：人是`土`造的。科学早已证明，人体的元素和土元素是一模一样的。当我们死后，就会变为土，或许被某些果树当作养分吸收，父母吃了水果（土元素），生了我，我死后归回尘土，然后一直就这样循环着。\n\n\n\n<span></span>\n><span id=\"27-b\" style=\"color: red;\">**`犹大书 1:10 和合本`**[(附录)](#27-j)</span>：和畜生一样。畜类没有灵，只有`魂`在管`肉体`的行动表现。\n\n<span></span>\n> <span style=\"color: blue;\">**Q：末世来临，所有的灵将接受审判**</span>\n> <span id=\"29-b\" style=\"color: red;\">**A：`启示录 20:12 和合本`**[(附录)](#29-j)</span>：虽然你肉体死了，归于尘土，但你的灵没死，要接受审判。\n\n# 四、有神样式的人\n<span style=\"color: red;\">**肉体虽然毁坏，但灵可以更新。要让我们的灵，都能有神的样式。**</span>\n\n> <span style=\"color: blue;\">**Q：神的样式是怎样的呢？**</span>\n> <span id=\"11-b\" style=\"color: red;\">**A：`以弗所书 4:24 和合本`**[(附录)](#11-j)</span>：`有真理的仁义和圣洁`\n<span id=\"30-b\" style=\"color: red;\">**`加拉太书 5:22-23 和合本`**[(附录)](#30-j)</span>：结出`圣灵九果`\n\n# 五、有魔鬼思想样式的人\n> <span style=\"color: blue;\">**Q：魔鬼的样式是怎样的呢？**</span>\n> <span id=\"31-b\" style=\"color: red;\">**A：`加拉太书 5:19-21 和合本`**[(附录)](#31-j)</span>：情欲的事情\n<span id=\"32-b\" style=\"color: red;\">**`创世记 8:21-22 和合本`**[(附录)](#32-j)</span>：恶念从小就有，因为人是由血气生的。属血气就是罪\n<span id=\"33-b\" style=\"color: red;\">**`罗马书 8:5-8 和合本`**[(附录)](#33-j)</span>：体贴肉体，与神为仇\n<span id=\"34-b\" style=\"color: red;\">**`罗马书 8:13 和合本`**[(附录)](#34-j)</span>：顺从肉体，必要死。是“必要”、“一定”哦。\n\n\n\n# 附录\n> <span id=\"1-j\">[创世记 1:1 和合本](#1-b)</span>\n>> **<span style=\"color: red;\"> 起初,神创造天地。</span>**\n\n> <span id=\"2-j\">[希伯来书 3:4 和合本](#2-b)</span>\n>> **<span style=\"color: red;\">因为房屋都必有人建造，但建造万物的就是　神。 </span>**\n\n> <span id=\"3-j\">[罗马书 1:20 和合本](#3-b)</span>\n>> **<font color=\'red\'>自从造天地以来，　神的永能和神性是明明可知的，虽是眼不能见，但藉着所造之物就可以晓得，叫人无可推诿。 </font>**\n\n> <span id=\"4-j\">[诗篇 90:9-10 和合本](#4-b)</span>\n>> **<span style=\"color: red;\">我们经过的日子都在你震怒之下；\n我们度尽的年岁好像一声叹息。\n我们一生的年日是七十岁，\n若是强壮可到八十岁；\n但其中所矜夸的不过是劳苦愁烦，\n转眼成空，我们便如飞而去。</span>**\n\n> <span id=\"6-j\">[帖撒罗尼迦前书 5:23 和合本](#6-b)</span>\n>> **<span style=\"color: red;\">愿赐平安的　神亲自使你们全然成圣！又愿你们的灵与魂与身子得蒙保守，在我们主耶稣基督降临的时候，完全无可指摘！</span>**\n\n> <span id=\"7-j\">[哥林多前书 2:15 和合本](#7-b)</span>\n>> **<span style=\"color: red;\">属灵的人能看透万事，却没有一人能看透了他。</span>**\n\n>  <span id=\"8-j\">约翰福音 6:63 和合本 [返回1](#8-b) [返回2](#17-b)</span>\n>> **<span style=\"color: red;\">叫人活着的乃是灵，肉体是无益的。我对你们所说的话就是灵，就是生命。</span>**\n\n> <span id=\"9-j\">[约翰福音 4:24 和合本](#9-b)</span>\n>> **<span style=\"color: red;\"> 神是个灵（或无个字），所以拜他的必须用心灵和诚实拜他。</span>**\n\n> <span id=\"10-j\">[创世记 1:26-27 和合本](#10-b)</span>\n>> **<span style=\"color: red;\">神说：“我们要照着我们的形像、按着我们的样式造人，使他们管理海里的鱼、空中的鸟、地上的牲畜，和全地，并地上所爬的一切昆虫。”　神就照着自己的形像造人，乃是照着他的形像造男造女。</span>**\n\n> <span id=\"11-j\">[以弗所书 4:24 和合本](#11-b)</span>\n>> **<span style=\"color: red;\">并且穿上新人；这新人是照着　神的形像造的，有真理的仁义和圣洁。</span>**\n\n> <span id=\"12-j\">[箴言 18:14 和合本](#12-b)</span>\n>>**<span style=\"color: red;\">人有疾病，心能忍耐；\n心灵忧伤，谁能承当呢？</span>**\n\n> <span id=\"13-j\">[箴言 17:22 和合本](#13-b)</span>\n>> **<span style=\"color: red;\">喜乐的心乃是良药；\n忧伤的灵使骨枯干。</span>**\n\n> <span id=\"14-j\">[诗篇 16:9 和合本](#14-b)</span>\n>> **<span style=\"color: red;\">因此，我的心欢喜，我的灵（原文是荣耀）快乐；\n我的肉身也要安然居住。</span>**\n\n> <span id=\"15-j\">[箴言 4:22 和合本](#15-b)</span>\n>> **<span style=\"color: red;\">因为得着它的，就得了生命，\n又得了医全体的良药。</span>**\n\n> <span id=\"16-j\">[使徒行传 20:7-10 和合本](#16-b)</span>\n>> **<span style=\"color: red;\">七日的第一日，我们聚会擘饼的时候，保罗因为要次日起行，就与他们讲论，直讲到半夜。我们聚会的那座楼上，有好些灯烛。有一个少年人，名叫犹推古，坐在窗台上，困倦沉睡。保罗讲了多时，少年人睡熟了，就从三层楼上掉下去；扶起他来，已经死了。保罗下去，伏在他身上，抱着他，说：“你们不要发慌，他的灵魂还在身上。”</span>**\n\n> <span id=\"18-j\">[撒迦利亚书 12:1 和合本](#18-b)</span>\n>> **<span style=\"color: red;\">耶和华论以色列的默示。\n铺张诸天、建立地基、造人里面之灵的耶和华说：</span>**\n\n> <span id=\"19-j\">[约翰福音 1:1-4 和合本](#19-b)</span>\n>>  **<span style=\"color: red;\">太初有道，道与　神同在，道就是　神。这道太初与　神同在。万物是藉着他造的；凡被造的，没有一样不是藉着他造的。生命在他里头，这生命就是人的光。</span>**\n\n> <span id=\"21-j\">[创世记 2:7 和合本](#21-b)</span>\n>> **<span style=\"color: red;\">耶和华　神用地上的尘土造人，将生气吹在他鼻孔里，他就成了有灵的活人，名叫亚当。</span>**\n\n> <span id=\"22-j\">[创世记 6:3 和合本](#22-b)</span>\n>> **<span style=\"color: red;\">耶和华说：“人既属乎血气，我的灵就不永远住在他里面；然而他的日子还可到一百二十年。”</span>**\n\n> <span id=\"23-j\">[创世记 6:5 和合本](#23-b)</span>\n>> **<span style=\"color: red;\">耶和华见人在地上罪恶很大，终日所思想的尽都是恶，</span>**\n\n> <span id=\"24-j\">[约翰一书 5:19 和合本](#24-b)</span>\n>> **<span style=\"color: red;\">我们知道，我们是属　神的，全世界都卧在那恶者手下。</span>**\n\n> <span id=\"25-j\">[约伯记 1:21 和合本](#25-b)</span>\n>> **<span style=\"color: red;\">说：“我赤身出于母胎，也必赤身归回；赏赐的是耶和华，收取的也是耶和华。耶和华的名是应当称颂的。”</span>**\n\n> <span id=\"26-j\">[约伯记 33:6 和合本](#26-b)</span>\n>> **<span style=\"color: red;\">我在　神面前与你一样，\n也是用土造成。</span>**\n\n> <span id=\"27-j\">[犹大书 1:10 和合本](#27-b)</span>\n>> **<span style=\"color: red;\">但这些人毁谤他们所不知道的。他们本性所知道的事与那没有灵性的畜类一样，在这事上竟败坏了自己。</span>**\n\n> <span id=\"28-j\">[创世记 3:19 和合本](#28-b)</span>\n>> **<span style=\"color: red;\">你必汗流满面才得糊口，\n直到你归了土，\n因为你是从土而出的。\n你本是尘土，仍要归于尘土。</span>**\n\n> <span id=\"29-j\">[启示录 20:12 和合本](#29-b)</span>\n>> **<span style=\"color: red;\">我又看见死了的人，无论大小，都站在宝座前。案卷展开了，并且另有一卷展开，就是生命册。死了的人都凭着这些案卷所记载的，照他们所行的受审判。</span>**\n\n> <span id=\"30-j\">[加拉太书 5:22-23 和合本](#30-b)</span>\n>> **<span style=\"color: red;\">圣灵所结的果子，就是仁爱、喜乐、和平、忍耐、恩慈、良善、信实、温柔、节制。这样的事没有律法禁止。</span>**\n\n> <span id=\"31-j\">[加拉太书 5:19-21 和合本](#31-b)</span>\n>> **<span style=\"color: red;\">情欲的事都是显而易见的，就如奸淫、污秽、邪荡、拜偶像、邪术、仇恨、争竞、忌恨、恼怒、结党、纷争、异端、嫉妒（有古卷加：凶杀二字）、醉酒、荒宴等类。我从前告诉你们，现在又告诉你们，行这样事的人必不能承受　神的国。</span>**\n\n> <span id=\"32-j\">[创世记 8:21-22 和合本](#32-b)</span>\n>> **<span style=\"color: red;\">耶和华闻那馨香之气，就心里说：“我不再因人的缘故咒诅地（人从小时心里怀着恶念），也不再按着我才行的灭各种的活物了。地还存留的时候，稼穑、寒暑、冬夏、昼夜就永不停息了。”</span>**\n\n> <span id=\"33-j\">[罗马书 8:5-8 和合本](#33-b)</span>\n>> **<span style=\"color: red;\">因为，随从肉体的人体贴肉体的事；随从圣灵的人体贴圣灵的事。体贴肉体的，就是死；体贴圣灵的，乃是生命、平安。原来体贴肉体的，就是与　神为仇；因为不服　神的律法，也是不能服，而且属肉体的人不能得　神的喜欢。</span>**\n\n> <span id=\"34-j\">[罗马书 8:13 和合本](#34-b)</span>\n>> **<span style=\"color: red;\">你们若顺从肉体活着，必要死；若靠着圣灵治死身体的恶行，必要活着。</span>**\n\n> <span id=\"35-j\">[哥林多后书 4:16 和合本](#35-b)</span>\n>> **<span style=\"color: red;\">所以，我们不丧胆。外体虽然毁坏，内心却一天新似一天。</span>**\n\n> <span id=\"36-j\">[创世记 3:14 和合本](#36-b)</span>\n>> **<span style=\"color: red;\">耶和华　神对蛇说：\n你既做了这事，就必受咒诅，\n比一切的牲畜野兽更甚；\n你必用肚子行走，\n终身吃土。</span>**\n\n> <span id=\"37-j\">[腓立比书 3:21 和合本](#37-b)</span>\n>> **<span style=\"color: red;\">他要按着那能叫万有归服自己的大能，将我们这卑贱的身体改变形状，和他自己荣耀的身体相似。</span>**\n\n\n', NULL, 'ad-1555292543920', 1, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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

SET FOREIGN_KEY_CHECKS = 1;
