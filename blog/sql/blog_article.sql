/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : simpleblog

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 07/10/2019 16:08:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for blog_article
-- ----------------------------
DROP TABLE IF EXISTS `blog_article`;
CREATE TABLE `blog_article`  (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `brief_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `publish_date` datetime(6) NOT NULL,
  PRIMARY KEY (`article_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_article
-- ----------------------------
INSERT INTO `blog_article` VALUES (1, 'Test Django shell', 'Test Django shell, a brief_content', 'Test Django shell,New Article,Main content', '2019-10-07 05:47:30.265742');
INSERT INTO `blog_article` VALUES (2, 'Why Django?', 'Django overview', 'With Django, you can take Web applications from concept to launch in a matter of hours. Django takes care of much of the hassle of Web development, so you can focus on writing your app without needing to reinvent the wheel. It’s free and open source.\r\n<1>Ridiculously fast.\r\nDjango was designed to help developers take applications from concept to completion as quickly as possible.\r\n<2>Fully loaded.\r\nDjango includes dozens of extras you can use to handle common Web development tasks. Django takes care of user authentication, content administration, site maps, RSS feeds, and many more tasks — right out of the box.', '2019-10-07 06:48:30.007952');
INSERT INTO `blog_article` VALUES (3, 'About Python', 'friendly & easy to learn & Open', 'Python是一种跨平台的计算机程序设计语言。是一种面向对象的动态类型语言，最初被设计用于编写自动化脚本(shell)，随着版本的不断更新和语言新功能的添加，越来越多被用于独立的、大型项目的开发。', '2019-10-07 06:51:57.419409');
INSERT INTO `blog_article` VALUES (4, '月台', '美文故事', '是起点也是终点，是开始也是结束；是欢聚也是离散，是出发也是归宿。\r\n从来没有一个地方，能汇集如许人的流动量，从来没有一个地方，能拥有如许悲欢离合。从清晨到白昼，从黄昏到晚上，从黑夜到黎明，数不清的脚印，带着来自各地的泥土。重重叠叠，密密麻麻踩上去；有红色的土来自山间，有褐色的土来自田野，有黑色的土来自城市，有白色的土来自海滨。聚拢又散失，堆积又泻落，没有一粒种子能在土里长根，如同没有一双脚步会在这里驻留；缘因——这只是流动的浮土，这仅是过往的月台。\r\n月台展延在任何一个城与城交接的动点，守望在任何一个城镇的边缘，它只是默默地伫候，骚扰不停的是人们，为生活、为名利、为野心、为梦想……来来去去，忙忙碌碌，这是个制造离散的时代，列车频频靠站又开走，卸下一批乘客在月台，又从月台上载走了另一批。来的脚步掩盖了去的脚印，去的脚步也覆盖了来的脚印，轻快的脚步播散着欢聚的愉悦，沉重的脚步载负着如许离愁，从容的脚步踱向预定的目标，匆忙的脚步显示心情的迫切，迟缓的脚步缠绕于厌倦，悠闲的脚步只为一次探访，也有犹疑不稳的脚步，属于那迷失了自己的旅客。', '2019-10-07 06:57:29.424914');
INSERT INTO `blog_article` VALUES (5, '老木匠的房子', '一则励志小故事', '有个老木匠准备退休，他告诉老板，说要离开建筑行业，回家与妻子儿女享受天伦之乐。\r\n　　老板舍不得他的好工人走，问他是否能帮忙再建一座房子，老木匠说可以。但是大家后来都看得出来，他的心已不在工作上，他用的是软料，出的是粗活。房子建好的时候，老板把大门的钥匙递给他。\r\n　　“这是你的房子，”他说，“我送给你的礼物。”\r\n　　他震惊得目瞪口呆，羞愧得无地自容。如果他早知道是在给自己建房子，他怎么会这样呢？现在他得住在一幢粗制滥造的房子里！我们又何尝不是这样。我们漫不经心地“建造”自己的生活，不是积极行动，而是消极应付，凡事不肯精益求精，在关键时刻不能尽最大努力。等我们惊觉自己的处境，早已深困在自己建造的“房子”里了。把你当成那个木匠吧，想想你的房子，每天你敲进去一颗钉，加上去一块板，或者竖起一面墙，用你的智慧好好建造吧！你的生活是你一生唯一的创造，不能抹平重建，即使只有一天可活，那一天也要活得优美、高贵，墙上的铭牌上写着：“生活是自己创造的。', '2019-10-07 06:58:24.961562');
INSERT INTO `blog_article` VALUES (6, '将进酒', '唐代：李白', '君不见，黄河之水天上来，奔流到海不复回。\r\n君不见，高堂明镜悲白发，朝如青丝暮成雪。\r\n人生得意须尽欢，莫使金樽空对月。\r\n天生我材必有用，千金散尽还复来。\r\n烹羊宰牛且为乐，会须一饮三百杯。\r\n岑夫子，丹丘生，将进酒，杯莫停。\r\n与君歌一曲，请君为我倾耳听。(倾耳听 一作：侧耳听)\r\n钟鼓馔玉不足贵，但愿长醉不复醒。(不足贵 一作：何足贵；不复醒 一作：不愿醒/不用醒)\r\n古来圣贤皆寂寞，惟有饮者留其名。(古来 一作：自古；惟 通：唯)\r\n陈王昔时宴平乐，斗酒十千恣欢谑。\r\n主人何为言少钱，径须沽取对君酌。\r\n五花马，千金裘，呼儿将出换美酒，与尔同销万古愁。', '2019-10-07 06:59:49.980218');
INSERT INTO `blog_article` VALUES (7, '国风·周南·关雎', '先秦：佚名', '关关雎鸠，在河之洲。窈窕淑女，君子好逑。\r\n参差荇菜，左右流之。窈窕淑女，寤寐求之。\r\n求之不得，寤寐思服。悠哉悠哉，辗转反侧。\r\n参差荇菜，左右采之。窈窕淑女，琴瑟友之。\r\n参差荇菜，左右芼之。窈窕淑女，钟鼓乐之。', '2019-10-07 07:01:22.287950');
INSERT INTO `blog_article` VALUES (8, '春江花月夜', '唐代：张若虚', '春江潮水连海平，海上明月共潮生。\r\n滟滟随波千万里，何处春江无月明！\r\n江流宛转绕芳甸，月照花林皆似霰。\r\n空里流霜不觉飞，汀上白沙看不见。\r\n江天一色无纤尘，皎皎空中孤月轮。\r\n江畔何人初见月？江月何年初照人？\r\n人生代代无穷已，江月年年只相似。(只相似 一作：望相似)\r\n不知江月待何人，但见长江送流水。\r\n白云一片去悠悠，青枫浦上不胜愁。\r\n谁家今夜扁舟子？何处相思明月楼？\r\n可怜楼上月徘徊，应照离人妆镜台。\r\n玉户帘中卷不去，捣衣砧上拂还来。\r\n此时相望不相闻，愿逐月华流照君。\r\n鸿雁长飞光不度，鱼龙潜跃水成文。\r\n昨夜闲潭梦落花，可怜春半不还家。\r\n江水流春去欲尽，江潭落月复西斜。\r\n斜月沉沉藏海雾，碣石潇湘无限路。\r\n不知乘月几人归，落月摇情满江树。', '2019-10-07 07:02:57.737464');
INSERT INTO `blog_article` VALUES (9, '这一生关于你的风景', '作曲 : 枯木逢春\r\n作词 : 枯木逢春', '远方灯火闪亮着光\r\n你一人低头在路上\r\n这城市越大越让人心慌\r\n多向往多漫长\r\n这一路经历太多伤\r\n把最初笑容都淡忘\r\n时光让我们变得\r\n脆弱且坚强\r\n让我再来轻轻对你唱\r\n我多想能多陪你一场\r\n把前半生的风景对你讲\r\n在每个寂静的夜里我会想\r\n那些关于你的爱恨情长\r\n我也想能够把你照亮\r\n在你的生命中留下阳光\r\n陪你走过那山高水长\r\n陪你一起生长\r\n远方灯火闪亮着光\r\n你一人低头在路上\r\n这城市越大越让人心慌\r\n多向往多漫长\r\n这一路经历太多伤\r\n把最初笑容都淡忘\r\n时光让我们变得\r\n脆弱且坚强\r\n让我再来轻轻对你唱\r\n我多想能多陪你一场\r\n把前半生的风景对你讲\r\n在每个寂静的夜里我会想\r\n那些关于你的爱恨情长\r\n我也想能够把你照亮\r\n在你的生命中留下阳光\r\n陪你走过那山高水长\r\n陪你一起生长\r\n这一生在你的风景里\r\n我是谁', '2019-10-07 07:36:48.088805');
INSERT INTO `blog_article` VALUES (10, 'Destiny', '歌手：Lovelyz', '너는 내 Destiny\r\n고개를 돌릴 수가 없어\r\n난 너만 보잖아\r\n너는 내 Destiny\r\n떠날 수 없어 난\r\n넌 나의 지구야 내 하루의 중심\r\n왜 자꾸 그녀만 맴도나요\r\n달처럼 그대를 도는 내가 있는데\r\n한 발짝 다가서지 못하는\r\n이런 맘 그대도 똑같잖아요\r\n오늘도 그녀 꿈을 꾸나요\r\n그댈 비춰주는 내가 있는데\r\n그렇게 그대의 하룬 또 끝나죠\r\n내겐 하루가 꼭 한 달 같은데\r\n그 꿈이 깨지길 이 밤을 깨우길\r\n잔잔한 그대 그 마음에\r\n파도가 치길\r\n너는 내 Destiny\r\n날 끄는 Gravity\r\n고개를 돌릴 수가 없어\r\n난 너만 보잖아\r\n너는 내 Destiny\r\n떠날 수 없어 난\r\n넌 나의 지구야 내 하루의 중심\r\n기울어진 그대의 마음엔\r\n계절이 불러온 온도차가 심한데\r\n늘 그댈 향한 나의 마음엔\r\n작은 바람 한 점 분 적 없어요\r\n눈부신 그대의 하루에는\r\n내가 들어갈 자리는 없나요\r\n그렇게 내 맘은 차고 또 기울죠\r\n내겐 한 달이 꼭 하루 같은데\r\n그 꿈이 깨지길 이 밤을 깨우길\r\n잔잔한 그대 그 마음에\r\n파도가 치길\r\n너는 내 Destiny\r\n날 끄는 Gravity\r\n고개를 돌릴 수가 없어\r\n난 너만 보잖아\r\n너는 내 Destiny\r\n떠날 수 없어 난\r\n넌 나의 지구야 내 하루의 중심\r\n한 번 난 그녀를 막고 서서\r\n빛의 반질 네게 주고 싶은데\r\n단 한 번 단 한 번\r\n그녀의 앞에 서서\r\n너의 낮을 날고 싶은데\r\n너는 내 Destiny\r\n날 끄는 Gravity\r\n고개를 돌릴 수가 없어\r\n난 너만 보잖아\r\n너는 내 Destiny\r\n떠날 수 없어 난\r\n넌 나의 지구야 내 하루의 중심', '2019-10-07 07:39:08.293060');
INSERT INTO `blog_article` VALUES (11, '男孩', '所有遗憾的 都不是未来\r\n所有爱 最后都难免', '曾经意外 他和她 相爱\r\n在不会 犹豫的时代\r\n以为明白\r\n所以爱得痛快\r\n一双手 紧紧放不开\r\n心中的 执着与未来\r\n忘不了 你的爱\r\n但结局难更改\r\n我没能把你留下来\r\n更不像他 能给你一个\r\n期待的 未来\r\n幼稚的男孩', '2019-10-07 07:40:00.728534');

SET FOREIGN_KEY_CHECKS = 1;
