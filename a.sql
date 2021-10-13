/*
 Navicat Premium Data Transfer

 Source Server         : localhostmysql
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : hm_shop_server

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 13/10/2021 15:18:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '家居生活');
INSERT INTO `category` VALUES (2, '摄影设计');
INSERT INTO `category` VALUES (3, '明星美女');
INSERT INTO `category` VALUES (4, '空间设计');
INSERT INTO `category` VALUES (5, '户型装饰');
INSERT INTO `category` VALUES (6, '广告摄影');
INSERT INTO `category` VALUES (7, '摄影学习');
INSERT INTO `category` VALUES (8, '摄影器材');
INSERT INTO `category` VALUES (9, '明星写真');
INSERT INTO `category` VALUES (10, '清纯甜美');
INSERT INTO `category` VALUES (11, '古典美女');
INSERT INTO `category` VALUES (12, '测试~');

-- ----------------------------
-- Table structure for category_item
-- ----------------------------
DROP TABLE IF EXISTS `category_item`;
CREATE TABLE `category_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `zhaiyao` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cateId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category_item
-- ----------------------------
INSERT INTO `category_item` VALUES (1, '忠县纪委监委聚焦权力运行', 'https://jjjcb.ccdi.gov.cn/epaper/group1/M00/00/3F/wKinmmFjGjSAN8qAAAIiYjh4rEk804.jpg', '忠县纪委监委聚焦权力运行的重要领域和关键环节', 1);
INSERT INTO `category_item` VALUES (2, '根据中央纪委国家监委要求', 'http://jjc.cq.gov.cn/images/2021-09/28/53079545-585c-4088-9726-a80f41a7d14d.jpg', '忠县纪委监委聚焦权力运行的重要领域和关键环节', 1);
INSERT INTO `category_item` VALUES (3, '忠县纪委监委聚焦权力运行', 'https://jjjcb.ccdi.gov.cn/epaper/group1/M00/00/3F/wKinmmFjGjSAN8qAAAIiYjh4rEk804.jpg', '忠县纪委监委聚焦权力运行的重要领域和关键环节', 2);
INSERT INTO `category_item` VALUES (4, '根据中央纪委国家监委要求', 'http://jjc.cq.gov.cn/images/2021-09/28/53079545-585c-4088-9726-a80f41a7d14d.jpg', '忠县纪委监委聚焦权力运行的重要领域和关键环节', 2);
INSERT INTO `category_item` VALUES (5, '忠县纪委监委聚焦权力运行', 'https://jjjcb.ccdi.gov.cn/epaper/group1/M00/00/3F/wKinmmFjGjSAN8qAAAIiYjh4rEk804.jpg', '忠县纪委监委聚焦权力运行的重要领域和关键环节', 3);
INSERT INTO `category_item` VALUES (6, '忠县纪委监委聚焦权力运行', 'https://jjjcb.ccdi.gov.cn/epaper/group1/M00/00/3F/wKinmmFjGjSAN8qAAAIiYjh4rEk804.jpg', '忠县纪委监委聚焦权力运行的重要领域和关键环节', 3);
INSERT INTO `category_item` VALUES (7, '忠县纪委监委聚焦权力运行', 'https://jjjcb.ccdi.gov.cn/epaper/group1/M00/00/3F/wKinmmFjGjSAN8qAAAIiYjh4rEk804.jpg', '忠县纪委监委聚焦权力运行的重要领域和关键环节', 4);
INSERT INTO `category_item` VALUES (8, '忠县纪委监委聚焦权力运行', 'https://jjjcb.ccdi.gov.cn/epaper/group1/M00/00/3F/wKinmmFjGjSAN8qAAAIiYjh4rEk804.jpg', '忠县纪委监委聚焦权力运行的重要领域和关键环节', 4);
INSERT INTO `category_item` VALUES (9, '忠县纪委监委聚焦权力运行', 'https://jjjcb.ccdi.gov.cn/epaper/group1/M00/00/3F/wKinmmFjGjSAN8qAAAIiYjh4rEk804.jpg', '忠县纪委监委聚焦权力运行的重要领域和关键环节', 5);
INSERT INTO `category_item` VALUES (10, '忠县纪委监委聚焦权力运行', 'https://jjjcb.ccdi.gov.cn/epaper/group1/M00/00/3F/wKinmmFjGjSAN8qAAAIiYjh4rEk804.jpg', '忠县纪委监委聚焦权力运行的重要领域和关键环节', 5);
INSERT INTO `category_item` VALUES (11, '忠县纪委监委聚焦权力运行', 'https://jjjcb.ccdi.gov.cn/epaper/group1/M00/00/3F/wKinmmFjGjSAN8qAAAIiYjh4rEk804.jpg', '忠县纪委监委聚焦权力运行的重要领域和关键环节', 6);
INSERT INTO `category_item` VALUES (12, '忠县纪委监委聚焦权力运行', 'https://jjjcb.ccdi.gov.cn/epaper/group1/M00/00/3F/wKinmmFjGjSAN8qAAAIiYjh4rEk804.jpg', '忠县纪委监委聚焦权力运行的重要领域和关键环节', 6);
INSERT INTO `category_item` VALUES (13, '忠县纪委监委聚焦权力运行', 'https://jjjcb.ccdi.gov.cn/epaper/group1/M00/00/3F/wKinmmFjGjSAN8qAAAIiYjh4rEk804.jpg', '忠县纪委监委聚焦权力运行的重要领域和关键环节', 7);
INSERT INTO `category_item` VALUES (14, '忠县纪委监委聚焦权力运行', 'https://jjjcb.ccdi.gov.cn/epaper/group1/M00/00/3F/wKinmmFjGjSAN8qAAAIiYjh4rEk804.jpg', '忠县纪委监委聚焦权力运行的重要领域和关键环节', 7);
INSERT INTO `category_item` VALUES (15, '忠县纪委监委聚焦权力运行', 'https://jjjcb.ccdi.gov.cn/epaper/group1/M00/00/3F/wKinmmFjGjSAN8qAAAIiYjh4rEk804.jpg', '忠县纪委监委聚焦权力运行的重要领域和关键环节', 7);
INSERT INTO `category_item` VALUES (16, '忠县纪委监委聚焦权力运行', 'https://jjjcb.ccdi.gov.cn/epaper/group1/M00/00/3F/wKinmmFjGjSAN8qAAAIiYjh4rEk804.jpg', '忠县纪委监委聚焦权力运行的重要领域和关键环节', 7);
INSERT INTO `category_item` VALUES (17, '忠县纪委监委聚焦权力运行', 'https://jjjcb.ccdi.gov.cn/epaper/group1/M00/00/3F/wKinmmFjGjSAN8qAAAIiYjh4rEk804.jpg', '忠县纪委监委聚焦权力运行的重要领域和关键环节', 12);
INSERT INTO `category_item` VALUES (18, '根据中央纪委国家监委要求', 'http://jjc.cq.gov.cn/images/2021-09/28/53079545-585c-4088-9726-a80f41a7d14d.jpg', '根据中央纪委国家监委要求', 12);
INSERT INTO `category_item` VALUES (19, '忠县纪委监委聚焦权力运行', 'https://jjjcb.ccdi.gov.cn/epaper/group1/M00/00/3F/wKinmmFjGjSAN8qAAAIiYjh4rEk804.jpg', '忠县纪委监委聚焦权力运行的重要领域和关键环节', 12);
INSERT INTO `category_item` VALUES (20, '忠县纪委监委聚焦权力运行', 'https://jjjcb.ccdi.gov.cn/epaper/group1/M00/00/3F/wKinmmFjGjSAN8qAAAIiYjh4rEk804.jpg', '忠县纪委监委聚焦权力运行的重要领域和关键环节', 12);

-- ----------------------------
-- Table structure for detail_swipers
-- ----------------------------
DROP TABLE IF EXISTS `detail_swipers`;
CREATE TABLE `detail_swipers`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detail_swipers
-- ----------------------------
INSERT INTO `detail_swipers` VALUES (1, 'https://img14.360buyimg.com/babel/s320x320_jfs/t1/115572/11/20620/85872/616155f5E56d9aa4f/c747a7d0f917476a.jpg!cc_320x320.webp', 1);
INSERT INTO `detail_swipers` VALUES (2, 'https://img20.360buyimg.com/babel/s320x320_jfs/t1/201116/8/10844/85818/61625ac0E15308ba1/46521b923a013285.jpg!cc_320x320.webp', 1);
INSERT INTO `detail_swipers` VALUES (3, 'https://img10.360buyimg.com/babel/s320x320_jfs/t1/200216/16/1212/222529/61090038Eef6d98e7/290f5a35d23cac5c.jpg!cc_320x320.webp', 2);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(0) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `zhaiyao` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `click` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sell_price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `market_price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `stock_quantity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '2021-10-12 09:35:00', '魅族 18s Pro 8GB+128GB', '魅族 18s Pro 8GB+128GB 飞雪流光 5G 骁龙888+ 支持40W无线超充 2K曲面屏 AR全场景大师影像系统 手机--魅族 18s Pro 8GB+128GB 飞雪流光 5G 骁龙888+ 支持40W无线超充 2K曲面屏 AR全场景大师影像系统 手机--魅族 18s Pro 8GB+128GB 飞雪流光 5G 骁龙888+ 支持40W无线超充 2K曲面屏 AR全场景大师影像系统 手机--魅族 18s Pro 8GB+128GB 飞雪流光 5G 骁龙888+ 支持40W无线超充 2K曲面屏 AR全场景大师影像系统 手机--魅族 18s Pro 8GB+128GB 飞雪流光 5G 骁龙888+ 支持40W无线超充 2K曲面屏 AR全场景大师影像系统 手机--魅族 18s Pro 8GB+128GB 飞雪流光 5G 骁龙888+ 支持40W无线超充 2K曲面屏 AR全场景大师影像系统 手机--魅族 18s Pro 8GB+128GB 飞雪流光 5G 骁龙888+ 支持40W无线超充 2K曲面屏 AR全场景大师影像系统 手机--魅族 18s Pro 8GB+128GB 飞雪流光 5G 骁龙888+ 支持40W无线超充 2K曲面屏 AR全场景大师影像系统 手机', '0', 'https://img14.360buyimg.com/babel/s320x320_jfs/t1/115572/11/20620/85872/616155f5E56d9aa4f/c747a7d0f917476a.jpg!cc_320x320.webp', '3999', '4299', '60');
INSERT INTO `goods` VALUES (2, '2021-10-06 09:35:00', '三星 SAMSUNG Galaxy Note20', '三星 SAMSUNG Galaxy Note20 Ultra 5G(SM-N9860)5G手机 S Pen&三星笔记 120Hz  游戏手机 12GB+256GB 迷雾金', '0', 'https://img20.360buyimg.com/babel/s320x320_jfs/t1/201116/8/10844/85818/61625ac0E15308ba1/46521b923a013285.jpg!cc_320x320.webp', '7599', '8199', '60');
INSERT INTO `goods` VALUES (3, '2021-10-12 09:35:00', '魅族 18s Pro 8GB+128GB', '魅族 18s Pro 8GB+128GB 飞雪流光 5G 骁龙888+ 支持40W无线超充 2K曲面屏 AR全场景大师影像系统 手机', '0', 'https://img14.360buyimg.com/babel/s320x320_jfs/t1/115572/11/20620/85872/616155f5E56d9aa4f/c747a7d0f917476a.jpg!cc_320x320.webp', '3999', '4299', '60');
INSERT INTO `goods` VALUES (4, '2021-10-06 09:35:00', '三星 SAMSUNG Galaxy Note20', '三星 SAMSUNG Galaxy Note20 Ultra 5G(SM-N9860)5G手机 S Pen&三星笔记 120Hz  游戏手机 12GB+256GB 迷雾金', '0', 'https://img20.360buyimg.com/babel/s320x320_jfs/t1/201116/8/10844/85818/61625ac0E15308ba1/46521b923a013285.jpg!cc_320x320.webp', '7599', '8199', '60');
INSERT INTO `goods` VALUES (5, '2021-10-12 09:35:00', '魅族 18s Pro 8GB+128GB', '魅族 18s Pro 8GB+128GB 飞雪流光 5G 骁龙888+ 支持40W无线超充 2K曲面屏 AR全场景大师影像系统 手机', '0', 'https://img14.360buyimg.com/babel/s320x320_jfs/t1/115572/11/20620/85872/616155f5E56d9aa4f/c747a7d0f917476a.jpg!cc_320x320.webp', '3999', '4299', '60');
INSERT INTO `goods` VALUES (6, '2021-10-06 09:35:00', '三星 SAMSUNG Galaxy Note20', '三星 SAMSUNG Galaxy Note20 Ultra 5G(SM-N9860)5G手机 S Pen&三星笔记 120Hz  游戏手机 12GB+256GB 迷雾金', '0', 'https://img20.360buyimg.com/babel/s320x320_jfs/t1/201116/8/10844/85818/61625ac0E15308ba1/46521b923a013285.jpg!cc_320x320.webp', '7599', '8199', '60');
INSERT INTO `goods` VALUES (7, '2021-10-12 09:35:00', '小米10S  骁龙870 ', '小米10S  骁龙870  哈曼卡顿对称式双扬立体声 8GB+256GB 蓝色 旗舰手机', '0', 'https://img30.360buyimg.com/babel/s320x320_jfs/t1/199574/22/12612/238445/6163a817E612d2bbe/169dc842b49564f2.jpg!cc_320x320.webp', '3199', '3999', '60');
INSERT INTO `goods` VALUES (8, '2021-10-06 09:35:00', '三星 SAMSUNG Galaxy Note20', '三星 SAMSUNG Galaxy Note20 Ultra 5G(SM-N9860)5G手机 S Pen&三星笔记 120Hz  游戏手机 12GB+256GB 迷雾金', '0', 'https://img20.360buyimg.com/babel/s320x320_jfs/t1/201116/8/10844/85818/61625ac0E15308ba1/46521b923a013285.jpg!cc_320x320.webp', '7599', '8199', '60');
INSERT INTO `goods` VALUES (9, '2021-10-12 09:35:00', '魅族 18s Pro 8GB+128GB', '魅族 18s Pro 8GB+128GB 飞雪流光 5G 骁龙888+ 支持40W无线超充 2K曲面屏 AR全场景大师影像系统 手机', '0', 'https://img14.360buyimg.com/babel/s320x320_jfs/t1/115572/11/20620/85872/616155f5E56d9aa4f/c747a7d0f917476a.jpg!cc_320x320.webp', '3999', '4299', '60');
INSERT INTO `goods` VALUES (10, '2021-10-06 09:35:00', '三星 SAMSUNG Galaxy Note20', '三星 SAMSUNG Galaxy Note20 Ultra 5G(SM-N9860)5G手机 S Pen&三星笔记 120Hz  游戏手机 12GB+256GB 迷雾金', '0', 'https://img20.360buyimg.com/babel/s320x320_jfs/t1/201116/8/10844/85818/61625ac0E15308ba1/46521b923a013285.jpg!cc_320x320.webp', '7599', '8199', '60');
INSERT INTO `goods` VALUES (11, '2021-10-12 09:35:00', '魅族 18s Pro 8GB+128GB', '魅族 18s Pro 8GB+128GB 飞雪流光 5G 骁龙888+ 支持40W无线超充 2K曲面屏 AR全场景大师影像系统 手机', '0', 'https://img14.360buyimg.com/babel/s320x320_jfs/t1/115572/11/20620/85872/616155f5E56d9aa4f/c747a7d0f917476a.jpg!cc_320x320.webp', '3999', '4299', '60');
INSERT INTO `goods` VALUES (12, '2021-10-06 09:35:00', '三星 SAMSUNG Galaxy Note20', '三星 SAMSUNG Galaxy Note20 Ultra 5G(SM-N9860)5G手机 S Pen&三星笔记 120Hz  游戏手机 12GB+256GB 迷雾金', '0', 'https://img20.360buyimg.com/babel/s320x320_jfs/t1/201116/8/10844/85818/61625ac0E15308ba1/46521b923a013285.jpg!cc_320x320.webp', '7599', '8199', '60');
INSERT INTO `goods` VALUES (13, '2021-10-11 09:35:00', '荣耀X20 ', '荣耀X20 66W超级快充 120Hz高刷屏 6400万超清影像 4300mAh 全网通版 8GB+128GB 钛空银', '0', 'https://img10.360buyimg.com/babel/s320x320_jfs/t1/200216/16/1212/222529/61090038Eef6d98e7/290f5a35d23cac5c.jpg!cc_320x320.webp', '2189', '2399', '60');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `add_time` datetime(0) DEFAULT NULL,
  `zhaiyao` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `click` int(11) DEFAULT NULL,
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '校场：已沦为中等强国的英国如何强硬影响国际军贸', '2021-10-13 10:05:34', '<p>当今世界五个常任理事国中，总有两个会让人觉得名不副实。</p><h3>这就是英国和法国</h3>', 11, 'https://n.sinaimg.cn/mil/transform/122/w550h372/20211012/9f1f-e0c9d97c32fbc4b01fe02ad1def01ea3.png');
INSERT INTO `news` VALUES (2, '开幕！陆军举行首届无人机专业定向培养士官技能竞赛', '2021-10-11 10:05:56', '此次竞赛由陆军政治工作部主办，陆军工程大学军械士官学校与武昌职业学院联合承办', 18, 'https://n.sinaimg.cn/mil/crawl/117/w550h367/20211013/3aa4-6b18c8484c604a0497323dd57a48257a.jpg');
INSERT INTO `news` VALUES (3, '校场：已沦为中等强国的英国如何强硬影响国际军贸', '2021-10-13 10:05:34', '当今世界五个常任理事国中，总有两个会让人觉得名不副实，这就是英国和法国', 11, 'https://n.sinaimg.cn/mil/transform/122/w550h372/20211012/9f1f-e0c9d97c32fbc4b01fe02ad1def01ea3.png');
INSERT INTO `news` VALUES (4, '开幕！陆军举行首届无人机专业定向培养士官技能竞赛', '2021-10-11 10:05:56', '此次竞赛由陆军政治工作部主办，陆军工程大学军械士官学校与武昌职业学院联合承办', 18, 'https://n.sinaimg.cn/mil/crawl/117/w550h367/20211013/3aa4-6b18c8484c604a0497323dd57a48257a.jpg');
INSERT INTO `news` VALUES (5, '校场：已沦为中等强国的英国如何强硬影响国际军贸', '2021-10-13 10:05:34', '当今世界五个常任理事国中，总有两个会让人觉得名不副实，这就是英国和法国', 11, 'https://n.sinaimg.cn/mil/transform/122/w550h372/20211012/9f1f-e0c9d97c32fbc4b01fe02ad1def01ea3.png');
INSERT INTO `news` VALUES (6, '开幕！陆军举行首届无人机专业定向培养士官技能竞赛', '2021-10-11 10:05:56', '此次竞赛由陆军政治工作部主办，陆军工程大学军械士官学校与武昌职业学院联合承办', 18, 'https://n.sinaimg.cn/mil/crawl/117/w550h367/20211013/3aa4-6b18c8484c604a0497323dd57a48257a.jpg');
INSERT INTO `news` VALUES (7, '校场：已沦为中等强国的英国如何强硬影响国际军贸', '2021-10-13 10:05:34', '当今世界五个常任理事国中，总有两个会让人觉得名不副实，这就是英国和法国', 11, 'https://n.sinaimg.cn/mil/transform/122/w550h372/20211012/9f1f-e0c9d97c32fbc4b01fe02ad1def01ea3.png');
INSERT INTO `news` VALUES (8, '开幕！陆军举行首届无人机专业定向培养士官技能竞赛', '2021-10-11 10:05:56', '此次竞赛由陆军政治工作部主办，陆军工程大学军械士官学校与武昌职业学院联合承办', 18, 'https://n.sinaimg.cn/mil/crawl/117/w550h367/20211013/3aa4-6b18c8484c604a0497323dd57a48257a.jpg');
INSERT INTO `news` VALUES (9, '校场：已沦为中等强国的英国如何强硬影响国际军贸', '2021-10-13 10:05:34', '当今世界五个常任理事国中，总有两个会让人觉得名不副实，这就是英国和法国', 11, 'https://n.sinaimg.cn/mil/transform/122/w550h372/20211012/9f1f-e0c9d97c32fbc4b01fe02ad1def01ea3.png');
INSERT INTO `news` VALUES (10, '开幕！陆军举行首届无人机专业定向培养士官技能竞赛', '2021-10-11 10:05:56', '此次竞赛由陆军政治工作部主办，陆军工程大学军械士官学校与武昌职业学院联合承办', 18, 'https://n.sinaimg.cn/mil/crawl/117/w550h367/20211013/3aa4-6b18c8484c604a0497323dd57a48257a.jpg');
INSERT INTO `news` VALUES (11, '校场：已沦为中等强国的英国如何强硬影响国际军贸', '2021-10-13 10:05:34', '当今世界五个常任理事国中，总有两个会让人觉得名不副实，这就是英国和法国', 11, 'https://n.sinaimg.cn/mil/transform/122/w550h372/20211012/9f1f-e0c9d97c32fbc4b01fe02ad1def01ea3.png');
INSERT INTO `news` VALUES (12, '开幕！陆军举行首届无人机专业定向培养士官技能竞赛', '2021-10-11 10:05:56', '此次竞赛由陆军政治工作部主办，陆军工程大学军械士官学校与武昌职业学院联合承办', 18, 'https://n.sinaimg.cn/mil/crawl/117/w550h367/20211013/3aa4-6b18c8484c604a0497323dd57a48257a.jpg');
INSERT INTO `news` VALUES (13, '美媒：F35航电系统领先F22十年 只有歼20能匹敌', '2021-10-12 10:06:47', '据美国媒体《军事观察》网站报道，美国是世界上第一个部署第五代战斗机的国家，首架F-22“猛禽”于2005年12月服役，9年之后，美军的第二款五代机F-35服役', 32, 'https://n.sinaimg.cn/mil/transform/52/w550h302/20211011/5d6e-1e6633f6d1e45477ad73840e1f581484.png');

-- ----------------------------
-- Table structure for swipers
-- ----------------------------
DROP TABLE IF EXISTS `swipers`;
CREATE TABLE `swipers`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of swipers
-- ----------------------------
INSERT INTO `swipers` VALUES (1, 'http://www.itcast.cn/subject/phoneweb/index.html', 'http://m.itheima.com/images/slidead/mobile/20191213180241750x410.jpg');
INSERT INTO `swipers` VALUES (2, 'http://www.itcast.cn/subject/phoneweb/index.html', 'http://m.itheima.com/images/slidead/mobile/20191210154717750-410.jpg');
INSERT INTO `swipers` VALUES (3, 'http://www.itcast.cn/subject/phoneweb/index.html', 'http://m.itheima.com/images/slidead/mobile/20190327135101750x410-%E4%BC%A0%E6%99%BA%E9%BB%91%E9%A9%AC%E7%A7%BB%E5%8A%A8%E7%AB%AF%E5%B9%BB%E7%81%AF.jpg');

SET FOREIGN_KEY_CHECKS = 1;
