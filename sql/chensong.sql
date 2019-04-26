/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : chensong

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 26/04/2019 17:52:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_circle
-- ----------------------------
DROP TABLE IF EXISTS `t_circle`;
CREATE TABLE `t_circle`  (
  `circle_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '圈子id',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建日期',
  `token` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT '创建人的token',
  PRIMARY KEY (`circle_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_circle
-- ----------------------------
INSERT INTO `t_circle` VALUES (1, '2019-04-24 14:04:44', 'dddddddddddddddddd---');
INSERT INTO `t_circle` VALUES (2, '2019-04-24 14:08:16', 'chensong-chenli');
INSERT INTO `t_circle` VALUES (3, '2019-04-24 14:08:58', 'chensong-chenli2');

-- ----------------------------
-- Table structure for t_table
-- ----------------------------
DROP TABLE IF EXISTS `t_table`;
CREATE TABLE `t_table`  (
  `table_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '桌子id',
  `circle_id` int(11) NOT NULL COMMENT '圈子id',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建日期',
  `create_token` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT '创建人token',
  `table_ante` int(11) NOT NULL COMMENT '初始值的大小',
  `buyin` int(11) NOT NULL COMMENT '带入值',
  `small_blind` int(11) NOT NULL COMMENT '小盲',
  `max_palyer` int(11) NOT NULL COMMENT '桌子的最大人数',
  `table_type` int(11) NOT NULL COMMENT '桌子的类型',
  `operatetime` int(11) NOT NULL COMMENT '等待时间',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 82 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_table
-- ----------------------------
INSERT INTO `t_table` VALUES (1, 1, '2019-04-25 14:22:15', '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (2, 1, '2019-04-25 14:22:20', '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (3, 1, '2019-04-25 14:22:21', '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (4, 1, '2019-04-25 14:22:22', '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (5, 1, '2019-04-25 14:22:23', '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (6, 1, '2019-04-25 14:22:24', '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (7, 1, '2019-04-25 14:22:25', '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (8, 1, '2019-04-25 14:22:25', '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (9, 1, '2019-04-25 14:22:26', '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (10, 1, '2019-04-25 14:22:28', '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (11, 1, '2019-04-25 14:22:35', '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (12, 1, '2019-04-25 14:23:02', '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (13, 1, '2019-04-25 14:23:03', '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (14, 1, '2019-04-25 15:45:49', '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (15, 1, '2019-04-25 15:45:54', '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (16, 1, '2019-04-25 15:47:49', '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (17, 1, '2019-04-25 15:47:51', '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (18, 1, '2019-04-25 17:19:55', '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (19, 1, '2019-04-25 17:53:24', '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (20, 1, '2019-04-25 17:53:27', '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (21, 1, '2019-04-25 17:53:27', '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (22, 1, '2019-04-25 18:04:33', '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (23, 1, '2019-04-25 18:04:34', '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (24, 1, '2019-04-26 09:26:01', '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (25, 1, '2019-04-26 09:26:05', '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (26, 1, '2019-04-26 09:26:06', '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (27, 1, '2019-04-26 09:26:07', '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (28, 1, '2019-04-26 10:53:19', 'abc', 3, 2000, 20, 9, 1, 20);
INSERT INTO `t_table` VALUES (29, 1, '2019-04-26 10:53:23', 'abc', 3, 2000, 20, 9, 1, 20);
INSERT INTO `t_table` VALUES (30, 1, '2019-04-26 11:07:25', 'a6d6d0a1d0c1cee2c9561eb945745a04d382ea9f', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (31, 1, '2019-04-26 11:22:33', '4ac5f84d033288c8f9b91507adaeb674b2c84981', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (32, 1, '2019-04-26 11:22:34', '4ac5f84d033288c8f9b91507adaeb674b2c84981', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (33, 1, '2019-04-26 11:22:37', '4ac5f84d033288c8f9b91507adaeb674b2c84981', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (34, 1, '2019-04-26 11:30:57', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (35, 1, '2019-04-26 11:30:58', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (36, 1, '2019-04-26 11:35:30', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (37, 1, '2019-04-26 11:35:31', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (38, 1, '2019-04-26 11:35:32', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (39, 1, '2019-04-26 11:41:12', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (40, 1, '2019-04-26 11:41:12', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (41, 1, '2019-04-26 11:41:12', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (42, 1, '2019-04-26 11:41:12', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (43, 1, '2019-04-26 11:41:12', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (44, 1, '2019-04-26 11:41:12', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (45, 1, '2019-04-26 11:41:12', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (46, 1, '2019-04-26 11:41:12', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (47, 1, '2019-04-26 11:41:12', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (48, 1, '2019-04-26 11:41:12', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (49, 1, '2019-04-26 11:41:12', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (50, 1, '2019-04-26 11:41:12', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (51, 1, '2019-04-26 11:50:11', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (52, 1, '2019-04-26 11:50:11', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (53, 1, '2019-04-26 11:50:12', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (54, 1, '2019-04-26 11:50:12', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (55, 1, '2019-04-26 11:50:12', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (56, 1, '2019-04-26 11:50:12', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (57, 1, '2019-04-26 11:50:12', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (58, 1, '2019-04-26 11:50:13', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (59, 1, '2019-04-26 11:50:13', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (60, 1, '2019-04-26 11:50:13', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (61, 1, '2019-04-26 11:50:13', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (62, 1, '2019-04-26 11:50:14', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (63, 1, '2019-04-26 11:50:14', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (64, 1, '2019-04-26 11:50:14', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (65, 1, '2019-04-26 11:50:14', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (66, 1, '2019-04-26 11:50:16', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (67, 1, '2019-04-26 11:50:16', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (68, 1, '2019-04-26 11:50:16', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (69, 1, '2019-04-26 11:50:17', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (70, 1, '2019-04-26 11:50:17', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (71, 1, '2019-04-26 11:50:18', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (72, 1, '2019-04-26 11:50:19', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (73, 1, '2019-04-26 11:50:36', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (74, 1, '2019-04-26 11:50:36', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (75, 1, '2019-04-26 11:50:36', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (76, 1, '2019-04-26 11:50:37', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (77, 1, '2019-04-26 11:50:37', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (78, 1, '2019-04-26 11:50:37', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (79, 1, '2019-04-26 11:50:37', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (80, 1, '2019-04-26 11:50:37', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);
INSERT INTO `t_table` VALUES (81, 1, '2019-04-26 11:50:37', 'f579bfddded167af073096649fed7f572988faf3', 0, 1500, 25, 8, 1, 20);

-- ----------------------------
-- Table structure for t_user_table
-- ----------------------------
DROP TABLE IF EXISTS `t_user_table`;
CREATE TABLE `t_user_table`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `token` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT '玩家的token',
  `table_id` int(10) UNSIGNED NOT NULL COMMENT '桌子id',
  `circle_id` int(11) NOT NULL COMMENT '圈子id',
  `is_join` int(11) NOT NULL COMMENT '1:加入桌子了 0: 退出桌子',
  `num` int(10) UNSIGNED NOT NULL COMMENT '玩家加入桌子的次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 43 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_table
-- ----------------------------
INSERT INTO `t_user_table` VALUES (15, '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 15, 1, 1, 1);
INSERT INTO `t_user_table` VALUES (16, 'eee----eee', 88, 1, 0, 1);
INSERT INTO `t_user_table` VALUES (17, 'a6d6d0a1d0c1cee2c9561eb945745a04d382ea9f', 18, 1, 1, 1);
INSERT INTO `t_user_table` VALUES (18, '203a8d0cd8e94a8e2202534655a3e87232f01827', 18, 1, 1, 1);
INSERT INTO `t_user_table` VALUES (19, '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 17, 1, 1, 1);
INSERT INTO `t_user_table` VALUES (20, '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 16, 1, 1, 1);
INSERT INTO `t_user_table` VALUES (21, 'eee----eee', 78, 1, 0, 4);
INSERT INTO `t_user_table` VALUES (22, '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 20, 1, 1, 1);
INSERT INTO `t_user_table` VALUES (23, '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 21, 1, 1, 1);
INSERT INTO `t_user_table` VALUES (24, '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 23, 1, 1, 1);
INSERT INTO `t_user_table` VALUES (25, '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 26, 1, 1, 1);
INSERT INTO `t_user_table` VALUES (26, '61b9402e2c28df6e7bde4dc62ba67056dfc0ed6a', 27, 1, 1, 1);
INSERT INTO `t_user_table` VALUES (27, 'e2e0da9e6aa7f43ca4ba27b8923ef7d0dc4625ef', 27, 1, 1, 3);
INSERT INTO `t_user_table` VALUES (28, 'e2e0da9e6aa7f43ca4ba27b8923ef7d0dc4625ef', 25, 1, 0, 1);
INSERT INTO `t_user_table` VALUES (29, 'a6d6d0a1d0c1cee2c9561eb945745a04d382ea9f', 27, 1, 0, 2);
INSERT INTO `t_user_table` VALUES (30, '48024d5e9d59507e577423fe5500d0bcecf5a910', 27, 1, 0, 1);
INSERT INTO `t_user_table` VALUES (31, 'd6b194fad3c15ca4356d246a59ac870cf88fa7f8', 27, 1, 1, 1);
INSERT INTO `t_user_table` VALUES (32, 'd6b194fad3c15ca4356d246a59ac870cf88fa7f8', 26, 1, 0, 1);
INSERT INTO `t_user_table` VALUES (33, 'a6d6d0a1d0c1cee2c9561eb945745a04d382ea9f', 30, 1, 0, 3);
INSERT INTO `t_user_table` VALUES (34, '96067cdef1f0f8c3ab86860d343e31aa65b92791', 30, 1, 1, 1);
INSERT INTO `t_user_table` VALUES (35, '4ac5f84d033288c8f9b91507adaeb674b2c84981', 25, 1, 0, 1);
INSERT INTO `t_user_table` VALUES (36, '4ac5f84d033288c8f9b91507adaeb674b2c84981', 32, 1, 1, 1);
INSERT INTO `t_user_table` VALUES (37, 'f579bfddded167af073096649fed7f572988faf3', 33, 1, 1, 2);
INSERT INTO `t_user_table` VALUES (38, 'f579bfddded167af073096649fed7f572988faf3', 32, 1, 1, 2);
INSERT INTO `t_user_table` VALUES (39, 'f579bfddded167af073096649fed7f572988faf3', 37, 1, 1, 2);
INSERT INTO `t_user_table` VALUES (40, 'f579bfddded167af073096649fed7f572988faf3', 41, 1, 1, 1);
INSERT INTO `t_user_table` VALUES (41, 'f579bfddded167af073096649fed7f572988faf3', 40, 1, 0, 4);
INSERT INTO `t_user_table` VALUES (42, 'f579bfddded167af073096649fed7f572988faf3', 78, 1, 0, 2);

-- ----------------------------
-- Procedure structure for add_circle
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_circle`;
delimiter ;;
CREATE PROCEDURE `add_circle`(IN user_token VARCHAR ( 256 ))
BEGIN
    #Routine body goes here...
	INSERT INTO `t_circle`  (`token`)   VALUES (user_token);
  
    select count(`circle_id`) as num from `t_circle`; 
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for add_table
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_table`;
delimiter ;;
CREATE PROCEDURE `add_table`(IN circle_id int,  IN token VARCHAR ( 256 ), IN ante int, IN buyin int, IN small_blind int, IN max_palyer int, IN table_type int, IN operatetime int)
BEGIN
    #Routine body goes here...
	INSERT INTO `t_table`  (`circle_id`, `create_token`, `table_ante`, `buyin`, `small_blind`, `max_palyer`, `table_type`, `operatetime`)   VALUES (circle_id,  token, ante, buyin ,small_blind, max_palyer, table_type, operatetime);
   select max(`table_id`) as num from `t_table`; 
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for add_user_table
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_user_table`;
delimiter ;;
CREATE PROCEDURE `add_user_table`(IN token VARCHAR ( 256 ), IN circle_id int,  IN table_id int)
BEGIN
    #Routine body goes here...
	#DECLARE stu_no INT (4) DEFAULT 0 ;
	#select is_join INTO stu_no from t_user_table where t_user_table.circle_id = circle_id and t_user_table.token = token and t_user_table.table_id = table_id;
	if not exists (select is_join  from `t_user_table` where t_user_table.circle_id = circle_id and t_user_table.token = token and t_user_table.table_id = table_id) then
		# insert
		INSERT INTO `t_user_table` (`token`, `circle_id`, `table_id`,  `is_join`, `num`) VALUES (token, circle_id, table_id, 1, 1);
	else 
		# update
		UPDATE `t_user_table` SET num = num + 1 , is_join = 1 where t_user_table.circle_id = circle_id and t_user_table.token = token and t_user_table.table_id = table_id;
	end if;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for get_circle_info
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_circle_info`;
delimiter ;;
CREATE PROCEDURE `get_circle_info`(IN type int)
BEGIN
    #Routine body goes here...
    select `circle_id`, `token` from `t_circle`  where `circle_id` = type; 
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for get_table_info
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_table_info`;
delimiter ;;
CREATE PROCEDURE `get_table_info`(IN type int)
BEGIN
    #Routine body goes here...
    select `circle_id`, `create_token`, `max_palyer`, `table_ante`, `operatetime`, `small_blind`, `table_ante`, `buyin` from `t_table`  where `table_id` = type; 
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for modify_user_table
-- ----------------------------
DROP PROCEDURE IF EXISTS `modify_user_table`;
delimiter ;;
CREATE PROCEDURE `modify_user_table`(IN token VARCHAR ( 256 ), IN circle_id int,  IN table_id int)
BEGIN
    # update 
	UPDATE `t_user_table` SET is_join = 0 where t_user_table.circle_id = circle_id and t_user_table.token = token and t_user_table.table_id = table_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for select_user_table
-- ----------------------------
DROP PROCEDURE IF EXISTS `select_user_table`;
delimiter ;;
CREATE PROCEDURE `select_user_table`(IN token VARCHAR ( 256 ), IN circle_id int, IN table_id int)
BEGIN
    #Routine body goes here...
	select is_join from `t_user_table` where t_user_table.circle_id = circle_id and t_user_table.token = token and t_user_table.table_id = table_id;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
