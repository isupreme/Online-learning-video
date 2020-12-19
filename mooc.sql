/*
 Navicat MySQL Data Transfer

 Source Server         : db_video
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : localhost:3306
 Source Schema         : mooc

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 19/12/2020 10:38:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `context` varchar(500) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `label` varchar(100) DEFAULT NULL,
  `hour` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
BEGIN;
INSERT INTO `course` VALUES (1, 'Python', 'Python', '1', '0', '一般', 20);
INSERT INTO `course` VALUES (2, '神经网络', '神经网络', '0', '0', '不错', 6);
INSERT INTO `course` VALUES (3, 'pxc集群', 'pxc集群', '1', '0', '还行', 5);
INSERT INTO `course` VALUES (4, 'Python爬虫', 'Python爬虫技巧', '0', '0', '还行', 12);
INSERT INTO `course` VALUES (5, 'java', 'java基础入门', '1', '0', '一般', 15);
INSERT INTO `course` VALUES (6, 'Python爬虫2', 'Python爬虫2', '0', '0', '一般', 18);
INSERT INTO `course` VALUES (7, '微信小程序', '微信小程序', '1', '0', '不错', 7);
COMMIT;

-- ----------------------------
-- Table structure for ipset
-- ----------------------------
DROP TABLE IF EXISTS `ipset`;
CREATE TABLE `ipset` (
  `ip` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) DEFAULT NULL,
  `mark` varchar(255) DEFAULT NULL,
  `firsttime` datetime DEFAULT NULL,
  `bantime` datetime DEFAULT NULL,
  `totime` datetime DEFAULT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ipset
-- ----------------------------
BEGIN;
INSERT INTO `ipset` VALUES ('0:0:0:0:0:0:0:1', NULL, NULL, '2018-10-27 20:00:34', NULL, '2020-12-17 20:00:23');
INSERT INTO `ipset` VALUES ('127.0.0.1', '0', '多次测试未知账户！', '2018-10-16 11:57:36', '2020-12-18 01:49:49', '2020-12-18 02:42:58');
INSERT INTO `ipset` VALUES ('172.162.1.125', '0', '多次测试未知账户！', '2018-10-16 18:34:05', '2018-10-16 18:39:14', '2018-10-16 18:34:05');
INSERT INTO `ipset` VALUES ('172.162.1.40', '0', '恶意登陆管理员账号！', '2018-10-16 14:11:35', '2117-10-16 19:00:29', '2018-10-16 19:05:29');
INSERT INTO `ipset` VALUES ('172.162.1.41', '1', '多次测试未知账户！', '2018-10-16 12:00:48', '2018-10-17 19:21:21', '2018-10-16 19:20:43');
INSERT INTO `ipset` VALUES ('172.162.1.42', '0', '多次测试未知账户！', '2018-10-16 14:09:01', '2018-10-17 18:57:18', '2018-10-17 19:22:21');
INSERT INTO `ipset` VALUES ('172.162.1.43', '0', '多次测试未知账户！', '2018-10-16 12:00:30', '2018-10-16 19:24:00', '2018-10-16 14:04:47');
INSERT INTO `ipset` VALUES ('172.162.1.44', '1', '多次测试未知账户！', '2018-10-16 15:09:06', '2018-10-16 19:26:04', '2018-10-16 19:19:24');
INSERT INTO `ipset` VALUES ('172.162.1.87', '1', '多次测试未知账户！', '2018-10-16 19:08:26', '2018-10-16 19:25:58', '2018-10-16 19:09:36');
COMMIT;

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `executor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=300 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
BEGIN;
INSERT INTO `log` VALUES (1, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2018-10-15 15:13:46', NULL);
INSERT INTO `log` VALUES (2, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2018-10-15 15:15:57', 'admin');
INSERT INTO `log` VALUES (3, '20151612204', 'admin', '充值500元', '0:0:0:0:0:0:0:1', '2018-10-15 15:16:53', 'admin');
INSERT INTO `log` VALUES (4, '201808231058301205', '1823544517', '充值10000元', '0:0:0:0:0:0:0:1', '2018-10-15 15:18:02', 'admin');
INSERT INTO `log` VALUES (5, '201808231058301205', '1823544517', '屏蔽用户登录', '0:0:0:0:0:0:0:1', '2018-10-15 15:18:12', 'admin');
INSERT INTO `log` VALUES (6, '201808231058301205', '1823544517', '恢复用户登录', '0:0:0:0:0:0:0:1', '2018-10-15 15:19:10', 'admin');
INSERT INTO `log` VALUES (7, '201808231058301205', '1823544517', '登录', '127.0.0.1', '2018-10-15 15:19:15', NULL);
INSERT INTO `log` VALUES (8, '201808231058301205', '1823544517', '订阅课程:1024设计', '127.0.0.1', '2018-10-15 15:19:20', NULL);
INSERT INTO `log` VALUES (9, '201808231058301205', '1823544517', '购买会员：一年', '127.0.0.1', '2018-10-15 15:31:58', NULL);
INSERT INTO `log` VALUES (10, '201808231058301205', '1823544517', '登录', '127.0.0.1', '2018-10-15 16:12:09', NULL);
INSERT INTO `log` VALUES (11, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2018-10-15 21:45:02', 'admin');
INSERT INTO `log` VALUES (12, '201808231058301205', '1823544517', '登录', '127.0.0.1', '2018-10-15 21:49:02', NULL);
INSERT INTO `log` VALUES (13, NULL, NULL, '下架课程：Python', '0:0:0:0:0:0:0:1', '2018-10-15 21:49:27', 'admin');
INSERT INTO `log` VALUES (14, NULL, NULL, '上架课程：Python', '0:0:0:0:0:0:0:1', '2018-10-15 21:49:37', 'admin');
INSERT INTO `log` VALUES (15, NULL, NULL, '下架课程：Python', '0:0:0:0:0:0:0:1', '2018-10-15 21:49:44', 'admin');
INSERT INTO `log` VALUES (16, NULL, NULL, '尝试登录账号:asdawdasdwqweqwrqwe，密码错误', '127.0.0.1', '2018-10-16 10:08:03', NULL);
INSERT INTO `log` VALUES (17, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-16 10:08:48', 'admin');
INSERT INTO `log` VALUES (18, '201808231058301205', '1823544517', '登录', '127.0.0.1', '2018-10-16 10:10:17', NULL);
INSERT INTO `log` VALUES (19, '201810161045371069', 'abc', '普通注册', '172.162.1.44', '2018-10-16 10:37:45', NULL);
INSERT INTO `log` VALUES (20, '201810161045371069', 'abc', '登录', '172.162.1.44', '2018-10-16 10:38:12', NULL);
INSERT INTO `log` VALUES (21, '201810161045371069', 'abc', '购买会员：一个月', '172.162.1.44', '2018-10-16 10:38:27', NULL);
INSERT INTO `log` VALUES (22, '201810161045371069', 'abc', '订阅课程:1024设计', '172.162.1.44', '2018-10-16 10:39:07', NULL);
INSERT INTO `log` VALUES (23, '201810161045371069', 'abc', '个人信息更改', '172.162.1.44', '2018-10-16 10:40:49', NULL);
INSERT INTO `log` VALUES (24, '201810161045371069', 'abc', '个人信息更改', '172.162.1.44', '2018-10-16 10:40:57', NULL);
INSERT INTO `log` VALUES (25, '201808231058301205', '1823544517', '登录', '127.0.0.1', '2018-10-16 10:41:17', NULL);
INSERT INTO `log` VALUES (26, '201810161045371069', 'abc', '取消课程：1024设计', '172.162.1.44', '2018-10-16 10:41:32', NULL);
INSERT INTO `log` VALUES (27, '201810161045371069', 'abc', '个人信息更改', '172.162.1.44', '2018-10-16 10:43:15', NULL);
INSERT INTO `log` VALUES (28, '201810161045371069', 'abc', '充值10000元', '127.0.0.1', '2018-10-16 10:44:50', 'admin');
INSERT INTO `log` VALUES (29, '201810161045371069', 'abc', '购买会员：一年', '172.162.1.44', '2018-10-16 10:45:04', NULL);
INSERT INTO `log` VALUES (30, '201810161045371069', 'abc', '购买会员：半年', '172.162.1.44', '2018-10-16 10:45:07', NULL);
INSERT INTO `log` VALUES (31, '201810161045371069', 'abc', '购买会员：一个月', '172.162.1.44', '2018-10-16 10:45:11', NULL);
INSERT INTO `log` VALUES (32, '201810161045371069', 'abc', '购买会员：一个月', '172.162.1.44', '2018-10-16 10:45:13', NULL);
INSERT INTO `log` VALUES (33, '201810161045371069', 'abc', '购买会员：一个月', '172.162.1.44', '2018-10-16 10:45:15', NULL);
INSERT INTO `log` VALUES (34, '201810161045371069', 'abc', '购买会员：一个月', '172.162.1.44', '2018-10-16 10:45:16', NULL);
INSERT INTO `log` VALUES (35, '201810161045371069', 'abc', '购买会员：半年', '172.162.1.44', '2018-10-16 10:46:02', NULL);
INSERT INTO `log` VALUES (36, '201810161045371069', 'abc', '购买会员：一个月', '172.162.1.44', '2018-10-16 10:46:05', NULL);
INSERT INTO `log` VALUES (37, '201810161045371069', 'abc', '购买会员：一个月', '172.162.1.44', '2018-10-16 10:46:07', NULL);
INSERT INTO `log` VALUES (38, '201810161045371069', 'abc', '注销', '172.162.1.44', '2018-10-16 10:46:24', NULL);
INSERT INTO `log` VALUES (39, NULL, NULL, '尝试登录账号:admin，密码错误', '172.162.1.44', '2018-10-16 10:46:52', NULL);
INSERT INTO `log` VALUES (40, '20151612204', 'admin', '注销', '127.0.0.1', '2018-10-16 10:47:40', 'admin');
INSERT INTO `log` VALUES (41, NULL, NULL, '尝试登录账号:admin，密码错误', '127.0.0.1', '2018-10-16 10:47:50', NULL);
INSERT INTO `log` VALUES (42, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-16 10:48:09', 'admin');
INSERT INTO `log` VALUES (43, '201808231058301205', '1823544517', '登录', '172.162.1.42', '2018-10-16 14:09:19', NULL);
INSERT INTO `log` VALUES (44, '201808231058301205', '1823544517', '订阅课程:Python爬虫', '172.162.1.42', '2018-10-16 14:09:32', NULL);
INSERT INTO `log` VALUES (45, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-16 14:34:55', 'admin');
INSERT INTO `log` VALUES (46, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-16 14:47:31', 'admin');
INSERT INTO `log` VALUES (47, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-16 15:02:14', 'admin');
INSERT INTO `log` VALUES (48, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-16 15:06:45', 'admin');
INSERT INTO `log` VALUES (49, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-16 15:07:24', 'admin');
INSERT INTO `log` VALUES (50, '201808231058301205', '1823544517', '登录', '127.0.0.1', '2018-10-16 15:22:23', NULL);
INSERT INTO `log` VALUES (51, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-16 15:27:01', 'admin');
INSERT INTO `log` VALUES (52, '201808231058301205', '1823544517', '登录', '127.0.0.1', '2018-10-16 15:27:30', NULL);
INSERT INTO `log` VALUES (53, '201808231058301205', '1823544517', '发表评论，在\'null\'', '127.0.0.1', '2018-10-16 15:27:45', NULL);
INSERT INTO `log` VALUES (54, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-16 15:29:20', 'admin');
INSERT INTO `log` VALUES (55, '201808231058301205', '1823544517', '登录', '127.0.0.1', '2018-10-16 15:30:13', NULL);
INSERT INTO `log` VALUES (56, '201808231058301205', '1823544517', '发表评论，在\'Python爬虫\'', '127.0.0.1', '2018-10-16 15:30:22', NULL);
INSERT INTO `log` VALUES (57, '201810161045371069', 'abc', '登录', '172.162.1.44', '2018-10-16 15:34:59', NULL);
INSERT INTO `log` VALUES (58, '201810161045371069', 'abc', '订阅课程:1024设计', '172.162.1.44', '2018-10-16 15:35:05', NULL);
INSERT INTO `log` VALUES (59, '201810161045371069', 'abc', '发表评论，在\'1024设计\'', '172.162.1.44', '2018-10-16 15:35:30', NULL);
INSERT INTO `log` VALUES (60, '201810161045371069', 'abc', '取消课程：1024设计', '172.162.1.44', '2018-10-16 15:36:28', NULL);
INSERT INTO `log` VALUES (61, '201810161045371069', 'abc', '屏蔽用户登录', '127.0.0.1', '2018-10-16 15:36:47', 'admin');
INSERT INTO `log` VALUES (62, '201810161045371069', 'abc', '订阅课程:Python入门', '172.162.1.44', '2018-10-16 15:37:03', NULL);
INSERT INTO `log` VALUES (63, '201810161045371069', 'abc', '注销', '172.162.1.44', '2018-10-16 15:37:11', NULL);
INSERT INTO `log` VALUES (64, '201810161045371069', 'abc', '恢复用户登录', '127.0.0.1', '2018-10-16 15:37:22', 'admin');
INSERT INTO `log` VALUES (65, '201810161045371069', 'abc', '登录', '172.162.1.44', '2018-10-16 15:37:27', NULL);
INSERT INTO `log` VALUES (66, '201808231058301205', '1823544517', '注销', '127.0.0.1', '2018-10-16 15:42:47', NULL);
INSERT INTO `log` VALUES (67, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-16 17:11:30', 'admin');
INSERT INTO `log` VALUES (68, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-16 17:12:28', 'admin');
INSERT INTO `log` VALUES (69, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-16 17:27:45', 'admin');
INSERT INTO `log` VALUES (70, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-16 17:28:48', 'admin');
INSERT INTO `log` VALUES (71, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-16 17:29:32', 'admin');
INSERT INTO `log` VALUES (72, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-16 17:31:06', 'admin');
INSERT INTO `log` VALUES (73, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-16 17:40:19', 'admin');
INSERT INTO `log` VALUES (74, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-16 17:44:57', 'admin');
INSERT INTO `log` VALUES (75, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-16 17:47:35', 'admin');
INSERT INTO `log` VALUES (76, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-16 17:48:23', 'admin');
INSERT INTO `log` VALUES (77, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-16 18:18:24', 'admin');
INSERT INTO `log` VALUES (78, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-16 18:21:29', 'admin');
INSERT INTO `log` VALUES (79, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-16 18:27:53', 'admin');
INSERT INTO `log` VALUES (80, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-16 18:53:35', 'admin');
INSERT INTO `log` VALUES (81, NULL, NULL, '尝试登录账号:96321，密码错误', '172.162.1.40', '2018-10-16 19:01:02', NULL);
INSERT INTO `log` VALUES (82, NULL, NULL, '尝试登录账号:96321，密码错误', '172.162.1.40', '2018-10-16 19:01:24', NULL);
INSERT INTO `log` VALUES (83, '201810161901381601', '96321', '普通注册', '172.162.1.40', '2018-10-16 19:01:38', NULL);
INSERT INTO `log` VALUES (84, '201810161901381601', '96321', '屏蔽用户登录', '127.0.0.1', '2018-10-16 19:01:50', 'admin');
INSERT INTO `log` VALUES (85, '201810161901381601', '96321', '恢复用户登录', '127.0.0.1', '2018-10-16 19:01:55', 'admin');
INSERT INTO `log` VALUES (86, '201810161901381601', '96321', '登录', '172.162.1.40', '2018-10-16 19:02:03', NULL);
INSERT INTO `log` VALUES (87, '201810161901381601', '96321', '个人信息更改', '172.162.1.40', '2018-10-16 19:02:33', NULL);
INSERT INTO `log` VALUES (88, '201810161901381601', '96321', '订阅课程:Python入门', '172.162.1.40', '2018-10-16 19:02:41', NULL);
INSERT INTO `log` VALUES (89, '201810161901381601', '96321', '发表评论，在\'Python入门\'', '172.162.1.40', '2018-10-16 19:02:56', NULL);
INSERT INTO `log` VALUES (90, '201810161901381601', '96321', '取消课程：Python入门', '172.162.1.40', '2018-10-16 19:03:08', NULL);
INSERT INTO `log` VALUES (91, '201810161901381601', '96321', '购买会员：一个月', '172.162.1.40', '2018-10-16 19:03:40', NULL);
INSERT INTO `log` VALUES (92, '201810161901381601', '96321', '订阅课程:Python爬虫2', '172.162.1.40', '2018-10-16 19:03:46', NULL);
INSERT INTO `log` VALUES (93, '201810161901381601', '96321', '发表评论，在\'Python爬虫2\'', '172.162.1.40', '2018-10-16 19:03:55', NULL);
INSERT INTO `log` VALUES (94, '201810161901381601', '96321', '个人信息更改', '172.162.1.40', '2018-10-16 19:04:36', NULL);
INSERT INTO `log` VALUES (95, '201810161901381601', '96321', '注销', '172.162.1.40', '2018-10-16 19:05:29', NULL);
INSERT INTO `log` VALUES (96, '20151612204', 'admin', '登录', '172.162.1.44', '2018-10-16 19:15:49', 'admin');
INSERT INTO `log` VALUES (97, '20151612204', 'admin', '登录', '172.162.1.44', '2018-10-16 19:18:37', 'admin');
INSERT INTO `log` VALUES (98, '20151612204', 'admin', '登录', '172.162.1.44', '2018-10-16 19:19:04', 'admin');
INSERT INTO `log` VALUES (99, '20151612204', 'admin', '登录', '172.162.1.41', '2018-10-16 19:20:27', 'admin');
INSERT INTO `log` VALUES (100, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-16 19:20:55', 'admin');
INSERT INTO `log` VALUES (101, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-17 15:50:41', NULL);
INSERT INTO `log` VALUES (102, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-17 15:51:46', 'admin');
INSERT INTO `log` VALUES (103, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-17 15:52:31', NULL);
INSERT INTO `log` VALUES (104, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-17 18:55:21', 'admin');
INSERT INTO `log` VALUES (105, NULL, NULL, '尝试登录账号:admin，密码错误', '0:0:0:0:0:0:0:1', '2018-10-27 20:01:49', NULL);
INSERT INTO `log` VALUES (106, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2018-10-27 20:01:57', 'admin');
INSERT INTO `log` VALUES (107, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-29 10:30:06', 'admin');
INSERT INTO `log` VALUES (108, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-29 10:46:37', 'admin');
INSERT INTO `log` VALUES (109, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-29 14:30:47', 'admin');
INSERT INTO `log` VALUES (110, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-29 14:35:21', 'admin');
INSERT INTO `log` VALUES (111, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-29 14:48:57', 'admin');
INSERT INTO `log` VALUES (112, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-29 14:51:52', 'admin');
INSERT INTO `log` VALUES (113, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-29 14:52:54', 'admin');
INSERT INTO `log` VALUES (114, NULL, NULL, '删除课程：张三', '127.0.0.1', '2018-10-29 14:53:07', 'admin');
INSERT INTO `log` VALUES (115, NULL, NULL, '删除课程：张三', '127.0.0.1', '2018-10-29 14:53:16', 'admin');
INSERT INTO `log` VALUES (116, NULL, NULL, '删除课程：张三', '127.0.0.1', '2018-10-29 14:53:22', 'admin');
INSERT INTO `log` VALUES (117, NULL, NULL, '删除课程：张三', '127.0.0.1', '2018-10-29 14:53:29', 'admin');
INSERT INTO `log` VALUES (118, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-29 15:22:11', 'admin');
INSERT INTO `log` VALUES (119, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-29 15:23:42', 'admin');
INSERT INTO `log` VALUES (120, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-29 15:24:57', 'admin');
INSERT INTO `log` VALUES (121, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-29 15:51:24', 'admin');
INSERT INTO `log` VALUES (122, '20151612204', 'admin', '登录', '127.0.0.1', '2018-10-29 15:53:23', 'admin');
INSERT INTO `log` VALUES (123, NULL, NULL, '上架课程：123123', '127.0.0.1', '2018-10-29 15:54:04', 'admin');
INSERT INTO `log` VALUES (124, NULL, NULL, '下架课程：123123', '127.0.0.1', '2018-10-29 15:54:17', 'admin');
INSERT INTO `log` VALUES (125, NULL, NULL, '删除课程：123123', '127.0.0.1', '2018-10-29 15:54:34', 'admin');
INSERT INTO `log` VALUES (126, '20151612204', 'admin', '发表评论，在\'Python入门\'', '127.0.0.1', '2018-10-29 16:09:50', NULL);
INSERT INTO `log` VALUES (127, NULL, NULL, '尝试登录账号:admin，密码错误', '0:0:0:0:0:0:0:1', '2020-12-15 20:24:37', NULL);
INSERT INTO `log` VALUES (128, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2020-12-15 20:25:05', NULL);
INSERT INTO `log` VALUES (129, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2020-12-15 20:34:02', NULL);
INSERT INTO `log` VALUES (130, '20151612204', 'admin', '取消课程：java', '0:0:0:0:0:0:0:1', '2020-12-15 20:34:41', NULL);
INSERT INTO `log` VALUES (131, '201808100710171565', 'admin1', '登录', '0:0:0:0:0:0:0:1', '2020-12-15 20:36:00', NULL);
INSERT INTO `log` VALUES (132, '201808100710171565', 'admin1', '注销', '0:0:0:0:0:0:0:1', '2020-12-15 20:38:30', NULL);
INSERT INTO `log` VALUES (133, '201808100710171565', 'admin1', '登录', '0:0:0:0:0:0:0:1', '2020-12-15 20:38:40', NULL);
INSERT INTO `log` VALUES (134, '201808100710171565', 'admin1', '订阅课程:java', '0:0:0:0:0:0:0:1', '2020-12-15 20:38:45', NULL);
INSERT INTO `log` VALUES (135, '201808100710171565', 'admin1', '注销', '0:0:0:0:0:0:0:1', '2020-12-15 20:39:55', NULL);
INSERT INTO `log` VALUES (136, '201808101154331492', 'test', '登录', '0:0:0:0:0:0:0:1', '2020-12-15 20:40:07', NULL);
INSERT INTO `log` VALUES (137, '201808101154331492', 'test', '注销', '0:0:0:0:0:0:0:1', '2020-12-15 20:44:10', NULL);
INSERT INTO `log` VALUES (138, '201808101154331492', 'test', '登录', '0:0:0:0:0:0:0:1', '2020-12-15 20:51:33', NULL);
INSERT INTO `log` VALUES (139, '201808100710171565', 'admin1', '登录', '0:0:0:0:0:0:0:1', '2020-12-15 21:14:29', NULL);
INSERT INTO `log` VALUES (140, '201808100710171565', 'admin1', '取消课程：java', '0:0:0:0:0:0:0:1', '2020-12-15 21:14:49', NULL);
INSERT INTO `log` VALUES (141, '201808100710171565', 'admin1', '登录', '0:0:0:0:0:0:0:1', '2020-12-15 21:21:51', NULL);
INSERT INTO `log` VALUES (142, '201808100710171565', 'admin1', '订阅课程:Python爬虫', '0:0:0:0:0:0:0:1', '2020-12-15 21:21:54', NULL);
INSERT INTO `log` VALUES (143, '201808100710171565', 'admin1', '订阅课程:Python入门', '0:0:0:0:0:0:0:1', '2020-12-15 21:27:29', NULL);
INSERT INTO `log` VALUES (144, '201808100710171565', 'admin1', '订阅课程:Python爬虫2', '0:0:0:0:0:0:0:1', '2020-12-15 21:33:55', NULL);
INSERT INTO `log` VALUES (145, '201808100710171565', 'admin1', '取消课程：Python爬虫2', '0:0:0:0:0:0:0:1', '2020-12-15 22:54:22', NULL);
INSERT INTO `log` VALUES (146, '201808100710171565', 'admin1', '登录', '0:0:0:0:0:0:0:1', '2020-12-15 22:54:45', NULL);
INSERT INTO `log` VALUES (147, '201808100710171565', 'admin1', '订阅课程:Python爬虫2', '0:0:0:0:0:0:0:1', '2020-12-15 22:55:04', NULL);
INSERT INTO `log` VALUES (148, '201808100710171565', 'admin1', '取消课程：Python爬虫2', '0:0:0:0:0:0:0:1', '2020-12-15 22:55:23', NULL);
INSERT INTO `log` VALUES (149, '201808100710171565', 'admin1', '订阅课程:Python爬虫2', '0:0:0:0:0:0:0:1', '2020-12-15 22:55:32', NULL);
INSERT INTO `log` VALUES (150, '201808100710171565', 'admin1', '取消课程：Python爬虫2', '0:0:0:0:0:0:0:1', '2020-12-15 22:55:58', NULL);
INSERT INTO `log` VALUES (151, '201808100710171565', 'admin1', '订阅课程:Python爬虫2', '0:0:0:0:0:0:0:1', '2020-12-15 22:56:04', NULL);
INSERT INTO `log` VALUES (152, '201808100710171565', 'admin1', '取消课程：Python爬虫2', '0:0:0:0:0:0:0:1', '2020-12-15 22:57:28', NULL);
INSERT INTO `log` VALUES (153, '201808100710171565', 'admin1', '登录', '0:0:0:0:0:0:0:1', '2020-12-15 23:09:34', NULL);
INSERT INTO `log` VALUES (154, '201808100710171565', 'admin1', '订阅课程:Python爬虫2', '0:0:0:0:0:0:0:1', '2020-12-15 23:09:40', NULL);
INSERT INTO `log` VALUES (155, '201808100710171565', 'admin1', '登录', '0:0:0:0:0:0:0:1', '2020-12-15 23:10:45', NULL);
INSERT INTO `log` VALUES (156, '201808100710171565', 'admin1', '取消课程：Python爬虫2', '0:0:0:0:0:0:0:1', '2020-12-15 23:10:52', NULL);
INSERT INTO `log` VALUES (157, '201808100710171565', 'admin1', '订阅课程:Python爬虫2', '0:0:0:0:0:0:0:1', '2020-12-15 23:10:54', NULL);
INSERT INTO `log` VALUES (158, '201808100710171565', 'admin1', '登录', '0:0:0:0:0:0:0:1', '2020-12-15 23:18:43', NULL);
INSERT INTO `log` VALUES (159, '201808100710171565', 'admin1', '取消课程：Python爬虫2', '0:0:0:0:0:0:0:1', '2020-12-15 23:18:47', NULL);
INSERT INTO `log` VALUES (160, '201808100710171565', 'admin1', '订阅课程:Python爬虫2', '0:0:0:0:0:0:0:1', '2020-12-15 23:18:48', NULL);
INSERT INTO `log` VALUES (161, '201808100710171565', 'admin1', '登录', '0:0:0:0:0:0:0:1', '2020-12-15 23:20:30', NULL);
INSERT INTO `log` VALUES (162, '201808100710171565', 'admin1', '取消课程：Python爬虫2', '0:0:0:0:0:0:0:1', '2020-12-15 23:20:35', NULL);
INSERT INTO `log` VALUES (163, '201808100710171565', 'admin1', '订阅课程:Python爬虫2', '0:0:0:0:0:0:0:1', '2020-12-15 23:20:46', NULL);
INSERT INTO `log` VALUES (164, '201808100710171565', 'admin1', '取消课程：Python爬虫2', '0:0:0:0:0:0:0:1', '2020-12-15 23:22:30', NULL);
INSERT INTO `log` VALUES (165, '201808100710171565', 'admin1', '登录', '0:0:0:0:0:0:0:1', '2020-12-15 23:23:59', NULL);
INSERT INTO `log` VALUES (166, '201808100710171565', 'admin1', '订阅课程:Python爬虫2', '0:0:0:0:0:0:0:1', '2020-12-15 23:24:02', NULL);
INSERT INTO `log` VALUES (167, '201808100710171565', 'admin1', '取消课程：Python爬虫2', '0:0:0:0:0:0:0:1', '2020-12-15 23:28:04', NULL);
INSERT INTO `log` VALUES (168, '201808100710171565', 'admin1', '登录', '0:0:0:0:0:0:0:1', '2020-12-15 23:28:28', NULL);
INSERT INTO `log` VALUES (169, '201808100710171565', 'admin1', '订阅课程:Python爬虫2', '0:0:0:0:0:0:0:1', '2020-12-15 23:28:31', NULL);
INSERT INTO `log` VALUES (170, '201808100710171565', 'admin1', '取消课程：Python爬虫2', '0:0:0:0:0:0:0:1', '2020-12-15 23:29:47', NULL);
INSERT INTO `log` VALUES (171, '201808100710171565', 'admin1', '登录', '0:0:0:0:0:0:0:1', '2020-12-15 23:50:31', NULL);
INSERT INTO `log` VALUES (172, '201808100710171565', 'admin1', '订阅课程:Python爬虫2', '0:0:0:0:0:0:0:1', '2020-12-15 23:50:39', NULL);
INSERT INTO `log` VALUES (173, '201808100710171565', 'admin1', '取消课程：Python爬虫2', '0:0:0:0:0:0:0:1', '2020-12-15 23:51:48', NULL);
INSERT INTO `log` VALUES (174, '201808100710171565', 'admin1', '订阅课程:Python爬虫2', '0:0:0:0:0:0:0:1', '2020-12-15 23:52:45', NULL);
INSERT INTO `log` VALUES (175, '201808100710171565', 'admin1', '注销', '0:0:0:0:0:0:0:1', '2020-12-15 23:52:50', NULL);
INSERT INTO `log` VALUES (176, '201808100710171565', 'admin1', '登录', '0:0:0:0:0:0:0:1', '2020-12-15 23:53:00', NULL);
INSERT INTO `log` VALUES (177, '201808100710171565', 'admin1', '取消课程：Python爬虫2', '0:0:0:0:0:0:0:1', '2020-12-15 23:55:04', NULL);
INSERT INTO `log` VALUES (178, '20151612204', 'admin', '注销', '0:0:0:0:0:0:0:1', '2020-12-16 19:35:41', NULL);
INSERT INTO `log` VALUES (179, '201808100710171565', 'admin1', '登录', '0:0:0:0:0:0:0:1', '2020-12-16 19:35:58', NULL);
INSERT INTO `log` VALUES (180, '201808100710171565', 'admin1', '注销', '0:0:0:0:0:0:0:1', '2020-12-16 19:36:31', NULL);
INSERT INTO `log` VALUES (181, '201808100710171565', 'admin1', '登录', '0:0:0:0:0:0:0:1', '2020-12-16 19:37:08', NULL);
INSERT INTO `log` VALUES (182, '201808100710171565', 'admin1', '订阅课程:Python爬虫2', '0:0:0:0:0:0:0:1', '2020-12-16 19:37:12', NULL);
INSERT INTO `log` VALUES (183, '201808100710171565', 'admin1', '取消课程：Python入门', '0:0:0:0:0:0:0:1', '2020-12-16 19:37:25', NULL);
INSERT INTO `log` VALUES (184, NULL, NULL, '尝试登录账号:admin，密码错误', '0:0:0:0:0:0:0:1', '2020-12-18 08:52:50', NULL);
INSERT INTO `log` VALUES (185, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2020-12-18 08:52:59', 'admin');
INSERT INTO `log` VALUES (186, NULL, NULL, '上架课程：13213', '0:0:0:0:0:0:0:1', '2020-12-18 08:54:16', 'admin');
INSERT INTO `log` VALUES (187, NULL, NULL, '上架课程：13213', '0:0:0:0:0:0:0:1', '2020-12-18 08:54:48', 'admin');
INSERT INTO `log` VALUES (188, NULL, NULL, '上架课程：13213', '0:0:0:0:0:0:0:1', '2020-12-18 09:15:21', 'admin');
INSERT INTO `log` VALUES (189, '20151612204', 'admin', '注销', '0:0:0:0:0:0:0:1', '2020-12-18 09:15:26', 'admin');
INSERT INTO `log` VALUES (190, NULL, NULL, '尝试登录账号:admim，密码错误', '0:0:0:0:0:0:0:1', '2020-12-18 09:15:41', NULL);
INSERT INTO `log` VALUES (191, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2020-12-18 09:15:54', NULL);
INSERT INTO `log` VALUES (192, '20151612204', 'admin', '订阅课程:13213', '0:0:0:0:0:0:0:1', '2020-12-18 09:15:57', NULL);
INSERT INTO `log` VALUES (193, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2020-12-18 09:16:28', NULL);
INSERT INTO `log` VALUES (194, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2020-12-18 09:17:16', 'admin');
INSERT INTO `log` VALUES (195, NULL, NULL, '上架课程：dasdas', '0:0:0:0:0:0:0:1', '2020-12-18 09:17:51', 'admin');
INSERT INTO `log` VALUES (196, '20151612204', 'admin', '注销', '0:0:0:0:0:0:0:1', '2020-12-18 09:17:55', 'admin');
INSERT INTO `log` VALUES (197, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2020-12-18 09:18:10', NULL);
INSERT INTO `log` VALUES (198, '20151612204', 'admin', '订阅课程:dasdas', '0:0:0:0:0:0:0:1', '2020-12-18 09:18:17', NULL);
INSERT INTO `log` VALUES (199, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2020-12-18 09:20:46', 'admin');
INSERT INTO `log` VALUES (200, NULL, NULL, '删除课程：dasdas', '0:0:0:0:0:0:0:1', '2020-12-18 09:21:34', 'admin');
INSERT INTO `log` VALUES (201, NULL, NULL, '删除课程：13213', '0:0:0:0:0:0:0:1', '2020-12-18 09:21:40', 'admin');
INSERT INTO `log` VALUES (202, NULL, NULL, '上架课程：123123', '0:0:0:0:0:0:0:1', '2020-12-18 09:23:01', 'admin');
INSERT INTO `log` VALUES (203, '20151612204', 'admin', '注销', '0:0:0:0:0:0:0:1', '2020-12-18 09:23:04', 'admin');
INSERT INTO `log` VALUES (204, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2020-12-18 09:23:14', NULL);
INSERT INTO `log` VALUES (205, '20151612204', 'admin', '订阅课程:123123', '0:0:0:0:0:0:0:1', '2020-12-18 09:23:17', NULL);
INSERT INTO `log` VALUES (206, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2020-12-18 09:28:09', 'admin');
INSERT INTO `log` VALUES (207, '20151612204', 'admin', '注销', '0:0:0:0:0:0:0:1', '2020-12-18 09:28:34', 'admin');
INSERT INTO `log` VALUES (208, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2020-12-18 09:28:45', 'admin');
INSERT INTO `log` VALUES (209, '20151612204', 'admin', '注销', '0:0:0:0:0:0:0:1', '2020-12-18 09:28:49', 'admin');
INSERT INTO `log` VALUES (210, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2020-12-18 09:28:59', NULL);
INSERT INTO `log` VALUES (211, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2020-12-18 09:29:16', 'admin');
INSERT INTO `log` VALUES (212, NULL, NULL, '上架课程：5555', '0:0:0:0:0:0:0:1', '2020-12-18 09:29:24', 'admin');
INSERT INTO `log` VALUES (213, '20151612204', 'admin', '注销', '0:0:0:0:0:0:0:1', '2020-12-18 09:29:26', 'admin');
INSERT INTO `log` VALUES (214, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2020-12-18 09:29:35', NULL);
INSERT INTO `log` VALUES (215, '20151612204', 'admin', '订阅课程:5555', '0:0:0:0:0:0:0:1', '2020-12-18 09:29:38', NULL);
INSERT INTO `log` VALUES (216, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2020-12-18 09:43:54', NULL);
INSERT INTO `log` VALUES (217, NULL, NULL, '尝试登录账号:admin，密码错误', '0:0:0:0:0:0:0:1', '2020-12-18 09:50:16', NULL);
INSERT INTO `log` VALUES (218, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2020-12-18 09:50:28', 'admin');
INSERT INTO `log` VALUES (219, NULL, NULL, '上架课程：312312', '0:0:0:0:0:0:0:1', '2020-12-18 09:50:49', 'admin');
INSERT INTO `log` VALUES (220, '20151612204', 'admin', '注销', '0:0:0:0:0:0:0:1', '2020-12-18 09:50:55', 'admin');
INSERT INTO `log` VALUES (221, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2020-12-18 09:51:05', NULL);
INSERT INTO `log` VALUES (222, '20151612204', 'admin', '订阅课程:312312', '0:0:0:0:0:0:0:1', '2020-12-18 09:51:08', NULL);
INSERT INTO `log` VALUES (223, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2020-12-18 09:52:33', NULL);
INSERT INTO `log` VALUES (224, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2020-12-18 09:59:43', 'admin');
INSERT INTO `log` VALUES (225, NULL, NULL, '上架课程：12323123123', '0:0:0:0:0:0:0:1', '2020-12-18 10:00:06', 'admin');
INSERT INTO `log` VALUES (226, '20151612204', 'admin', '注销', '0:0:0:0:0:0:0:1', '2020-12-18 10:00:08', 'admin');
INSERT INTO `log` VALUES (227, '20151612204', 'admin', '登录', '0:0:0:0:0:0:0:1', '2020-12-18 10:00:17', NULL);
INSERT INTO `log` VALUES (228, '20151612204', 'admin', '订阅课程:12323123123', '0:0:0:0:0:0:0:1', '2020-12-18 10:00:21', NULL);
INSERT INTO `log` VALUES (229, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 10:04:29', NULL);
INSERT INTO `log` VALUES (230, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 10:13:16', NULL);
INSERT INTO `log` VALUES (231, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 10:14:33', NULL);
INSERT INTO `log` VALUES (232, '20151612204', 'admin', '发表评论，在\'12323123123\'', '127.0.0.1', '2020-12-18 10:15:39', NULL);
INSERT INTO `log` VALUES (233, '20151612204', 'admin', '注销', '127.0.0.1', '2020-12-18 10:31:04', NULL);
INSERT INTO `log` VALUES (234, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 10:34:48', NULL);
INSERT INTO `log` VALUES (235, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 14:11:21', 'admin');
INSERT INTO `log` VALUES (236, '20151612204', 'admin', '注销', '127.0.0.1', '2020-12-18 14:11:28', 'admin');
INSERT INTO `log` VALUES (237, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 14:11:44', NULL);
INSERT INTO `log` VALUES (238, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 14:19:26', NULL);
INSERT INTO `log` VALUES (239, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 14:19:53', 'admin');
INSERT INTO `log` VALUES (240, NULL, NULL, '上架课程：Python', '127.0.0.1', '2020-12-18 14:20:00', 'admin');
INSERT INTO `log` VALUES (241, '20151612204', 'admin', '注销', '127.0.0.1', '2020-12-18 14:20:08', 'admin');
INSERT INTO `log` VALUES (242, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 14:20:16', NULL);
INSERT INTO `log` VALUES (243, '20151612204', 'admin', '订阅课程:java', '127.0.0.1', '2020-12-18 14:23:48', NULL);
INSERT INTO `log` VALUES (244, '20151612204', 'admin', '订阅课程:Python爬虫2', '127.0.0.1', '2020-12-18 14:23:56', NULL);
INSERT INTO `log` VALUES (245, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 14:29:53', NULL);
INSERT INTO `log` VALUES (246, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 14:32:25', 'admin');
INSERT INTO `log` VALUES (247, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 14:33:36', 'admin');
INSERT INTO `log` VALUES (248, '20151612204', 'admin', '注销', '127.0.0.1', '2020-12-18 14:33:38', 'admin');
INSERT INTO `log` VALUES (249, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 14:33:53', 'admin');
INSERT INTO `log` VALUES (250, NULL, NULL, '删除课程：12323123123', '127.0.0.1', '2020-12-18 14:34:03', 'admin');
INSERT INTO `log` VALUES (251, NULL, NULL, '删除课程：312312', '127.0.0.1', '2020-12-18 14:34:08', 'admin');
INSERT INTO `log` VALUES (252, NULL, NULL, '删除课程：5555', '127.0.0.1', '2020-12-18 14:34:14', 'admin');
INSERT INTO `log` VALUES (253, NULL, NULL, '删除课程：123123', '127.0.0.1', '2020-12-18 14:34:20', 'admin');
INSERT INTO `log` VALUES (254, NULL, NULL, '删除课程：12123', '127.0.0.1', '2020-12-18 14:34:25', 'admin');
INSERT INTO `log` VALUES (255, NULL, NULL, '删除课程：123', '127.0.0.1', '2020-12-18 14:34:29', 'admin');
INSERT INTO `log` VALUES (256, NULL, NULL, '上架课程：神经网络', '127.0.0.1', '2020-12-18 14:38:26', 'admin');
INSERT INTO `log` VALUES (257, '20151612204', 'admin', '注销', '127.0.0.1', '2020-12-18 14:38:29', 'admin');
INSERT INTO `log` VALUES (258, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 14:38:43', NULL);
INSERT INTO `log` VALUES (259, '20151612204', 'admin', '订阅课程:神经网络', '127.0.0.1', '2020-12-18 14:38:47', NULL);
INSERT INTO `log` VALUES (260, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 14:41:26', NULL);
INSERT INTO `log` VALUES (261, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 14:41:47', 'admin');
INSERT INTO `log` VALUES (262, NULL, NULL, '删除课程：神经网络', '127.0.0.1', '2020-12-18 14:41:55', 'admin');
INSERT INTO `log` VALUES (263, '20151612204', 'admin', '注销', '127.0.0.1', '2020-12-18 14:42:49', 'admin');
INSERT INTO `log` VALUES (264, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 14:43:06', NULL);
INSERT INTO `log` VALUES (265, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 14:43:50', 'admin');
INSERT INTO `log` VALUES (266, NULL, NULL, '上架课程：神经网络', '127.0.0.1', '2020-12-18 14:43:55', 'admin');
INSERT INTO `log` VALUES (267, '20151612204', 'admin', '订阅课程:神经网络', '127.0.0.1', '2020-12-18 14:43:59', NULL);
INSERT INTO `log` VALUES (268, NULL, NULL, '上架课程：', '127.0.0.1', '2020-12-18 14:48:03', 'admin');
INSERT INTO `log` VALUES (269, NULL, NULL, '删除课程：神经网络', '127.0.0.1', '2020-12-18 14:48:10', 'admin');
INSERT INTO `log` VALUES (270, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 14:53:30', 'admin');
INSERT INTO `log` VALUES (271, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 14:57:16', NULL);
INSERT INTO `log` VALUES (272, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 14:59:27', 'admin');
INSERT INTO `log` VALUES (273, '20151612204', 'admin', '注销', '127.0.0.1', '2020-12-18 14:59:29', 'admin');
INSERT INTO `log` VALUES (274, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 14:59:35', NULL);
INSERT INTO `log` VALUES (275, '20151612204', 'admin', '订阅课程:pxc集群', '127.0.0.1', '2020-12-18 14:59:40', NULL);
INSERT INTO `log` VALUES (276, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 15:04:57', NULL);
INSERT INTO `log` VALUES (277, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 15:06:56', 'admin');
INSERT INTO `log` VALUES (278, NULL, NULL, '上架课程：神经网络', '127.0.0.1', '2020-12-18 15:07:17', 'admin');
INSERT INTO `log` VALUES (279, NULL, NULL, '上架课程：pxc集群', '127.0.0.1', '2020-12-18 15:07:27', 'admin');
INSERT INTO `log` VALUES (280, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 15:11:44', NULL);
INSERT INTO `log` VALUES (281, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 15:19:09', 'admin');
INSERT INTO `log` VALUES (282, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 15:32:57', NULL);
INSERT INTO `log` VALUES (283, '20151612204', 'admin', '发表评论，在\'神经网络\'', '127.0.0.1', '2020-12-18 15:35:40', NULL);
INSERT INTO `log` VALUES (284, '20151612204', 'admin', '购买会员：一年', '127.0.0.1', '2020-12-18 15:37:36', NULL);
INSERT INTO `log` VALUES (285, '20151612204', 'admin', '购买会员：一年', '127.0.0.1', '2020-12-18 15:37:39', NULL);
INSERT INTO `log` VALUES (286, '20151612204', 'admin', '购买会员：一年', '127.0.0.1', '2020-12-18 15:37:42', NULL);
INSERT INTO `log` VALUES (287, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 15:42:10', 'admin');
INSERT INTO `log` VALUES (288, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 16:02:41', 'admin');
INSERT INTO `log` VALUES (289, NULL, NULL, '删除课程：微信小程序', '127.0.0.1', '2020-12-18 16:02:52', 'admin');
INSERT INTO `log` VALUES (290, NULL, NULL, '删除课程：神经网络', '127.0.0.1', '2020-12-18 16:02:58', 'admin');
INSERT INTO `log` VALUES (291, NULL, NULL, '删除课程：', '127.0.0.1', '2020-12-18 16:03:02', 'admin');
INSERT INTO `log` VALUES (292, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 16:03:42', 'admin');
INSERT INTO `log` VALUES (293, NULL, NULL, '上架课程：微信小程序', '127.0.0.1', '2020-12-18 16:05:19', 'admin');
INSERT INTO `log` VALUES (294, '20151612204', 'admin', '订阅课程:微信小程序', '127.0.0.1', '2020-12-18 16:05:43', NULL);
INSERT INTO `log` VALUES (295, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 16:07:02', NULL);
INSERT INTO `log` VALUES (296, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 16:23:18', 'admin');
INSERT INTO `log` VALUES (297, '20151612204', 'admin', '注销', '127.0.0.1', '2020-12-18 16:23:20', 'admin');
INSERT INTO `log` VALUES (298, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 16:23:49', NULL);
INSERT INTO `log` VALUES (299, '20151612204', 'admin', '登录', '127.0.0.1', '2020-12-18 16:36:28', NULL);
COMMIT;

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `courseid` int(100) NOT NULL DEFAULT '0',
  `userid` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
BEGIN;
INSERT INTO `message` VALUES (1, '20151612204');
INSERT INTO `message` VALUES (3, '201808240857431128');
INSERT INTO `message` VALUES (6, '201808231058301205');
INSERT INTO `message` VALUES (4, '20151612204');
INSERT INTO `message` VALUES (2, '201809030750151429');
INSERT INTO `message` VALUES (2, '20151612204');
INSERT INTO `message` VALUES (2, '201809061049051592');
INSERT INTO `message` VALUES (2, '201808240857431128');
INSERT INTO `message` VALUES (6, '201808240857431128');
INSERT INTO `message` VALUES (4, '201809030750151429');
INSERT INTO `message` VALUES (5, '201808240857431128');
INSERT INTO `message` VALUES (1, '201809061049051592');
INSERT INTO `message` VALUES (3, '201808231058301205');
INSERT INTO `message` VALUES (4, '201808231058301205');
INSERT INTO `message` VALUES (2, '201810161045371069');
INSERT INTO `message` VALUES (6, '201810161901381601');
INSERT INTO `message` VALUES (4, '201808100710171565');
INSERT INTO `message` VALUES (6, '201808100710171565');
INSERT INTO `message` VALUES (5, '20151612204');
INSERT INTO `message` VALUES (6, '20151612204');
INSERT INTO `message` VALUES (3, '20151612204');
INSERT INTO `message` VALUES (7, '20151612204');
COMMIT;

-- ----------------------------
-- Table structure for review
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `reviewid` char(255) NOT NULL,
  `context` char(255) DEFAULT NULL,
  `courseid` int(50) DEFAULT NULL,
  `username` char(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `lable` char(255) DEFAULT NULL,
  `sex` char(50) DEFAULT NULL,
  `vip` int(50) DEFAULT NULL,
  PRIMARY KEY (`reviewid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of review
-- ----------------------------
BEGIN;
INSERT INTO `review` VALUES ('201809060327341776', 'fgfdgdsgg', 2, 'zzz', '2018-09-06 15:34:27', '4', 'Female', 1);
INSERT INTO `review` VALUES ('201809060414381493', '钱花的有点多', 1, '雷宇锋', '2018-09-06 16:38:14', '0', NULL, 1);
INSERT INTO `review` VALUES ('201809060423031483', '这课不错', 4, 'admin', '2018-09-06 16:03:23', '2', 'Male', 1);
INSERT INTO `review` VALUES ('201809060444041617', '刷好评', 4, 'adm', '2018-09-06 16:04:44', '4', NULL, 0);
INSERT INTO `review` VALUES ('201809060450041302', '刷好评', 4, 'adm', '2018-09-06 16:04:50', '4', NULL, 0);
INSERT INTO `review` VALUES ('201809060452031217', '这还不错', 4, 'adm', '2018-09-06 16:03:52', '3', NULL, 0);
INSERT INTO `review` VALUES ('201809060457021559', '这课不错', 5, 'admin', '2018-09-06 16:02:57', '2', 'Male', 1);
INSERT INTO `review` VALUES ('201810151532321876', '测试测试！！！', 6, '1823544517', '2018-10-15 15:32:32', '3', 'Male', 1);
INSERT INTO `review` VALUES ('201810151554191404', 'en ?', 3, '1823544517', '2018-10-15 15:19:54', '2', 'Male', 1);
INSERT INTO `review` VALUES ('201810161036391342', '美太太', 3, 'abc', '2018-10-16 10:39:36', '4', 'Female', 1);
INSERT INTO `review` VALUES ('201810161522301059', '测试', 4, '1823544517', '2018-10-16 15:30:22', '4', 'Male', 1);
INSERT INTO `review` VALUES ('201810161530351701', 'en    很不错', 3, 'abc', '2018-10-16 15:35:30', '0', 'Female', 1);
INSERT INTO `review` VALUES ('201810161545271907', '测试测试', 4, '1823544517', '2018-10-16 15:27:45', '4', 'Male', 1);
INSERT INTO `review` VALUES ('201810161902561206', '', 2, '96321', '2018-10-16 19:02:56', '4', 'Male', 1);
INSERT INTO `review` VALUES ('201810161903551373', '6666', 6, '96321', '2018-10-16 19:03:55', '4', 'Male', 1);
INSERT INTO `review` VALUES ('201810291609501589', '还行', 2, 'admin', '2018-10-29 16:09:50', '4', 'Male', 1);
INSERT INTO `review` VALUES ('202012181015391730', 'g', 12, 'admin', '2020-12-18 10:15:39', '1', 'Male', 1);
INSERT INTO `review` VALUES ('202012181535401980', 'dedde', 2, 'admin', '2020-12-18 15:35:40', '3', 'Male', 1);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(100) NOT NULL DEFAULT '',
  `sex` varchar(50) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `vx` varchar(200) DEFAULT NULL,
  `nickname` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `mission` varchar(500) DEFAULT NULL,
  `buycase` varchar(200) DEFAULT NULL,
  `mycase` varchar(200) DEFAULT NULL,
  `collect` varchar(200) DEFAULT NULL,
  `education` varchar(200) DEFAULT NULL,
  `vip` datetime DEFAULT NULL,
  `fristtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('20151612204', 'Male', '18235447109', '591284209@qq.com', '1111', '杨式人', 'admin', 'admin', 'admin', NULL, NULL, '449500', '高中/中专', '2036-10-01 19:57:53', NULL);
INSERT INTO `user` VALUES ('201808100710171565', 'Female', '18235447109', '591284209@qq.com', NULL, NULL, 'admin1', 'admin', NULL, NULL, NULL, '0', NULL, '2020-12-15 21:22:17', '2018-08-10 19:17:10');
INSERT INTO `user` VALUES ('201808100930501831', 'Male', '18235447109', '591284209@qq.com', '1111111111111111111', '张三', 'zhangsan', 'asdasd', NULL, NULL, NULL, '0', '本科/大专', '2019-09-01 20:41:04', '2018-08-10 09:50:30');
INSERT INTO `user` VALUES ('201808101154331492', 'Female', '1111111111111', '1447883900@qq.com', NULL, NULL, 'test', 'test', NULL, NULL, NULL, '500', NULL, NULL, '2018-08-10 11:33:54');
INSERT INTO `user` VALUES ('201808230425131682', NULL, '123456789', '125486', '15846', 'bad', 'bb', '123456', NULL, NULL, NULL, '500', '研究生以上', NULL, '2018-08-23 16:13:25');
INSERT INTO `user` VALUES ('201808230439101712', NULL, NULL, NULL, NULL, NULL, '18235445172', '1111', NULL, NULL, NULL, '500', NULL, NULL, '2018-08-23 16:10:39');
INSERT INTO `user` VALUES ('201808231058301205', 'Male', '12345689', '789@qq.com', '784554asdd', '雷', '1823544517', '123654', NULL, '0', NULL, '7000', '本科/大专', '2019-10-15 15:31:58', '2018-08-23 10:30:58');
INSERT INTO `user` VALUES ('201808240857431128', 'Female', '12345678907assa', '345424354@qq.com', '4dgde', 'zzzgf', 'zzz', '12345', NULL, NULL, NULL, '0', '研究生以上', '2023-01-06 15:33:03', '2018-08-24 08:43:57');
INSERT INTO `user` VALUES ('201808241105291520', NULL, NULL, NULL, NULL, NULL, '1823544517111111111111', '123456', NULL, NULL, NULL, '500', NULL, NULL, '2018-08-24 11:29:05');
INSERT INTO `user` VALUES ('201808241117291016', NULL, NULL, NULL, NULL, NULL, '182354451722222222222', '123456', NULL, NULL, NULL, '500', NULL, NULL, '2018-08-24 11:29:17');
INSERT INTO `user` VALUES ('201808241149281125', NULL, NULL, NULL, NULL, NULL, '18235445171111', '123456', NULL, NULL, NULL, '500', NULL, NULL, '2018-08-24 11:28:49');
INSERT INTO `user` VALUES ('201809030750151429', NULL, NULL, NULL, NULL, NULL, 'adm', '123', NULL, NULL, NULL, '500', NULL, NULL, '2018-09-03 19:15:50');
INSERT INTO `user` VALUES ('201809061018111546', 'Male', '110', '373254553@qq.com', 'js666', 'js', 'js', 'js666', NULL, NULL, NULL, '10000', '研究生以上', '2020-03-06 10:15:16', '2018-09-06 10:11:18');
INSERT INTO `user` VALUES ('201809061049051592', NULL, NULL, NULL, NULL, NULL, '雷宇锋', '110', NULL, NULL, NULL, '0', NULL, '2018-12-06 16:37:39', '2018-09-06 10:05:49');
INSERT INTO `user` VALUES ('201809061051011416', NULL, NULL, NULL, NULL, NULL, 'sdsd', '123', NULL, NULL, NULL, '500', NULL, NULL, '2018-09-06 10:01:51');
INSERT INTO `user` VALUES ('201809061055001264', NULL, NULL, NULL, NULL, NULL, 'aaa', '123', NULL, NULL, NULL, '500', NULL, NULL, '2018-09-06 10:00:55');
INSERT INTO `user` VALUES ('201809061108071033', 'Female', '12123', '1447883900@qq.com', NULL, NULL, '111', 'qweqwe', NULL, NULL, NULL, '500', NULL, NULL, '2018-09-06 11:07:08');
INSERT INTO `user` VALUES ('201810161045371069', 'Female', '13096613748', '872486471', '1223', '去玩儿', 'abc', '123456', NULL, '0', NULL, '0', '研究生以上', '2021-05-16 10:38:27', '2018-10-16 10:37:45');
INSERT INTO `user` VALUES ('201810161901381601', 'Male', '96321', '96321', '96321', '96321', '96321', '96321', NULL, '0', NULL, '0', '研究生以上', '2018-11-16 19:03:40', '2018-10-16 19:01:38');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
