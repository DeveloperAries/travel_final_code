/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50643
 Source Host           : localhost:3306
 Source Schema         : eova

 Target Server Type    : MySQL
 Target Server Version : 50643
 File Encoding         : 65001

 Date: 11/05/2019 23:32:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for eova_button
-- ----------------------------
DROP TABLE IF EXISTS `eova_button`;
CREATE TABLE `eova_button`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单Code',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '按钮名称',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `ui` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮UI路径',
  `bs` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮BS路径',
  `uri` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '服务端URI',
  `order_num` int(11) NULL DEFAULT 0 COMMENT '排序号',
  `group_num` int(11) NULL DEFAULT 0 COMMENT '分组号',
  `is_base` tinyint(1) NULL DEFAULT 0 COMMENT '是否基础功能',
  `is_hide` tinyint(1) NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1337 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'EOVA操作按钮' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of eova_button
-- ----------------------------
INSERT INTO `eova_button` VALUES (1, 'eova_menu', '查询', NULL, 'query', NULL, NULL, 0, 0, 1, 0);
INSERT INTO `eova_button` VALUES (2, 'eova_menu', '新增', NULL, '/eova/template/singletree/btn/add.html', NULL, NULL, 1, 0, 1, 1);
INSERT INTO `eova_button` VALUES (3, 'eova_menu', '修改', NULL, '/eova/template/singletree/btn/update.html', NULL, NULL, 2, 0, 1, 0);
INSERT INTO `eova_button` VALUES (4, 'eova_menu', '删除', NULL, '/eova/template/singletree/btn/delete.html', NULL, NULL, 3, 0, 1, 0);
INSERT INTO `eova_button` VALUES (5, 'eova_menu', '查看', NULL, '/eova/template/singletree/btn/detail.html', NULL, NULL, 4, 0, 1, 1);
INSERT INTO `eova_button` VALUES (6, 'eova_menu', '隐藏', NULL, '/eova/template/singletree/btn/hide.html', NULL, NULL, 3, 0, 1, 0);
INSERT INTO `eova_button` VALUES (7, 'eova_menu', '导出菜单脚本', 'eova-icon387', '/eova/menu/btn/export.html', NULL, NULL, 12, 0, 0, 0);
INSERT INTO `eova_button` VALUES (8, 'eova_menu', '基本功能设置', 'eova-icon297', '/eova/menu/btn/fun.html', NULL, NULL, 11, 0, 0, 0);
INSERT INTO `eova_button` VALUES (9, 'eova_menu', '新增功能', 'eova-icon724', '/eova/menu/btn/add.html', NULL, NULL, 0, 0, 0, 0);
INSERT INTO `eova_button` VALUES (20, 'eova_object', '查询', NULL, 'query', NULL, NULL, 0, 0, 1, 0);
INSERT INTO `eova_button` VALUES (21, 'eova_object', '新增', NULL, '/eova/template/masterslave/btn1/add.html', NULL, NULL, 1, 0, 1, 1);
INSERT INTO `eova_button` VALUES (22, 'eova_object', '修改', NULL, '/eova/template/masterslave/btn1/update.html', NULL, NULL, 2, 0, 1, 0);
INSERT INTO `eova_button` VALUES (23, 'eova_object', '删除', NULL, '/eova/template/masterslave/btn1/delete.html', NULL, NULL, 3, 0, 1, 0);
INSERT INTO `eova_button` VALUES (24, 'eova_object', '查看', NULL, '/eova/template/masterslave/btn1/detail.html', NULL, NULL, 4, 0, 1, 1);
INSERT INTO `eova_button` VALUES (25, 'eova_object', '字段新增', NULL, '/eova/template/masterslave/btn2/add.html', NULL, NULL, 0, 1, 1, 0);
INSERT INTO `eova_button` VALUES (26, 'eova_object', '字段修改', NULL, '/eova/template/masterslave/btn2/update.html', NULL, NULL, 1, 1, 1, 0);
INSERT INTO `eova_button` VALUES (27, 'eova_object', '字段删除', NULL, '/eova/template/masterslave/btn2/delete.html', NULL, NULL, 2, 1, 1, 0);
INSERT INTO `eova_button` VALUES (28, 'eova_object', '导出元数据脚本', 'eova-icon387', '/eova/meta/btn/export.html', NULL, NULL, 11, 0, 0, 0);
INSERT INTO `eova_button` VALUES (29, 'eova_object', '导入元数据', 'eova-icon387', '/eova/meta/btn/import.html', NULL, NULL, 10, 0, 0, 0);
INSERT INTO `eova_button` VALUES (30, 'eova_object', '覆盖同步', 'eova-icon391', '/eova/meta/btn/override.html', NULL, NULL, 12, 0, 0, 0);
INSERT INTO `eova_button` VALUES (31, 'eova_object', '增量同步', 'eova-icon391', '/eova/meta/btn/syncnew.html', NULL, NULL, 13, 0, 0, 0);
INSERT INTO `eova_button` VALUES (32, 'eova_object', '复制元数据', 'eova-icon382', '/eova/meta/btn/copy.html', NULL, NULL, 14, 0, 0, 0);
INSERT INTO `eova_button` VALUES (33, 'eova_object', '添加虚拟字段', 'eova-icon380', '/eova/template/common/btn/input.html', '/meta/addVirtualField', '/meta/addVirtualField', 15, 0, 0, 0);
INSERT INTO `eova_button` VALUES (40, 'eova_button', '查询', NULL, 'query', NULL, NULL, 0, 0, 1, 0);
INSERT INTO `eova_button` VALUES (41, 'eova_button', '新增', NULL, '/eova/template/treetogrid/btn/add.html', NULL, NULL, 1, 0, 1, 0);
INSERT INTO `eova_button` VALUES (42, 'eova_button', '修改', NULL, '/eova/template/treetogrid/btn/update.html', NULL, NULL, 2, 0, 1, 0);
INSERT INTO `eova_button` VALUES (43, 'eova_button', '删除', NULL, '/eova/template/treetogrid/btn/delete.html', NULL, NULL, 3, 0, 1, 0);
INSERT INTO `eova_button` VALUES (44, 'eova_button', '查看', NULL, '/eova/template/treetogrid/btn/detail.html', NULL, NULL, 4, 0, 1, 0);
INSERT INTO `eova_button` VALUES (45, 'eova_button', '导出按钮脚本', 'eova-icon387', '/eova/button/btn/export.html', NULL, NULL, 7, 0, 0, 0);
INSERT INTO `eova_button` VALUES (80, 'eova_task', '查询', NULL, 'query', NULL, NULL, 0, 0, 1, 0);
INSERT INTO `eova_button` VALUES (81, 'eova_task', '新增', NULL, '/eova/template/single/btn/add.html', NULL, NULL, 1, 0, 1, 0);
INSERT INTO `eova_button` VALUES (82, 'eova_task', '修改', NULL, '/eova/template/single/btn/update.html', NULL, NULL, 2, 0, 1, 0);
INSERT INTO `eova_button` VALUES (83, 'eova_task', '删除', NULL, '/eova/template/single/btn/delete.html', NULL, NULL, 3, 0, 1, 0);
INSERT INTO `eova_button` VALUES (84, 'eova_task', '查看', NULL, '/eova/template/single/btn/detail.html', NULL, NULL, 4, 0, 1, 0);
INSERT INTO `eova_button` VALUES (85, 'eova_task', '导入', NULL, '/eova/template/single/btn/import.html', NULL, NULL, 5, 0, 1, 1);
INSERT INTO `eova_button` VALUES (86, 'eova_task', '启动任务', 'eova-icon288', '/eova/task/btn/start.html', NULL, NULL, 10, 0, 0, 0);
INSERT INTO `eova_button` VALUES (87, 'eova_task', '暂停任务', 'eova-icon287', '/eova/task/btn/stop.html', NULL, NULL, 11, 0, 0, 0);
INSERT INTO `eova_button` VALUES (88, 'eova_task', '立即运行一次', 'eova-icon290', '/eova/task/btn/trigger.html', NULL, NULL, 12, 0, 0, 0);
INSERT INTO `eova_button` VALUES (90, 'eova_code', '查询', NULL, 'query', NULL, NULL, 0, 0, 1, 0);
INSERT INTO `eova_button` VALUES (100, 'sys_log', '查询', NULL, 'query', '/single_grid/list/sys_log;/grid/query/eova_log_code*', NULL, 0, 0, 1, 0);
INSERT INTO `eova_button` VALUES (101, 'sys_log', '新增', NULL, '/eova/template/single/btn/add.html', '/form/add/eova_log_code*;/form/doAdd/eova_log_code', NULL, 1, 0, 1, 1);
INSERT INTO `eova_button` VALUES (102, 'sys_log', '修改', NULL, '/eova/template/single/btn/update.html', '/form/update/eova_log_code*;/form/doUpdate/eova_log_code', NULL, 2, 0, 1, 1);
INSERT INTO `eova_button` VALUES (103, 'sys_log', '删除', NULL, '/eova/template/single/btn/delete.html', '/grid/delete/eova_log_code', NULL, 3, 0, 1, 1);
INSERT INTO `eova_button` VALUES (104, 'sys_log', '查看', NULL, '/eova/template/single/btn/detail.html', '/form/detail/eova_log_code*', NULL, 4, 0, 1, 1);
INSERT INTO `eova_button` VALUES (105, 'sys_log', '导入', NULL, '/eova/template/single/btn/import.html', '/single_grid/importXls/sys_log;/single_grid/doImportXls/sys_log', NULL, 5, 0, 1, 1);
INSERT INTO `eova_button` VALUES (110, 'sys_auth_role', '查询', NULL, 'query', '/single_grid/list/sys_auth_role;/grid/query/eova_role_code*', NULL, 0, 0, 1, 0);
INSERT INTO `eova_button` VALUES (111, 'sys_auth_role', '新增', NULL, '/eova/template/single/btn/add.html', '/form/add/eova_role_code*;/form/doAdd/eova_role_code', NULL, 1, 0, 1, 0);
INSERT INTO `eova_button` VALUES (112, 'sys_auth_role', '修改', NULL, '/eova/template/single/btn/update.html', '/form/update/eova_role_code*;/form/doUpdate/eova_role_code', NULL, 2, 0, 1, 0);
INSERT INTO `eova_button` VALUES (113, 'sys_auth_role', '删除', NULL, '/eova/template/single/btn/delete.html', '/grid/delete/eova_role_code', NULL, 3, 0, 1, 0);
INSERT INTO `eova_button` VALUES (114, 'sys_auth_role', '查看', NULL, '/eova/template/single/btn/detail.html', '/form/detail/eova_role_code*', NULL, 4, 0, 1, 1);
INSERT INTO `eova_button` VALUES (115, 'sys_auth_role', '导入', NULL, '/eova/template/single/btn/import.html', '/single_grid/importXls/sys_auth_role;/single_grid/doImportXls/sys_auth_role', NULL, 5, 0, 1, 1);
INSERT INTO `eova_button` VALUES (116, 'sys_auth_role', '权限分配', 'eova-icon523', '/eova/auth/btn/roleChoose.html', '/auth/toRoleChoose/*;/auth/getFunJson;/auth/getRoleFunJson/*;/auth/roleChoose/*', NULL, 10, 0, 0, 0);
INSERT INTO `eova_button` VALUES (129, 'sys_users', '修改密码', 'eova-icon572', '/eova/template/common/btn/input.html', '/user/pwd', '/user/pwd', 7, 0, 0, 0);
INSERT INTO `eova_button` VALUES (1132, 'sys_users', '查询', NULL, 'query', '/single_grid/list/sys_users;/grid/query/eova_user_code*;/grid/export/eova_user_code*', NULL, 0, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1133, 'sys_users', '新增', NULL, '/eova/template/single/btn/add.html', '/form/add/eova_user_code*;/form/doAdd/eova_user_code', NULL, 1, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1134, 'sys_users', '修改', NULL, '/eova/template/single/btn/update.html', '/form/update/eova_user_code*;/form/doUpdate/eova_user_code', NULL, 2, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1135, 'sys_users', '删除', NULL, '/eova/template/single/btn/delete.html', '/grid/delete/eova_user_code', NULL, 3, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1136, 'sys_users', '查看', NULL, '/eova/template/single/btn/detail.html', '/form/detail/eova_user_code*', NULL, 4, 0, 1, 1);
INSERT INTO `eova_button` VALUES (1137, 'sys_users', '导入', NULL, '/eova/template/single/btn/import.html', '/single_grid/importXls/sys_users;/single_grid/doImportXls/sys_users', NULL, 5, 0, 1, 1);
INSERT INTO `eova_button` VALUES (1138, 'sys_users', '隐藏', NULL, '/eova/template/single/btn/hide.html', '/grid/hide/eova_user_code', NULL, 6, 0, 1, 1);
INSERT INTO `eova_button` VALUES (1238, 'eova_druid', '查询', NULL, 'query', '/druid/**', NULL, 0, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1247, 'menu_strategy', '查询', NULL, 'query', '/master_slave_grid/list/menu_strategy;/grid/query/strategy*;/grid/export/strategy*;/grid/query/strategy_reply*;/grid/export/strategy_reply*', NULL, 0, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1248, 'menu_strategy', '新增', NULL, '/eova/template/masterslave/btn1/add.html', '/form/add/strategy*;/form/doAdd/strategy', NULL, 1, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1249, 'menu_strategy', '修改', NULL, '/eova/template/masterslave/btn1/update.html', '/form/update/strategy*;/form/doUpdate/strategy', NULL, 2, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1250, 'menu_strategy', '删除', NULL, '/eova/template/masterslave/btn1/delete.html', '/grid/delete/strategy', NULL, 3, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1251, 'menu_strategy', '查看', NULL, '/eova/template/masterslave/btn1/detail.html', '/form/detail/strategy*', NULL, 4, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1252, 'menu_strategy', '隐藏', NULL, '/eova/template/single/btn/hide.html', '/grid/hide/strategy', NULL, 5, 0, 1, 1);
INSERT INTO `eova_button` VALUES (1253, 'menu_strategy', '攻略评论新增', NULL, '/eova/template/masterslave/btn2/add.html', '/form/add/strategy_reply*;/form/doAdd/strategy_reply', NULL, 0, 1, 1, 0);
INSERT INTO `eova_button` VALUES (1254, 'menu_strategy', '攻略评论修改', NULL, '/eova/template/masterslave/btn2/update.html', '/form/update/strategy_reply*;/form/doUpdate/strategy_reply', NULL, 1, 1, 1, 0);
INSERT INTO `eova_button` VALUES (1255, 'menu_strategy', '攻略评论删除', NULL, '/eova/template/masterslave/btn2/delete.html', '/grid/delete/strategy_reply', NULL, 2, 1, 1, 0);
INSERT INTO `eova_button` VALUES (1256, 'menu_strategy', '攻略评论查看', NULL, '/eova/template/masterslave/btn2/detail.html', '/form/detail/strategy_reply*', NULL, 3, 1, 1, 0);
INSERT INTO `eova_button` VALUES (1257, 'menu_strategy', '攻略评论隐藏', NULL, '/eova/template/single/btn/hide.html', '/grid/hide/strategy_reply', NULL, 4, 1, 1, 1);
INSERT INTO `eova_button` VALUES (1258, 'menugl', '查询', NULL, 'query', '/master_slave_grid/list/menugl;/grid/query/strategy*;/grid/export/strategy*;/grid/query/strategy_reply*;/grid/export/strategy_reply*', NULL, 0, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1259, 'menugl', '新增', NULL, '/eova/template/masterslave/btn1/add.html', '/form/add/strategy*;/form/doAdd/strategy', NULL, 1, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1260, 'menugl', '修改', NULL, '/eova/template/masterslave/btn1/update.html', '/form/update/strategy*;/form/doUpdate/strategy', NULL, 2, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1261, 'menugl', '删除', NULL, '/eova/template/masterslave/btn1/delete.html', '/grid/delete/strategy', NULL, 3, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1262, 'menugl', '查看', NULL, '/eova/template/masterslave/btn1/detail.html', '/form/detail/strategy*', NULL, 4, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1263, 'menugl', '隐藏', NULL, '/eova/template/single/btn/hide.html', '/grid/hide/strategy', NULL, 5, 0, 1, 1);
INSERT INTO `eova_button` VALUES (1264, 'menugl', '攻略评论新增', NULL, '/eova/template/masterslave/btn2/add.html', '/form/add/strategy_reply*;/form/doAdd/strategy_reply', NULL, 0, 1, 1, 0);
INSERT INTO `eova_button` VALUES (1265, 'menugl', '攻略评论修改', NULL, '/eova/template/masterslave/btn2/update.html', '/form/update/strategy_reply*;/form/doUpdate/strategy_reply', NULL, 1, 1, 1, 0);
INSERT INTO `eova_button` VALUES (1266, 'menugl', '攻略评论删除', NULL, '/eova/template/masterslave/btn2/delete.html', '/grid/delete/strategy_reply', NULL, 2, 1, 1, 0);
INSERT INTO `eova_button` VALUES (1267, 'menugl', '攻略评论查看', NULL, '/eova/template/masterslave/btn2/detail.html', '/form/detail/strategy_reply*', NULL, 3, 1, 1, 0);
INSERT INTO `eova_button` VALUES (1268, 'menugl', '攻略评论隐藏', NULL, '/eova/template/single/btn/hide.html', '/grid/hide/strategy_reply', NULL, 4, 1, 1, 1);
INSERT INTO `eova_button` VALUES (1269, 'menugl', '内容审核', 'eova-icon3', '/travel/views/strategy/btn/sh.html', '/strategy/*', NULL, 5, 0, 0, 0);
INSERT INTO `eova_button` VALUES (1271, 'findex', '查询', NULL, 'query', '/fIndex/**', NULL, 0, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1272, 'user', '查询', NULL, 'query', '/single_grid/list/user;/grid/query/user*;/grid/export/user*', NULL, 0, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1273, 'user', '新增', NULL, '/eova/template/single/btn/add.html', '/form/add/user*;/form/doAdd/user', NULL, 1, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1274, 'user', '修改', NULL, '/eova/template/single/btn/update.html', '/form/update/user*;/form/doUpdate/user', NULL, 2, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1275, 'user', '删除', NULL, '/eova/template/single/btn/delete.html', '/grid/delete/user', NULL, 3, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1276, 'user', '查看', NULL, '/eova/template/single/btn/detail.html', '/form/detail/user*', NULL, 4, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1277, 'user', '导入', NULL, '/eova/template/single/btn/import.html', '/single_grid/importXls/user;/single_grid/doImportXls/user', NULL, 5, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1278, 'user', '隐藏', NULL, '/eova/template/single/btn/hide.html', '/grid/hide/user', NULL, 6, 0, 1, 1);
INSERT INTO `eova_button` VALUES (1286, 'notemanage', '查询', NULL, 'query', '/master_slave_grid/list/notemanage;/grid/query/note*;/grid/export/note*;/grid/query/note_reply*;/grid/export/note_reply*', NULL, 0, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1287, 'notemanage', '新增', NULL, '/eova/template/masterslave/btn1/add.html', '/form/add/note*;/form/doAdd/note', NULL, 1, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1288, 'notemanage', '修改', NULL, '/eova/template/masterslave/btn1/update.html', '/form/update/note*;/form/doUpdate/note', NULL, 2, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1289, 'notemanage', '删除', NULL, '/eova/template/masterslave/btn1/delete.html', '/grid/delete/note', NULL, 3, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1290, 'notemanage', '查看', NULL, '/eova/template/masterslave/btn1/detail.html', '/form/detail/note*', NULL, 4, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1291, 'notemanage', '隐藏', NULL, '/eova/template/single/btn/hide.html', '/grid/hide/note', NULL, 5, 0, 1, 1);
INSERT INTO `eova_button` VALUES (1292, 'notemanage', '交流贴评论新增', NULL, '/eova/template/masterslave/btn2/add.html', '/form/add/note_reply*;/form/doAdd/note_reply', NULL, 0, 1, 1, 0);
INSERT INTO `eova_button` VALUES (1293, 'notemanage', '交流贴评论修改', NULL, '/eova/template/masterslave/btn2/update.html', '/form/update/note_reply*;/form/doUpdate/note_reply', NULL, 1, 1, 1, 0);
INSERT INTO `eova_button` VALUES (1294, 'notemanage', '交流贴评论删除', NULL, '/eova/template/masterslave/btn2/delete.html', '/grid/delete/note_reply', NULL, 2, 1, 1, 0);
INSERT INTO `eova_button` VALUES (1295, 'notemanage', '交流贴评论查看', NULL, '/eova/template/masterslave/btn2/detail.html', '/form/detail/note_reply*', NULL, 3, 1, 1, 0);
INSERT INTO `eova_button` VALUES (1296, 'notemanage', '交流贴评论隐藏', NULL, '/eova/template/single/btn/hide.html', '/grid/hide/note_reply', NULL, 4, 1, 1, 1);
INSERT INTO `eova_button` VALUES (1297, 'notemanage', '内容审核', 'eova-icon1116', '/travel/views/note/btn/sh.html', '/note/*', NULL, 6, 0, 0, 0);
INSERT INTO `eova_button` VALUES (1301, 'addNews', '查询', NULL, 'query', '/news/write/**', NULL, 0, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1316, 'manageNews', '查询', NULL, 'query', '/single_grid/list/manageNews;/grid/query/news*;/grid/export/news*', NULL, 0, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1317, 'manageNews', '新增', NULL, '/eova/template/single/btn/add.html', '/form/add/news*;/form/doAdd/news', NULL, 1, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1318, 'manageNews', '修改', NULL, '/eova/template/single/btn/update.html', '/form/update/news*;/form/doUpdate/news', NULL, 2, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1319, 'manageNews', '删除', NULL, '/eova/template/single/btn/delete.html', '/grid/delete/news', NULL, 3, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1320, 'manageNews', '查看', NULL, '/eova/template/single/btn/detail.html', '/form/detail/news*', NULL, 4, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1321, 'manageNews', '导入', NULL, '/eova/template/single/btn/import.html', '/single_grid/importXls/manageNews;/single_grid/doImportXls/manageNews', NULL, 5, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1322, 'manageNews', '隐藏', NULL, '/eova/template/single/btn/hide.html', '/grid/hide/news', NULL, 6, 0, 1, 1);
INSERT INTO `eova_button` VALUES (1323, 'manage', '查询', NULL, 'query', '/single_grid/list/manage;/grid/query/spot*;/grid/export/spot*', NULL, 0, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1324, 'manage', '新增', NULL, '/eova/template/single/btn/add.html', '/form/add/spot*;/form/doAdd/spot', NULL, 1, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1325, 'manage', '修改', NULL, '/eova/template/single/btn/update.html', '/form/update/spot*;/form/doUpdate/spot', NULL, 2, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1326, 'manage', '删除', NULL, '/eova/template/single/btn/delete.html', '/grid/delete/spot', NULL, 3, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1327, 'manage', '查看', NULL, '/eova/template/single/btn/detail.html', '/form/detail/spot*', NULL, 4, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1328, 'manage', '导入', NULL, '/eova/template/single/btn/import.html', '/single_grid/importXls/manage;/single_grid/doImportXls/manage', NULL, 5, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1329, 'manage', '隐藏', NULL, '/eova/template/single/btn/hide.html', '/grid/hide/spot', NULL, 6, 0, 1, 1);
INSERT INTO `eova_button` VALUES (1330, 'manageActivity', '查询', NULL, 'query', '/single_grid/list/manageActivity;/grid/query/activity*;/grid/export/activity*', NULL, 0, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1331, 'manageActivity', '新增', NULL, '/eova/template/single/btn/add.html', '/form/add/activity*;/form/doAdd/activity', NULL, 1, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1332, 'manageActivity', '修改', NULL, '/eova/template/single/btn/update.html', '/form/update/activity*;/form/doUpdate/activity', NULL, 2, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1333, 'manageActivity', '删除', NULL, '/eova/template/single/btn/delete.html', '/grid/delete/activity', NULL, 3, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1334, 'manageActivity', '查看', NULL, '/eova/template/single/btn/detail.html', '/form/detail/activity*', NULL, 4, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1335, 'manageActivity', '导入', NULL, '/eova/template/single/btn/import.html', '/single_grid/importXls/manageActivity;/single_grid/doImportXls/manageActivity', NULL, 5, 0, 1, 0);
INSERT INTO `eova_button` VALUES (1336, 'manageActivity', '隐藏', NULL, '/eova/template/single/btn/hide.html', '/grid/hide/activity', NULL, 6, 0, 1, 1);

-- ----------------------------
-- Table structure for eova_dict
-- ----------------------------
DROP TABLE IF EXISTS `eova_dict`;
CREATE TABLE `eova_dict`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `object` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `field` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'EOVA字典' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of eova_dict
-- ----------------------------
INSERT INTO `eova_dict` VALUES (1, 'main', '默认', 'eova_object', 'data_source');
INSERT INTO `eova_dict` VALUES (2, 'eova', 'EOVA', 'eova_object', 'data_source');
INSERT INTO `eova_dict` VALUES (40, '1', '新增', 'eova_log', 'type');
INSERT INTO `eova_dict` VALUES (41, '2', '修改', 'eova_log', 'type');
INSERT INTO `eova_dict` VALUES (42, '3', '删除', 'eova_log', 'type');
INSERT INTO `eova_dict` VALUES (70, '0', '正常', 'eova_field', 'update_status');
INSERT INTO `eova_dict` VALUES (71, '10', '只读', 'eova_field', 'update_status');
INSERT INTO `eova_dict` VALUES (72, '20', '隐藏', 'eova_field', 'update_status');
INSERT INTO `eova_dict` VALUES (73, '50', '禁用', 'eova_field', 'update_status');
INSERT INTO `eova_dict` VALUES (100, '0', '暂停', 'eova_job', 'state');
INSERT INTO `eova_dict` VALUES (101, '1', '运行', 'eova_job', 'state');

-- ----------------------------
-- Table structure for eova_field
-- ----------------------------
DROP TABLE IF EXISTS `eova_field`;
CREATE TABLE `eova_field`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `object_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fieldnum` int(11) NULL DEFAULT 0 COMMENT '表单分组序号',
  `order_num` int(4) NULL DEFAULT 9 COMMENT '排序索引',
  `fieldset` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表单分组',
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段表名',
  `en` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '英文名',
  `cn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '中文名',
  `is_auto` tinyint(1) NULL DEFAULT 0 COMMENT '主键是否自增长',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '文本框' COMMENT '控件类型',
  `exp` varchar(800) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '控件表达式',
  `is_query` tinyint(1) NULL DEFAULT 0 COMMENT '是否可查询',
  `is_show` tinyint(1) NULL DEFAULT 1 COMMENT '是否可显示',
  `is_disable` tinyint(1) NULL DEFAULT 0 COMMENT '是否禁用',
  `is_order` tinyint(1) NULL DEFAULT 1 COMMENT '是否可排序',
  `is_add` tinyint(1) NULL DEFAULT 1 COMMENT '是否可新增字段(V1.6废弃)',
  `is_update` tinyint(1) NULL DEFAULT 1 COMMENT '是否可修改字段(V1.6废弃)',
  `is_edit` tinyint(1) NULL DEFAULT 1 COMMENT '是否可编辑字段',
  `is_required` tinyint(1) NULL DEFAULT 1 COMMENT '是否必填',
  `is_multiple` tinyint(1) NULL DEFAULT 0 COMMENT '是否多选项',
  `placeholder` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '输入提示',
  `validator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'UI校验表达式',
  `defaulter` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '默认值表达式',
  `formatter` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '格式化器',
  `width` int(4) NULL DEFAULT 130 COMMENT '控件宽度',
  `height` int(4) NULL DEFAULT 20 COMMENT '控件高度',
  `config` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拓展配置',
  `add_status` int(3) NULL DEFAULT 0 COMMENT '状态：0=正常，10=只读，20=隐藏，50=禁用',
  `update_status` int(3) NULL DEFAULT 0 COMMENT '状态：0=正常，10=只读，20=隐藏，50=禁用',
  `data_type` int(5) NULL DEFAULT 12 COMMENT '数据类型',
  `data_type_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'VARCHAR' COMMENT '数据类型名称',
  `data_size` int(2) NULL DEFAULT 1 COMMENT '整数位长度',
  `data_decimal` int(2) NULL DEFAULT 0 COMMENT '小数位长度',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3266 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'EOVA元字段' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of eova_field
-- ----------------------------
INSERT INTO `eova_field` VALUES (1, 'eova_meta_template', 0, 0, '', '', 'meta', 'meta', 0, '文本框', '', 0, 1, 0, 1, 1, 1, 1, 1, 0, '', '', '', '', 130, 20, '', 50, 50, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (2, 'eova_object_code', 0, 1, '基础信息', NULL, 'id', 'ID', 1, '自增框', NULL, 0, 1, 0, 1, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 50, 20, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3, 'eova_object_code', 0, 2, '基础信息', NULL, 'code', '编码', 0, '文本框', NULL, 1, 1, 0, 1, 1, 0, 0, 1, 0, NULL, 'eovacode', NULL, NULL, 200, 20, NULL, 0, 10, 12, 'VARCHAR', 100, 0);
INSERT INTO `eova_field` VALUES (4, 'eova_object_code', 0, 3, '基础信息', NULL, 'name', '名称', 0, '文本框', NULL, 1, 1, 0, 1, 1, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 100, 0);
INSERT INTO `eova_field` VALUES (5, 'eova_object_code', 0, 4, '基础信息', NULL, 'view_name', '视图', 0, '文本框', NULL, 1, 1, 0, 1, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 70, 20, NULL, 50, 10, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (6, 'eova_object_code', 0, 5, '基础信息', NULL, 'table_name', '数据表', 0, '文本框', NULL, 1, 1, 0, 1, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 80, 20, NULL, 50, 10, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (7, 'eova_object_code', 0, 6, '基础信息', NULL, 'pk_name', '主键', 0, '文本框', NULL, 0, 1, 0, 1, 1, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 70, 20, NULL, 50, 10, 12, 'VARCHAR', 50, 0);
INSERT INTO `eova_field` VALUES (8, 'eova_object_code', 0, 7, '基础信息', NULL, 'data_source', '数据源', 0, '下拉框', 'select value ID,name CN from eova_dict where object = \'eova_object\' and field = \'data_source\';ds=eova', 0, 1, 0, 1, 1, 1, 0, 1, 0, NULL, NULL, 'main', NULL, 70, 20, NULL, 0, 0, 12, 'VARCHAR', 50, 0);
INSERT INTO `eova_field` VALUES (9, 'eova_object_code', 1, 8, '功能配置', NULL, 'is_single', '单选/多选', 0, '布尔框', NULL, 0, 1, 0, 1, 1, 1, 0, 0, 0, NULL, NULL, '1', NULL, 70, 20, NULL, 0, 0, -7, 'BIT', 0, 0);
INSERT INTO `eova_field` VALUES (10, 'eova_object_code', 1, 9, '功能配置', NULL, 'is_show_num', '显示行号', 0, '布尔框', NULL, 0, 1, 0, 1, 1, 1, 0, 0, 0, NULL, NULL, '1', NULL, 70, 20, NULL, 0, 0, -7, 'BIT', 0, 0);
INSERT INTO `eova_field` VALUES (11, 'eova_object_code', 1, 10, '功能配置', NULL, 'default_order', '默认排序', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 0, 0, 0, '例如：id desc (默认按ID倒序)', NULL, NULL, NULL, 70, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (12, 'eova_object_code', 1, 11, '功能配置', NULL, 'filter', '过滤条件', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 0, 0, 0, '例如：status = 1 (只显示状态为1的数据)', NULL, NULL, NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 500, 0);
INSERT INTO `eova_field` VALUES (13, 'eova_object_code', 1, 13, '功能配置', NULL, 'diy_js', '依赖JS', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, '自定义JS文件路径', NULL, NULL, NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (14, 'eova_object_code', 1, 8, '功能配置', NULL, 'is_celledit', '行内编辑', 0, '布尔框', NULL, 0, 1, 0, 1, 1, 1, 0, 0, 0, NULL, NULL, '0', NULL, 70, 20, NULL, 0, 0, -7, 'BIT', 0, 0);
INSERT INTO `eova_field` VALUES (15, 'eova_object_code', 1, 12, '功能配置', NULL, 'biz_intercept', '业务拦截器', 0, '文本域', NULL, 1, 1, 0, 1, 1, 1, 0, 0, 0, '继承：com.eova.core.meta.MetaObjectIntercept', NULL, NULL, NULL, 179, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (16, 'eova_object_code', 1, 9, '功能配置', NULL, 'is_first_load', '是否初始加载', 0, '布尔框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '1', NULL, 130, 20, NULL, 0, 0, -7, 'BIT', 0, 0);
INSERT INTO `eova_field` VALUES (17, 'eova_object_code', 1, 17, '功能配置', NULL, 'view_sql', '视图SQL', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 100, NULL, 50, 10, 12, 'VARCHAR', 1000, 0);
INSERT INTO `eova_field` VALUES (18, 'eova_object_code', 1, 18, '功能配置', NULL, 'config', '拓展配置', 0, 'JSON框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 300, NULL, 0, 0, 12, 'VARCHAR', 2000, 0);
INSERT INTO `eova_field` VALUES (50, 'eova_field_code', 0, 1, '', NULL, 'id', 'ID', 1, '自增框', NULL, 0, 0, 0, 1, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 50, 20, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (51, 'eova_field_code', 0, 2, '', NULL, 'object_code', '对象编码', 0, '查找框', 'select code 编码,name 名称 from eova_object where id > 999 order by id desc;ds=eova', 1, 1, 0, 1, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 150, 20, NULL, 0, 0, 12, 'VARCHAR', 50, 0);
INSERT INTO `eova_field` VALUES (52, 'eova_field_code', 0, 9, '', NULL, 'en', '字段名', 0, '文本框', NULL, 1, 1, 0, 1, 1, 1, 0, 0, 0, '数据库的字段名', NULL, NULL, NULL, 120, 20, NULL, 0, 0, 12, 'VARCHAR', 50, 0);
INSERT INTO `eova_field` VALUES (53, 'eova_field_code', 0, 8, '', NULL, 'cn', '中文名', 0, '文本框', NULL, 1, 1, 0, 1, 1, 1, 1, 0, 0, '字段对应的中文描述', NULL, NULL, NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 50, 0);
INSERT INTO `eova_field` VALUES (54, 'eova_field_code', 0, 24, '', NULL, 'is_auto', '自增长', 0, '布尔框', NULL, 0, 0, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '0', NULL, 70, 20, NULL, 0, 0, -7, 'BIT', 0, 0);
INSERT INTO `eova_field` VALUES (55, 'eova_field_code', 0, 10, '', NULL, 'data_type_name', '字段类型', 0, '文本框', '', 0, 1, 0, 0, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 124, 20, NULL, 0, 10, 12, 'VARCHAR', 20, 0);
INSERT INTO `eova_field` VALUES (56, 'eova_field_code', 0, 11, '', NULL, 'type', '控件类型', 0, '下拉框', 'select value ID,name CN from eova_widget;ds=eova', 1, 1, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '文本框', NULL, 70, 20, NULL, 0, 0, 12, 'VARCHAR', 10, 0);
INSERT INTO `eova_field` VALUES (57, 'eova_field_code', 0, 6, '', NULL, 'order_num', '排序', 0, '文本框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '9', NULL, 50, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (58, 'eova_field_code', 0, 51, '', NULL, 'exp', '表达式', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, '查找框和下拉框需需要表达式', NULL, NULL, NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 800, 0);
INSERT INTO `eova_field` VALUES (59, 'eova_field_code', 0, 25, '', NULL, 'is_query', '快速查询', 0, '布尔框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '0', NULL, 60, 20, NULL, 0, 0, -7, 'BIT', 0, 0);
INSERT INTO `eova_field` VALUES (60, 'eova_field_code', 0, 26, '', NULL, 'is_show', '列表显示', 0, '布尔框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '1', NULL, 60, 20, NULL, 0, 0, -7, 'BIT', 0, 0);
INSERT INTO `eova_field` VALUES (61, 'eova_field_code', 0, 32, '', NULL, 'is_order', '允许排序', 0, '布尔框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '1', NULL, 60, 20, NULL, 0, 0, -7, 'BIT', 0, 0);
INSERT INTO `eova_field` VALUES (62, 'eova_field_code', 0, 28, '', NULL, 'is_add', '允许新增', 0, '布尔框', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '1', NULL, 70, 20, NULL, 0, 0, -7, 'BIT', 0, 0);
INSERT INTO `eova_field` VALUES (63, 'eova_field_code', 0, 29, '', NULL, 'is_update', '允许修改', 0, '布尔框', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '1', NULL, 70, 20, NULL, 0, 0, -7, 'BIT', 0, 0);
INSERT INTO `eova_field` VALUES (64, 'eova_field_code', 0, 31, '', NULL, 'is_required', '是否必填', 0, '布尔框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '1', NULL, 60, 20, NULL, 0, 0, -7, 'BIT', 0, 0);
INSERT INTO `eova_field` VALUES (65, 'eova_field_code', 0, 36, '', NULL, 'defaulter', '默认值', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, '缺省默认值', NULL, NULL, NULL, 110, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (66, 'eova_field_code', 0, 20, '', NULL, 'width', '列宽度', 0, '文本框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '130', NULL, 50, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (67, 'eova_field_code', 0, 21, '', NULL, 'height', '高度', 0, '文本框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '20', NULL, 50, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (68, 'eova_field_code', 0, 33, '', NULL, 'is_multiple', '是否有多值', 0, '布尔框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '0', NULL, 70, 20, NULL, 0, 0, -7, 'BIT', 0, 0);
INSERT INTO `eova_field` VALUES (69, 'eova_field_code', 0, 30, '', NULL, 'is_edit', '单元格编辑', 0, '布尔框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '1', NULL, 75, 20, NULL, 0, 0, -7, 'BIT', 0, 0);
INSERT INTO `eova_field` VALUES (70, 'eova_field_code', 0, 35, '', NULL, 'placeholder', '输入提示', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, 'input的placeholder属性', NULL, NULL, NULL, 60, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (71, 'eova_field_code', 0, 54, '', NULL, 'formatter', '格式化器', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, '格式化的JS,参考EasyUI datagrid formatter', NULL, NULL, NULL, 130, 150, NULL, 0, 0, 12, 'VARCHAR', 2000, 0);
INSERT INTO `eova_field` VALUES (72, 'eova_field_code', 0, 53, '', NULL, 'validator', 'UI校验器', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, 'UI校验规则', NULL, NULL, NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (73, 'eova_field_code', 0, 27, '', NULL, 'is_disable', '是否禁用', 0, '布尔框', NULL, 0, 0, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '0', NULL, 70, 20, NULL, 0, 0, -7, 'BIT', 0, 0);
INSERT INTO `eova_field` VALUES (74, 'eova_field_code', 0, 23, '', NULL, 'update_status', '更新状态', 0, '下拉框', 'select value ID,name CN from eova_dict where object = \'eova_field\' and field = \'update_status\';ds=eova', 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '0', NULL, 60, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (75, 'eova_field_code', 0, 22, '', NULL, 'add_status', '新增状态', 0, '下拉框', 'select value ID,name CN from eova_dict where object = \'eova_field\' and field = \'update_status\';ds=eova', 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '0', NULL, 60, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (76, 'eova_field_code', 0, 7, '', NULL, 'fieldset', '分组名称', 0, '文本框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, 90, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (77, 'eova_field_code', 0, 5, '', NULL, 'fieldnum', '分组号', 0, '文本框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '0', NULL, 70, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (78, 'eova_field_code', 0, 6, '', NULL, 'table_name', '字段表名', 0, '文本框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 100, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (79, 'eova_field_code', 0, 999, '', NULL, 'config', '拓展配置', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 2000, 0);
INSERT INTO `eova_field` VALUES (80, 'eova_field_code', 0, 30, '', NULL, 'data_type', '数据类型', 0, '文本框', NULL, 0, 0, 0, 1, 1, 1, 0, 1, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (81, 'eova_field_code', 0, 32, '', NULL, 'data_size', '整数位长度', 0, '文本框', NULL, 0, 0, 0, 1, 1, 1, 0, 0, 0, NULL, NULL, '1', NULL, 130, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (82, 'eova_field_code', 0, 33, '', NULL, 'data_decimal', '小数位长度', 0, '文本框', NULL, 0, 0, 0, 1, 1, 1, 0, 0, 0, NULL, NULL, '0', NULL, 130, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (100, 'eova_menu_code', 0, 1, '', NULL, 'id', 'ID', 1, '自增框', NULL, 0, 0, 0, 1, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 40, 20, NULL, 50, 20, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (101, 'eova_menu_code', 0, 4, NULL, NULL, 'code', '编码', 0, '文本框', NULL, 1, 1, 1, 1, 1, 0, 0, 1, 0, NULL, 'eovacode', NULL, NULL, 206, 20, NULL, 0, 10, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (102, 'eova_menu_code', 0, 1, NULL, NULL, 'name', '名称', 0, '文本框', NULL, 1, 1, 0, 1, 1, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 206, 20, NULL, 0, 0, 12, 'VARCHAR', 100, 0);
INSERT INTO `eova_field` VALUES (103, 'eova_menu_code', 0, 2, NULL, NULL, 'type', '类型', 0, '文本框', NULL, 0, 1, 0, 1, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, 126, 20, NULL, 0, 10, 12, 'VARCHAR', 20, 0);
INSERT INTO `eova_field` VALUES (104, 'eova_menu_code', 0, 6, NULL, NULL, 'iconskip', '图标', 0, '图标框', NULL, 0, 0, 0, 1, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (105, 'eova_menu_code', 0, 9, NULL, NULL, 'order_num', '序号', 0, '文本框', NULL, 0, 0, 0, 1, 1, 1, 0, 1, 0, NULL, NULL, '0', NULL, 30, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (106, 'eova_menu_code', 0, 9, NULL, NULL, 'parent_id', '父节点', 0, '下拉树', 'select id ID,parent_id PID, name NAME from eova_menu;ds=eova', 0, 0, 0, 1, 1, 0, 0, 1, 0, NULL, NULL, '0', NULL, 100, 20, NULL, 50, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (107, 'eova_menu_code', 0, 16, '', NULL, 'is_hide', '是否隐藏', 0, '布尔框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '0', NULL, 136, 20, NULL, 10, 10, -7, 'BIT', 0, 0);
INSERT INTO `eova_field` VALUES (109, 'eova_menu_code', 0, 12, '', NULL, 'biz_intercept', '业务拦截器', 0, '文本域', NULL, 0, 0, 0, 1, 1, 1, 0, 0, 0, '继承：模版业务拦截器', NULL, NULL, NULL, 300, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (110, 'eova_menu_code', 0, 15, '', NULL, 'url', '自定义功能', 0, '文本域', NULL, 0, 0, 0, 1, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 0, 50, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (111, 'eova_menu_code', 0, 11, '', NULL, 'filter', '过滤条件', 0, '文本域', '', 0, 1, 0, 1, 1, 1, 1, 0, 0, '例如：status = 1 (只显示状态为1的数据)', NULL, NULL, NULL, 346, 20, NULL, 0, 0, 12, 'VARCHAR', 500, 0);
INSERT INTO `eova_field` VALUES (112, 'eova_menu_code', 0, 13, '', NULL, 'diy_js', '依赖JS', 0, '文本域', '', 0, 0, 0, 1, 1, 1, 1, 0, 0, '自定义JS文件路径', NULL, NULL, NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (113, 'eova_menu_code', 0, 17, '', NULL, 'open', '是否展开', 0, '布尔框', NULL, 0, 0, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '1', NULL, 130, 20, NULL, 0, 0, -7, 'BIT', 0, 0);
INSERT INTO `eova_field` VALUES (114, 'eova_menu_code', 0, 18, '', NULL, 'config', '菜单配置JSON', 0, 'JSON框', NULL, 0, 0, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 400, NULL, 0, 0, 12, 'VARCHAR', 500, 0);
INSERT INTO `eova_field` VALUES (150, 'eova_button_code', 0, 30, '', NULL, 'is_hide', '是否隐藏', 0, '布尔框', NULL, 0, 1, 0, 1, 0, 1, 1, 0, 0, NULL, NULL, '0', NULL, 60, 20, NULL, 0, 0, -7, 'BIT', 0, 0);
INSERT INTO `eova_field` VALUES (151, 'eova_button_code', 0, 3, '', NULL, 'icon', 'ICON', 0, '图标框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, NULL, 'function(value,row,index,field){if(value){return\'<span class=\"tree-icon tree-file \'+value+\'\"></span>\'}return value}', 36, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (152, 'eova_button_code', 0, 1, '', NULL, 'id', 'ID', 1, '自增框', NULL, 0, 0, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, 50, 20, NULL, 50, 20, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (153, 'eova_button_code', 0, 2, '', NULL, 'menu_code', '菜单编码', 0, '查找框', 'select code 菜单编码,name 菜单名称 from eova_menu where 1=1;ds=eova', 0, 0, 0, 1, 1, 1, 0, 0, 0, NULL, 'eovacode', NULL, NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (154, 'eova_button_code', 0, 4, '', NULL, 'name', '功能名称', 0, '文本框', NULL, 1, 1, 0, 1, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (155, 'eova_button_code', 0, 10, '', NULL, 'ui', '前端实现', 0, '文本域', NULL, 1, 1, 0, 1, 1, 1, 1, 0, 0, '前端实现的文件路径', NULL, NULL, NULL, 266, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (156, 'eova_button_code', 0, 20, '', NULL, 'bs', 'URI权限规则', 0, '文本域', NULL, 1, 1, 0, 1, 1, 1, 0, 0, 0, '本功能所用服务端接口的URI权限规则', NULL, NULL, NULL, 250, 60, NULL, 0, 0, 12, 'VARCHAR', 500, 0);
INSERT INTO `eova_field` VALUES (157, 'eova_button_code', 0, 6, '', NULL, 'order_num', '序号', 0, '文本框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, '按钮的显示顺序', 'digits', '0', NULL, 50, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (158, 'eova_button_code', 0, 7, '', NULL, 'group_num', '分组号', 0, '文本框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, 'Toolbar分组号', 'digits', '0', NULL, 50, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (159, 'eova_button_code', 0, 8, '', NULL, 'is_base', '是否基础功能', 0, '布尔框', NULL, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, '0', NULL, 130, 20, NULL, 0, 0, -7, 'BIT', 0, 0);
INSERT INTO `eova_field` VALUES (201, 'eova_user_code', 0, 20, '', NULL, 'login_id', '登录帐号', 0, '文本框', NULL, 1, 1, 0, 1, 1, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 136, 20, NULL, 0, 0, 12, 'VARCHAR', 30, 0);
INSERT INTO `eova_field` VALUES (202, 'eova_user_code', 0, 40, NULL, NULL, 'login_pwd', '登录密码', 0, '密码框', NULL, 0, 0, 0, 0, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 0, 50, 12, 'VARCHAR', 50, 0);
INSERT INTO `eova_field` VALUES (203, 'eova_user_code', 0, 15, '', NULL, 'rid', '角色', 0, '下拉框', 'select id ID,name CN from eova_role where lv > ${user.role.lv} order by id;ds=eova', 1, 1, 0, 1, 1, 1, 0, 1, 0, NULL, NULL, '0', NULL, 137, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (204, 'eova_user_code', 0, 10, '', NULL, 'id', 'ID', 1, '自增框', NULL, 0, 1, 0, 1, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 71, 20, NULL, 50, 20, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (220, 'eova_role_code', 1, 0, '', NULL, 'id', 'ID', 1, '自增框', NULL, 0, 1, 0, 1, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 50, 20, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (221, 'eova_role_code', 1, 1, '', NULL, 'name', '角色名', 0, '文本框', NULL, 1, 1, 0, 1, 1, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (222, 'eova_role_code', 1, 3, '', NULL, 'info', '角色描述', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 230, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (223, 'eova_role_code', 1, 2, '', NULL, 'lv', '权限级别', 0, '文本框', NULL, 0, 1, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '0', NULL, 130, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (260, 'eova_log_code', 1, 1, '', NULL, 'id', 'id', 1, '自增框', '', 0, 1, 0, 1, 1, 1, 0, 0, 0, '', '', NULL, '', 130, 20, NULL, 50, 20, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (261, 'eova_log_code', 1, 2, '', NULL, 'user_id', '操作用户', 0, '查找框', 'select id UID,login_id 用户名 from eova_user where 1=1;ds=eova', 1, 1, 0, 1, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (262, 'eova_log_code', 1, 3, '', '', 'type', '日志类型', 0, '下拉框', 'select value ID,name CN from eova_dict where object = \'eova_log\' and field = \'type\';ds=eova', 1, 1, 0, 1, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (263, 'eova_log_code', 1, 4, '', NULL, 'ip', '操作IP', 0, '文本框', NULL, 1, 1, 0, 1, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (264, 'eova_log_code', 1, 5, '', NULL, 'info', '详情', 0, '文本框', '', 1, 1, 0, 0, 0, 0, 0, 1, 0, '', '', NULL, '', 330, 20, NULL, 0, 0, 12, 'VARCHAR', 500, 0);
INSERT INTO `eova_field` VALUES (265, 'eova_log_code', 1, 6, '', NULL, 'create_time', '操作时间', 0, '时间框', '', 1, 1, 0, 0, 0, 0, 0, 1, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 1, 0);
INSERT INTO `eova_field` VALUES (280, 'eova_task_code', 1, 1, '', NULL, 'id', 'ID', 1, '自增框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, 50, 20, NULL, 50, 20, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (281, 'eova_task_code', 1, 2, '', NULL, 'state', '状态', 0, '下拉框', 'select value ID,name CN from eova_dict where object = \'eova_job\' and field = \'state\';ds=eova', 1, 1, 0, 1, 0, 0, 0, 1, 0, NULL, NULL, '0', NULL, 50, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (282, 'eova_task_code', 1, 3, '', NULL, 'name', '名称', 0, '文本框', NULL, 1, 1, 0, 1, 1, 1, 1, 1, 0, '任务简称', NULL, NULL, NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (283, 'eova_task_code', 1, 4, '', NULL, 'exp', '表达式', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 1, 0, 'Quartz表达式', '', NULL, NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 50, 0);
INSERT INTO `eova_field` VALUES (284, 'eova_task_code', 1, 5, '', NULL, 'clazz', '实现类', 0, '文本域', NULL, 1, 1, 0, 1, 1, 1, 1, 1, 0, 'Job实现类', NULL, NULL, NULL, 230, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (285, 'eova_task_code', 1, 6, '', NULL, 'info', '说明', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, '任务的详细描述', NULL, NULL, NULL, 330, 50, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (2132, 'user_info_code', 1, 1, '基本信息', NULL, 'id', 'id', 0, '查找框', 'select id ID,login_id 帐号 from eova_user;ds=eova', 0, 0, 0, 1, 1, 1, 1, 0, 0, '', NULL, NULL, NULL, 130, 20, NULL, 20, 20, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (2133, 'user_info_code', 1, 2, '基本信息', NULL, 'rid', '冗余角色ID', 0, '文本框', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0', NULL, 130, 20, NULL, 50, 50, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (2134, 'user_info_code', 1, 5, '基本信息', NULL, 'status', '状态', 0, '下拉框', 'select value ID , name CN from dicts where object = \'users\' and field = \'status\' or object = \'${user.id}\'', 0, 1, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '0', NULL, 130, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (2135, 'user_info_code', 1, 6, '基本信息', NULL, 'nickname', '昵称', 0, '文本框', '', 0, 1, 0, 1, 1, 1, 1, 1, 0, '', NULL, '', NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 30, 0);
INSERT INTO `eova_field` VALUES (2136, 'user_info_code', 1, 7, '基本信息', NULL, 'mobile', '联系手机', 0, '文本框', NULL, 0, 1, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 11, 0);
INSERT INTO `eova_field` VALUES (2137, 'user_info_code', 2, 8, '地区信息', NULL, 'province', '省', 0, '下拉框', 'select id ID,name CN from area where lv = 1', 0, 1, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (2138, 'user_info_code', 2, 9, '地区信息', NULL, 'city', '市', 0, '下拉框', 'select id ID,name CN from area where lv = 2', 0, 1, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (2139, 'user_info_code', 2, 10, '地区信息', NULL, 'region', '区', 0, '下拉框', 'select id ID,name CN from area where lv = 3', 0, 1, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (2140, 'user_info_code', 1, 30, '基本信息', NULL, 'create_time', '创建时间', 0, '时间框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 50, 10, 93, 'TIMESTAMP', 19, 0);
INSERT INTO `eova_field` VALUES (3157, 'eova_user_code', 0, 50, '', NULL, 'name', '姓名', 0, '文本框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 50, 0);
INSERT INTO `eova_field` VALUES (3158, 'eova_user_code', 0, 60, '', NULL, 'memo', '备注', 0, '文本域', NULL, 0, 0, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 100, 0);
INSERT INTO `eova_field` VALUES (3161, 'eova_button_code', 0, 15, '', NULL, 'uri', '服务端URI入口', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, '按钮模版的服务端处理入口的URI', NULL, '', NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 100, 0);
INSERT INTO `eova_field` VALUES (3162, 'user', 0, 10, NULL, NULL, 'id', 'id', 1, '自增框', NULL, 0, 0, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 50, 20, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3163, 'user', 0, 20, '', NULL, 'login_id', '帐号', 0, '文本框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 30, 0);
INSERT INTO `eova_field` VALUES (3164, 'user', 0, 30, NULL, NULL, 'login_pwd', '密码', 0, '文本框', NULL, 0, 0, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 20, 20, 12, 'VARCHAR', 50, 0);
INSERT INTO `eova_field` VALUES (3165, 'user', 0, 40, NULL, NULL, 'rid', '角色', 0, '下拉框', 'select id ID,name CN from eova_role where lv > ${user.role.lv} order by id;ds=eova', 0, 1, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '0', NULL, 130, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3166, 'user', 0, 50, NULL, NULL, 'name', '姓名', 0, '文本框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 50, 0);
INSERT INTO `eova_field` VALUES (3167, 'user', 0, 60, NULL, NULL, 'img', '头像', 0, '文本框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, NULL, 'function(value,row,index,field){if(value){return \"<img style=\'height:80px\' src=\"+value+\">\";}return value;}', 130, 20, NULL, 20, 20, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (3168, 'user', 0, 70, NULL, NULL, 'sign', '签名', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, 130, 60, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (3169, 'user', 0, 80, NULL, NULL, 'memo', '备注', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, 130, 40, NULL, 0, 0, 12, 'VARCHAR', 100, 0);
INSERT INTO `eova_field` VALUES (3170, 'strategy', 0, 10, NULL, NULL, 'id', 'id', 1, '自增框', NULL, 0, 0, 0, 0, 1, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 50, 20, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3171, 'strategy', 0, 20, NULL, NULL, 'title', '标题', 0, '文本域', NULL, 1, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, 200, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (3172, 'strategy', 0, 30, NULL, NULL, 'headimg', '标题头像', 0, '文本域', NULL, 0, 0, 0, 0, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 20, 20, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (3173, 'strategy', 0, 40, NULL, NULL, 'content', '内容', 0, '文本域', NULL, 0, 0, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, 130, 80, NULL, 50, 50, -1, 'TEXT', 2147483647, 0);
INSERT INTO `eova_field` VALUES (3174, 'strategy', 0, 50, NULL, NULL, 'simple_show', '内容', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, 139, 100, NULL, 0, 0, 12, 'VARCHAR', 1000, 0);
INSERT INTO `eova_field` VALUES (3175, 'strategy', 0, 60, '', NULL, 'go_time', '出发时间', 0, '时间框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 93, 'DATETIME', 19, 0);
INSERT INTO `eova_field` VALUES (3176, 'strategy', 0, 70, '', NULL, 'day_sum', '天数', 0, '文本框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3177, 'strategy', 0, 80, '', NULL, 'expense', '花费', 0, '文本框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3178, 'strategy', 0, 90, NULL, NULL, 'publish_user', '发布者', 0, '查找框', 'select id ID,name 姓名 from user', 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3179, 'strategy', 0, 100, NULL, NULL, 'publish_username', '发布者', 0, '文本域', NULL, 0, 0, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 50, 50, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (3180, 'strategy', 0, 110, NULL, NULL, 'publish_time', '发布时间', 0, '时间框', NULL, 1, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 0, 0, 93, 'DATETIME', 19, 0);
INSERT INTO `eova_field` VALUES (3181, 'strategy', 0, 120, '', NULL, 'post_time', '最后回帖时间', 0, '时间框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 93, 'DATETIME', 19, 0);
INSERT INTO `eova_field` VALUES (3182, 'strategy', 0, 130, NULL, NULL, 'address', '涉及地点', 0, '文本域', NULL, 1, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (3183, 'strategy', 0, 140, '', NULL, 'main_address', '主要地址', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (3184, 'strategy', 0, 150, NULL, NULL, 'status', '状态', 0, '下拉框', 'select value ID,name CN from dicts where object = \'strategy\' and field = \'status\'', 1, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '1', 'function(value,row,index,field){if(value==\"审核通过\"){return \'<b style=\"color:#009688\">\'+value+\'</b>\';}else if(value==\"审核未通过\"){return \'<b style=\"color:#FF5722\">\'+value+\'</b>\';}else{return value;}}', 130, 20, NULL, 10, 10, -6, 'TINYINT', 3, 0);
INSERT INTO `eova_field` VALUES (3186, 'strategy', 0, 170, NULL, NULL, 'laud', '点赞数', 0, '文本框', NULL, 0, 0, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '0', NULL, 130, 20, NULL, 20, 20, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3187, 'strategy_reply', 0, 10, NULL, NULL, 'id', 'id', 1, '自增框', NULL, 0, 0, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 50, 20, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3188, 'strategy_reply', 0, 20, NULL, NULL, 'strategy_id', '所属攻略', 0, '查找框', 'select id ID,title 标题 from strategy ', 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 10, 10, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3189, 'strategy_reply', 0, 30, NULL, NULL, 'reply_user', '回复者', 0, '查找框', 'select id ID,name 姓名 from user', 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3190, 'strategy_reply', 0, 40, NULL, NULL, 'reply_username', '回复者', 0, '文本域', NULL, 0, 0, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 50, 50, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (3191, 'strategy_reply', 0, 50, NULL, NULL, 'to_reply_user', '被回复者', 0, '查找框', 'select id ID,name 姓名 from user', 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3192, 'strategy_reply', 0, 60, NULL, NULL, 'to_reply_username', '被回复者', 0, '文本域', NULL, 0, 0, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 50, 50, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (3193, 'strategy_reply', 0, 70, NULL, NULL, 'pid', 'pid', 0, '文本框', NULL, 0, 0, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, 130, 20, NULL, 20, 20, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3194, 'strategy_reply', 0, 80, NULL, NULL, 'content', '内容', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, 400, 100, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (3195, 'strategy_reply', 0, 90, '', NULL, 'reply_time', '回复时间', 0, '时间框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 93, 'DATETIME', 19, 0);
INSERT INTO `eova_field` VALUES (3197, 'strategy', 0, 160, NULL, NULL, 'readme', '阅读量', 0, '文本框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '0', NULL, 130, 20, NULL, 10, 10, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3198, 'note', 0, 10, '', NULL, 'id', 'id', 1, '自增框', NULL, 0, 1, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '', NULL, 130, 20, NULL, 50, 20, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3199, 'note', 0, 20, '', NULL, 'headimg', '镇楼图', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (3200, 'note', 0, 30, '', NULL, 'title', '标题', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (3201, 'note', 0, 40, '', NULL, 'content', '内容', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, -1, 'TEXT', 2147483647, 0);
INSERT INTO `eova_field` VALUES (3202, 'note', 0, 50, '', NULL, 'simple_show', '内容', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 1000, 0);
INSERT INTO `eova_field` VALUES (3203, 'note', 0, 60, '', NULL, 'publish_time', '发布时间', 0, '时间框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 93, 'DATETIME', 19, 0);
INSERT INTO `eova_field` VALUES (3204, 'note', 0, 70, '', NULL, 'publish_user', '发布者', 0, '文本框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3205, 'note', 0, 80, '', NULL, 'publish_username', 'publish_username', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (3206, 'note', 0, 90, '', NULL, 'post_time', '最后回复时间', 0, '时间框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 93, 'DATETIME', 19, 0);
INSERT INTO `eova_field` VALUES (3207, 'note', 0, 100, '', NULL, 'status', '状态', 0, '下拉框', 'select value ID,name CN from dicts where object = \'note\' and field = \'status\'', 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, -6, 'TINYINT', 3, 0);
INSERT INTO `eova_field` VALUES (3208, 'note', 0, 110, '', NULL, 'readme', '阅读量', 0, '文本框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3209, 'note', 0, 120, '', NULL, 'laud', '点赞', 0, '文本框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3222, 'note_reply', 0, 10, '', NULL, 'id', '评论id', 1, '自增框', NULL, 0, 1, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '', NULL, 130, 20, NULL, 50, 20, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3223, 'note_reply', 0, 20, '', NULL, 'note_id', '被回复贴id', 0, '文本框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3224, 'note_reply', 0, 30, '', NULL, 'reply_user_id', '回复者id', 0, '文本框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3225, 'note_reply', 0, 40, '', NULL, 'rely_user_name', '回复者姓名', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (3226, 'note_reply', 0, 50, '', NULL, 'to_reply_user_id', '被回复者id', 0, '文本框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3227, 'note_reply', 0, 60, '', NULL, 'to_reply_user_name', '被回复者姓名', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (3228, 'note_reply', 0, 70, '', NULL, 'pid', '回复评论id', 0, '文本框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3229, 'note_reply', 0, 80, '', NULL, 'content', '评论内容', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (3230, 'note_reply', 0, 90, '', NULL, 'reply_time', '发表时间', 0, '时间框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 93, 'DATETIME', 19, 0);
INSERT INTO `eova_field` VALUES (3231, 'reply', 0, 10, '', NULL, 'id', '评论id', 1, '自增框', NULL, 0, 1, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '', NULL, 130, 20, NULL, 50, 20, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3232, 'reply', 0, 20, '', NULL, 'note_id', '被回复贴id', 0, '文本框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3233, 'reply', 0, 30, '', NULL, 'reply_user_id', '回复者id', 0, '文本框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3234, 'reply', 0, 40, '', NULL, 'rely_user_name', '回复者姓名', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (3235, 'reply', 0, 50, '', NULL, 'to_reply_user_id', '被回复者id', 0, '文本框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3236, 'reply', 0, 60, '', NULL, 'to_reply_user_name', '被回复者姓名', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (3237, 'reply', 0, 70, '', NULL, 'pid', '回复评论id', 0, '文本框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3238, 'reply', 0, 80, '', NULL, 'content', '评论内容', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (3239, 'reply', 0, 90, '', NULL, 'reply_time', '发表时间', 0, '时间框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 93, 'DATETIME', 19, 0);
INSERT INTO `eova_field` VALUES (3240, 'test1', 0, 10, '', NULL, 'id', 'id', 1, '自增框', NULL, 0, 1, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '', NULL, 130, 20, NULL, 50, 20, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3241, 'test1', 0, 20, '', NULL, 'strategy_id', '所属攻略', 0, '文本框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3242, 'test1', 0, 30, '', NULL, 'reply_user', '回复者', 0, '文本框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3243, 'test1', 0, 40, '', NULL, 'reply_username', 'reply_username', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (3244, 'test1', 0, 50, '', NULL, 'to_reply_user', '被回复者', 0, '文本框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3245, 'test1', 0, 60, '', NULL, 'to_reply_username', 'to_reply_username', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (3246, 'test1', 0, 70, '', NULL, 'pid', 'pid', 0, '文本框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3247, 'test1', 0, 80, '', NULL, 'content', '内容', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (3248, 'test1', 0, 90, '', NULL, 'reply_time', '回复时间', 0, '时间框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 93, 'DATETIME', 19, 0);
INSERT INTO `eova_field` VALUES (3249, 'spot', 0, 10, '', NULL, 'id', 'id', 1, '自增框', NULL, 0, 1, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '', NULL, 130, 20, NULL, 50, 20, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3250, 'spot', 0, 20, '', NULL, 'title', '特价景区标题', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (3251, 'spot', 0, 30, '', NULL, 'img', '封面', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (3252, 'spot', 0, 40, '', NULL, 'simple_show', '内容概要', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 1000, 0);
INSERT INTO `eova_field` VALUES (3253, 'spot', 0, 50, '', NULL, 'content', '内容', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, -1, 'TEXT', 2147483647, 0);
INSERT INTO `eova_field` VALUES (3254, 'spot', 0, 60, '', NULL, 'post_time', '发布时间', 0, '时间框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 93, 'DATETIME', 19, 0);
INSERT INTO `eova_field` VALUES (3255, 'activity', 0, 10, '', NULL, 'id', '活动id', 1, '自增框', NULL, 0, 1, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '', NULL, 130, 20, NULL, 50, 20, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3256, 'activity', 0, 20, '', NULL, 'title', '活动名字', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (3257, 'activity', 0, 30, '', NULL, 'img', '新活动封面', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (3258, 'activity', 0, 40, '', NULL, 'simple_show', '内容概要', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 1000, 0);
INSERT INTO `eova_field` VALUES (3259, 'activity', 0, 50, '', NULL, 'content', '活动内容', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, -1, 'TEXT', 2147483647, 0);
INSERT INTO `eova_field` VALUES (3260, 'activity', 0, 60, '', NULL, 'post_time', '发布时间', 0, '时间框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 93, 'DATETIME', 19, 0);
INSERT INTO `eova_field` VALUES (3261, 'activity', 0, 70, '', NULL, 'status', '状态', 0, '下拉框', 'select value ID,name CN from dicts where object = \'newactivity\' and field = \'status\'', 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '1', NULL, 130, 20, NULL, 0, 0, -6, 'TINYINT', 3, 0);
INSERT INTO `eova_field` VALUES (3262, 'news', 0, 10, '', NULL, 'id', 'id', 1, '自增框', NULL, 0, 1, 0, 1, 1, 1, 1, 1, 0, NULL, NULL, '', NULL, 130, 20, NULL, 50, 20, 4, 'INT', 10, 0);
INSERT INTO `eova_field` VALUES (3263, 'news', 0, 20, '', NULL, 'title', '标题', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 12, 'VARCHAR', 255, 0);
INSERT INTO `eova_field` VALUES (3264, 'news', 0, 30, '', NULL, 'content', '内容', 0, '文本域', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, -1, 'TEXT', 2147483647, 0);
INSERT INTO `eova_field` VALUES (3265, 'news', 0, 40, '', NULL, 'post_time', '发布时间', 0, '时间框', NULL, 0, 1, 0, 1, 1, 1, 1, 0, 0, NULL, NULL, '', NULL, 130, 20, NULL, 0, 0, 93, 'DATETIME', 19, 0);

-- ----------------------------
-- Table structure for eova_log
-- ----------------------------
DROP TABLE IF EXISTS `eova_log`;
CREATE TABLE `eova_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作用户',
  `type` int(11) NOT NULL COMMENT '日志类型',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作IP',
  `info` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作详情',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 159 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'EOVA操作日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of eova_log
-- ----------------------------
INSERT INTO `eova_log` VALUES (1, '1', 2, '0:0:0:0:0:0:0:1', 'test_info[1]', '2019-03-09 15:32:05');
INSERT INTO `eova_log` VALUES (2, '1', 1, '0:0:0:0:0:0:0:1', 'eova_button_code', '2019-03-12 22:20:02');
INSERT INTO `eova_log` VALUES (3, '1', 1, '0:0:0:0:0:0:0:1', 'eova_button_code', '2019-03-12 22:20:28');
INSERT INTO `eova_log` VALUES (4, '1', 2, '0:0:0:0:0:0:0:1', 'eova_user_code[4]', '2019-03-19 21:58:47');
INSERT INTO `eova_log` VALUES (5, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[1006]', '2019-03-20 20:13:32');
INSERT INTO `eova_log` VALUES (6, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[1007]', '2019-03-20 20:13:32');
INSERT INTO `eova_log` VALUES (7, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[1009]', '2019-03-20 20:13:32');
INSERT INTO `eova_log` VALUES (8, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[1053]', '2019-03-20 20:13:32');
INSERT INTO `eova_log` VALUES (9, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[1035]', '2019-03-20 20:13:41');
INSERT INTO `eova_log` VALUES (10, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[1048]', '2019-03-20 20:13:41');
INSERT INTO `eova_log` VALUES (11, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[1049]', '2019-03-20 20:13:41');
INSERT INTO `eova_log` VALUES (12, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[1060]', '2019-03-20 20:13:49');
INSERT INTO `eova_log` VALUES (13, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[1001]', '2019-03-20 20:13:49');
INSERT INTO `eova_log` VALUES (14, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[1005]', '2019-03-20 20:13:49');
INSERT INTO `eova_log` VALUES (15, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[1054]', '2019-03-20 20:13:49');
INSERT INTO `eova_log` VALUES (16, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[1010]', '2019-03-20 20:13:49');
INSERT INTO `eova_log` VALUES (17, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[1050]', '2019-03-20 20:13:49');
INSERT INTO `eova_log` VALUES (18, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[1015]', '2019-03-20 20:13:56');
INSERT INTO `eova_log` VALUES (19, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[1056]', '2019-03-20 20:13:56');
INSERT INTO `eova_log` VALUES (20, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[1057]', '2019-03-20 20:13:56');
INSERT INTO `eova_log` VALUES (21, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[1040]', '2019-03-20 20:13:56');
INSERT INTO `eova_log` VALUES (22, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[1047]', '2019-03-20 20:14:06');
INSERT INTO `eova_log` VALUES (23, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[1044]', '2019-03-20 20:14:06');
INSERT INTO `eova_log` VALUES (24, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[1046]', '2019-03-20 20:14:10');
INSERT INTO `eova_log` VALUES (25, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[1011]', '2019-03-20 20:14:14');
INSERT INTO `eova_log` VALUES (26, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[1029]', '2019-03-20 20:14:14');
INSERT INTO `eova_log` VALUES (27, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[1063]', '2019-03-20 20:14:18');
INSERT INTO `eova_log` VALUES (28, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[1013]', '2019-03-20 20:14:21');
INSERT INTO `eova_log` VALUES (29, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[1012]', '2019-03-20 20:14:24');
INSERT INTO `eova_log` VALUES (30, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[1000]', '2019-03-20 20:14:27');
INSERT INTO `eova_log` VALUES (31, '1', 3, '0:0:0:0:0:0:0:1', 'eova_object_code[1128]', '2019-03-20 20:15:02');
INSERT INTO `eova_log` VALUES (32, '1', 3, '0:0:0:0:0:0:0:1', 'eova_object_code[1124]', '2019-03-20 20:15:02');
INSERT INTO `eova_log` VALUES (33, '1', 3, '0:0:0:0:0:0:0:1', 'eova_object_code[1123]', '2019-03-20 20:15:02');
INSERT INTO `eova_log` VALUES (34, '1', 3, '0:0:0:0:0:0:0:1', 'eova_object_code[1122]', '2019-03-20 20:15:02');
INSERT INTO `eova_log` VALUES (35, '1', 3, '0:0:0:0:0:0:0:1', 'eova_object_code[1119]', '2019-03-20 20:15:02');
INSERT INTO `eova_log` VALUES (36, '1', 3, '0:0:0:0:0:0:0:1', 'eova_object_code[1110]', '2019-03-20 20:15:02');
INSERT INTO `eova_log` VALUES (37, '1', 3, '0:0:0:0:0:0:0:1', 'eova_object_code[1098]', '2019-03-20 20:15:02');
INSERT INTO `eova_log` VALUES (38, '1', 3, '0:0:0:0:0:0:0:1', 'eova_object_code[1096]', '2019-03-20 20:15:02');
INSERT INTO `eova_log` VALUES (39, '1', 3, '0:0:0:0:0:0:0:1', 'eova_object_code[1053]', '2019-03-20 20:15:02');
INSERT INTO `eova_log` VALUES (40, '1', 3, '0:0:0:0:0:0:0:1', 'eova_object_code[1018]', '2019-03-20 20:15:02');
INSERT INTO `eova_log` VALUES (41, '1', 3, '0:0:0:0:0:0:0:1', 'eova_object_code[1017]', '2019-03-20 20:15:02');
INSERT INTO `eova_log` VALUES (42, '1', 3, '0:0:0:0:0:0:0:1', 'eova_object_code[1016]', '2019-03-20 20:15:02');
INSERT INTO `eova_log` VALUES (43, '1', 3, '0:0:0:0:0:0:0:1', 'eova_object_code[1015]', '2019-03-20 20:15:02');
INSERT INTO `eova_log` VALUES (44, '1', 3, '0:0:0:0:0:0:0:1', 'eova_object_code[1014]', '2019-03-20 20:15:02');
INSERT INTO `eova_log` VALUES (45, '1', 3, '0:0:0:0:0:0:0:1', 'eova_object_code[1012]', '2019-03-20 20:15:09');
INSERT INTO `eova_log` VALUES (46, '1', 3, '0:0:0:0:0:0:0:1', 'eova_object_code[1011]', '2019-03-20 20:15:09');
INSERT INTO `eova_log` VALUES (47, '1', 3, '0:0:0:0:0:0:0:1', 'eova_object_code[1010]', '2019-03-20 20:15:09');
INSERT INTO `eova_log` VALUES (48, '1', 3, '0:0:0:0:0:0:0:1', 'eova_object_code[1009]', '2019-03-20 20:15:09');
INSERT INTO `eova_log` VALUES (49, '1', 3, '0:0:0:0:0:0:0:1', 'eova_object_code[1008]', '2019-03-20 20:15:09');
INSERT INTO `eova_log` VALUES (50, '1', 3, '0:0:0:0:0:0:0:1', 'eova_object_code[1006]', '2019-03-20 20:15:09');
INSERT INTO `eova_log` VALUES (51, '1', 3, '0:0:0:0:0:0:0:1', 'eova_object_code[1005]', '2019-03-20 20:15:09');
INSERT INTO `eova_log` VALUES (52, '1', 3, '0:0:0:0:0:0:0:1', 'eova_object_code[1004]', '2019-03-20 20:15:09');
INSERT INTO `eova_log` VALUES (53, '1', 3, '0:0:0:0:0:0:0:1', 'eova_object_code[1003]', '2019-03-20 20:15:09');
INSERT INTO `eova_log` VALUES (54, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[24]', '2019-03-20 20:15:38');
INSERT INTO `eova_log` VALUES (55, '1', 3, '0:0:0:0:0:0:0:1', 'eova_role_code[4]', '2019-03-20 20:16:08');
INSERT INTO `eova_log` VALUES (56, '1', 2, '0:0:0:0:0:0:0:1', 'eova_role_code[3]', '2019-03-20 20:16:27');
INSERT INTO `eova_log` VALUES (57, '1', 3, '0:0:0:0:0:0:0:1', 'eova_field_code[3185]', '2019-03-20 22:02:19');
INSERT INTO `eova_log` VALUES (58, '1', 3, '0:0:0:0:0:0:0:1', 'eova_field_code[3196]', '2019-03-20 22:04:54');
INSERT INTO `eova_log` VALUES (59, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3179]', '2019-03-20 22:07:29');
INSERT INTO `eova_log` VALUES (60, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3178]', '2019-03-20 22:07:29');
INSERT INTO `eova_log` VALUES (61, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3172]', '2019-03-20 22:07:59');
INSERT INTO `eova_log` VALUES (62, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3170]', '2019-03-20 22:07:59');
INSERT INTO `eova_log` VALUES (63, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3173]', '2019-03-20 22:08:17');
INSERT INTO `eova_log` VALUES (64, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3186]', '2019-03-20 22:08:56');
INSERT INTO `eova_log` VALUES (65, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3173]', '2019-03-20 22:10:22');
INSERT INTO `eova_log` VALUES (66, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3171]', '2019-03-20 22:43:24');
INSERT INTO `eova_log` VALUES (67, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3171]', '2019-03-20 22:43:44');
INSERT INTO `eova_log` VALUES (68, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3174]', '2019-03-20 22:43:44');
INSERT INTO `eova_log` VALUES (69, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3174]', '2019-03-20 22:43:57');
INSERT INTO `eova_log` VALUES (70, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3187]', '2019-03-20 22:44:50');
INSERT INTO `eova_log` VALUES (71, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3188]', '2019-03-20 22:44:50');
INSERT INTO `eova_log` VALUES (72, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3190]', '2019-03-20 22:44:50');
INSERT INTO `eova_log` VALUES (73, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3192]', '2019-03-20 22:44:50');
INSERT INTO `eova_log` VALUES (74, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3193]', '2019-03-20 22:45:01');
INSERT INTO `eova_log` VALUES (75, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3194]', '2019-03-20 22:45:51');
INSERT INTO `eova_log` VALUES (76, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3191]', '2019-03-20 22:46:06');
INSERT INTO `eova_log` VALUES (77, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3189]', '2019-03-20 22:46:06');
INSERT INTO `eova_log` VALUES (78, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3192]', '2019-03-20 22:46:06');
INSERT INTO `eova_log` VALUES (79, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3189]', '2019-03-20 22:48:37');
INSERT INTO `eova_log` VALUES (80, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3191]', '2019-03-20 22:48:37');
INSERT INTO `eova_log` VALUES (81, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3192]', '2019-03-20 22:48:37');
INSERT INTO `eova_log` VALUES (82, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3190]', '2019-03-20 22:48:37');
INSERT INTO `eova_log` VALUES (83, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3189]', '2019-03-20 22:48:49');
INSERT INTO `eova_log` VALUES (84, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3178]', '2019-03-20 22:49:29');
INSERT INTO `eova_log` VALUES (85, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3179]', '2019-03-20 22:49:29');
INSERT INTO `eova_log` VALUES (86, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3188]', '2019-03-20 22:50:34');
INSERT INTO `eova_log` VALUES (87, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3192]', '2019-03-20 22:51:15');
INSERT INTO `eova_log` VALUES (88, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3190]', '2019-03-20 22:51:15');
INSERT INTO `eova_log` VALUES (89, '1', 2, '0:0:0:0:0:0:0:1', 'eova_menu_code[3]', '2019-03-20 22:53:59');
INSERT INTO `eova_log` VALUES (90, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3173]', '2019-03-20 22:54:44');
INSERT INTO `eova_log` VALUES (91, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3174]', '2019-03-20 22:54:44');
INSERT INTO `eova_log` VALUES (92, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3174]', '2019-03-20 22:54:57');
INSERT INTO `eova_log` VALUES (93, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3194]', '2019-03-20 22:55:37');
INSERT INTO `eova_log` VALUES (94, '1', 1, '0:0:0:0:0:0:0:1', 'eova_button_code', '2019-03-20 22:57:47');
INSERT INTO `eova_log` VALUES (95, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3184]', '2019-03-20 23:44:27');
INSERT INTO `eova_log` VALUES (96, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3184]', '2019-03-20 23:46:06');
INSERT INTO `eova_log` VALUES (97, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3184]', '2019-03-20 23:46:52');
INSERT INTO `eova_log` VALUES (98, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3184]', '2019-03-20 23:47:13');
INSERT INTO `eova_log` VALUES (99, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3184]', '2019-03-20 23:47:42');
INSERT INTO `eova_log` VALUES (100, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3184]', '2019-03-20 23:48:14');
INSERT INTO `eova_log` VALUES (101, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3184]', '2019-03-20 23:48:41');
INSERT INTO `eova_log` VALUES (102, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3184]', '2019-03-20 23:49:18');
INSERT INTO `eova_log` VALUES (103, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3171]', '2019-03-20 23:49:18');
INSERT INTO `eova_log` VALUES (104, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3180]', '2019-03-20 23:49:18');
INSERT INTO `eova_log` VALUES (105, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3182]', '2019-03-20 23:49:18');
INSERT INTO `eova_log` VALUES (106, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3197]', '2019-03-22 20:18:45');
INSERT INTO `eova_log` VALUES (107, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3184]', '2019-03-22 20:18:45');
INSERT INTO `eova_log` VALUES (108, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[1066]', '2019-03-22 20:21:48');
INSERT INTO `eova_log` VALUES (109, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3164]', '2019-03-22 20:43:06');
INSERT INTO `eova_log` VALUES (110, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3165]', '2019-03-22 20:43:55');
INSERT INTO `eova_log` VALUES (111, '1', 2, '0:0:0:0:0:0:0:1', 'eova_object_code[1129]', '2019-03-22 20:44:28');
INSERT INTO `eova_log` VALUES (112, '1', 2, '0:0:0:0:0:0:0:1', 'eova_object_code[1129]', '2019-03-22 20:45:26');
INSERT INTO `eova_log` VALUES (113, '1', 2, '0:0:0:0:0:0:0:1', 'eova_object_code[1129]', '2019-03-22 20:45:45');
INSERT INTO `eova_log` VALUES (114, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3167]', '2019-03-22 20:46:25');
INSERT INTO `eova_log` VALUES (115, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3162]', '2019-03-22 20:46:31');
INSERT INTO `eova_log` VALUES (116, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3167]', '2019-03-22 20:47:02');
INSERT INTO `eova_log` VALUES (117, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3167]', '2019-03-22 20:48:37');
INSERT INTO `eova_log` VALUES (118, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3167]', '2019-03-22 20:49:13');
INSERT INTO `eova_log` VALUES (119, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3167]', '2019-03-22 20:50:21');
INSERT INTO `eova_log` VALUES (120, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3166]', '2019-03-22 20:52:31');
INSERT INTO `eova_log` VALUES (121, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3167]', '2019-03-22 20:52:31');
INSERT INTO `eova_log` VALUES (122, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3167]', '2019-03-22 20:53:08');
INSERT INTO `eova_log` VALUES (123, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3167]', '2019-03-22 20:53:51');
INSERT INTO `eova_log` VALUES (124, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3167]', '2019-03-22 20:54:16');
INSERT INTO `eova_log` VALUES (125, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3167]', '2019-03-22 20:54:34');
INSERT INTO `eova_log` VALUES (126, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3167]', '2019-03-22 20:55:24');
INSERT INTO `eova_log` VALUES (127, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3168]', '2019-03-22 20:55:50');
INSERT INTO `eova_log` VALUES (128, '1', 2, '0:0:0:0:0:0:0:1', 'eova_field_code[3169]', '2019-03-22 20:55:50');
INSERT INTO `eova_log` VALUES (129, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[901]', '2019-03-22 20:56:26');
INSERT INTO `eova_log` VALUES (130, '1', 2, '0:0:0:0:0:0:0:1', 'user[1]', '2019-03-22 20:57:04');
INSERT INTO `eova_log` VALUES (131, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[1069]', '2019-04-23 12:36:02');
INSERT INTO `eova_log` VALUES (132, '1', 2, '0:0:0:0:0:0:0:1', 'eova_object_code[1132]', '2019-04-23 12:38:27');
INSERT INTO `eova_log` VALUES (133, '1', 3, '0:0:0:0:0:0:0:1', 'eova_object_code[1134]', '2019-04-23 12:51:28');
INSERT INTO `eova_log` VALUES (134, '1', 3, '0:0:0:0:0:0:0:1', 'eova_field_code[3210]', '2019-04-23 13:10:35');
INSERT INTO `eova_log` VALUES (135, '1', 3, '0:0:0:0:0:0:0:1', 'eova_field_code[3218]', '2019-04-23 13:11:06');
INSERT INTO `eova_log` VALUES (136, '1', 3, '0:0:0:0:0:0:0:1', 'eova_field_code[3217]', '2019-04-23 13:11:10');
INSERT INTO `eova_log` VALUES (137, '1', 3, '0:0:0:0:0:0:0:1', 'eova_field_code[3216]', '2019-04-23 13:11:13');
INSERT INTO `eova_log` VALUES (138, '1', 3, '0:0:0:0:0:0:0:1', 'eova_field_code[3215]', '2019-04-23 13:11:16');
INSERT INTO `eova_log` VALUES (139, '1', 3, '0:0:0:0:0:0:0:1', 'eova_field_code[3211]', '2019-04-23 13:11:20');
INSERT INTO `eova_log` VALUES (140, '1', 3, '0:0:0:0:0:0:0:1', 'eova_field_code[3212]', '2019-04-23 13:11:23');
INSERT INTO `eova_log` VALUES (141, '1', 3, '0:0:0:0:0:0:0:1', 'eova_field_code[3213]', '2019-04-23 13:11:26');
INSERT INTO `eova_log` VALUES (142, '1', 3, '0:0:0:0:0:0:0:1', 'eova_field_code[3214]', '2019-04-23 13:11:29');
INSERT INTO `eova_log` VALUES (143, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[1071]', '2019-04-26 16:52:03');
INSERT INTO `eova_log` VALUES (144, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[1072]', '2019-04-26 16:59:32');
INSERT INTO `eova_log` VALUES (145, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[1073]', '2019-04-28 09:03:58');
INSERT INTO `eova_log` VALUES (146, '1', 2, '0:0:0:0:0:0:0:1', 'strategy[17]', '2019-04-29 01:26:08');
INSERT INTO `eova_log` VALUES (147, '1', 3, '0:0:0:0:0:0:0:1', 'strategy_reply[13]', '2019-04-29 01:34:15');
INSERT INTO `eova_log` VALUES (148, '1', 3, '0:0:0:0:0:0:0:1', 'strategy_reply[17]', '2019-04-29 01:34:21');
INSERT INTO `eova_log` VALUES (149, '1', 3, '0:0:0:0:0:0:0:1', 'strategy[1]', '2019-04-29 09:31:33');
INSERT INTO `eova_log` VALUES (150, '1', 3, '0:0:0:0:0:0:0:1', 'note[3]', '2019-04-29 09:32:14');
INSERT INTO `eova_log` VALUES (151, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[1075]', '2019-04-29 09:32:30');
INSERT INTO `eova_log` VALUES (152, '1', 3, '0:0:0:0:0:0:0:1', 'eova_menu_code[1076]', '2019-04-29 09:32:35');
INSERT INTO `eova_log` VALUES (153, '1', 3, '0:0:0:0:0:0:0:1', 'news[4]', '2019-04-29 09:46:30');
INSERT INTO `eova_log` VALUES (154, '1', 3, '0:0:0:0:0:0:0:1', 'spot[1]', '2019-04-29 09:46:48');
INSERT INTO `eova_log` VALUES (155, '1', 3, '0:0:0:0:0:0:0:1', 'activity[4]', '2019-04-29 09:47:05');
INSERT INTO `eova_log` VALUES (156, '1', 3, '0:0:0:0:0:0:0:1', 'strategy[6]', '2019-04-29 10:57:52');
INSERT INTO `eova_log` VALUES (157, '2', 3, '0:0:0:0:0:0:0:1', 'note[5]', '2019-05-06 21:02:59');
INSERT INTO `eova_log` VALUES (158, '1', 3, '0:0:0:0:0:0:0:1', 'user[6]', '2019-05-06 21:22:45');

-- ----------------------------
-- Table structure for eova_menu
-- ----------------------------
DROP TABLE IF EXISTS `eova_menu`;
CREATE TABLE `eova_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编码',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单类型',
  `iconskip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `order_num` int(11) NULL DEFAULT 0 COMMENT '序号',
  `parent_id` int(11) NULL DEFAULT 0 COMMENT '父节点',
  `open` tinyint(1) NULL DEFAULT 1 COMMENT '是否展开',
  `biz_intercept` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '自定义业务拦截器',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '自定义URL',
  `config` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单配置JSON',
  `diy_js` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '依赖JS文件',
  `is_hide` tinyint(1) NULL DEFAULT 0 COMMENT '是否隐藏',
  `filter` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '初始数据过滤条件',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_code`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1080 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'EOVA菜单' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of eova_menu
-- ----------------------------
INSERT INTO `eova_menu` VALUES (1, 'eova', '平台维护', 'dir', 'eova-icon169', 3, 0, 0, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `eova_menu` VALUES (3, 'biz', '综合管理', 'dir', 'eova-icon877', 1, 0, 1, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `eova_menu` VALUES (20, 'eova_menu', '菜单管理', 'single_tree', 'eova-icon43', 30, 1, 1, NULL, NULL, '{\"objectCode\":\"eova_menu_code\",\"tree\":{\"iconField\":\"iconskip\",\"parentField\":\"parent_id\",\"treeField\":\"name\",\"idField\":\"id\",\"rootPid\":\"0\"}}', NULL, 0, NULL);
INSERT INTO `eova_menu` VALUES (21, 'eova_button', '按钮管理', 'tree_grid', 'eova-icon169', 40, 1, 1, '', NULL, '{\"objectCode\":\"eova_button_code\",\"objectField\":\"menu_code\",\"tree\":{\"iconField\":\"iconskip\",\"idField\":\"id\",\"objectCode\":\"eova_menu_code\",\"objectField\":\"code\",\"parentField\":\"parent_id\",\"treeField\":\"name\",\"rootPid\":\"0\"}}', '', 0, '');
INSERT INTO `eova_menu` VALUES (22, 'eova_object', '元数据管理', 'master_slave_grid', 'eova-icon395', 50, 1, 1, NULL, NULL, '{\"fields\":[\"object_code\"],\"objectCode\":\"eova_object_code\",\"objectField\":\"code\",\"objects\":[\"eova_field_code\"]}', NULL, 0, NULL);
INSERT INTO `eova_menu` VALUES (25, 'eova_task', '定时调度', 'single_grid', 'eova-icon280', 60, 1, 1, NULL, '', '{\"objectCode\":\"eova_task_code\"}', NULL, 0, NULL);
INSERT INTO `eova_menu` VALUES (26, 'eova_code', '神器·宝箱', 'diy', 'eova-icon157', 70, 1, 1, '', '/code', '{}', '', 0, '');
INSERT INTO `eova_menu` VALUES (900, 'sys', '系统管理', 'dir', 'eova-icon294', 1, 0, 0, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `eova_menu` VALUES (901, 'sys_users', '用户管理', 'single_grid', 'eova-icon518', 0, 900, 1, '', '', '{\"objectCode\":\"eova_user_code\",\"params\":{}}', '', 1, '');
INSERT INTO `eova_menu` VALUES (902, 'sys_auth_role', '角色管理', 'single_grid', 'eova-icon525', 2, 900, 1, '', NULL, '{\"objectCode\":\"eova_role_code\"}', '', 0, '');
INSERT INTO `eova_menu` VALUES (903, 'sys_log', '系统日志', 'single_grid', 'eova-icon1058', 3, 900, 1, '', NULL, '{\"objectCode\":\"eova_log_code\"}', '', 0, '');
INSERT INTO `eova_menu` VALUES (1061, 'eova_druid', '性能监控', 'diy', 'eova-icon473', 1, 1, 1, NULL, '/druid', '{\"params\":{}}', NULL, 0, NULL);
INSERT INTO `eova_menu` VALUES (1062, 'font', '前台', 'dir', 'eova-icon64', 1, 0, 1, NULL, '', '{\"params\":{}}', NULL, 0, NULL);
INSERT INTO `eova_menu` VALUES (1065, 'menugl', '攻略管理', 'master_slave_grid', 'eova-icon256', 1, 3, 1, NULL, '', '{\"fields\":[\"strategy_id\"],\"objectCode\":\"strategy\",\"objectField\":\"id\",\"objects\":[\"strategy_reply\"],\"params\":{}}', NULL, 0, NULL);
INSERT INTO `eova_menu` VALUES (1067, 'findex', '前台首页', 'diy', 'eova-icon461', 1, 3, 1, NULL, '/fIndex', '{\"params\":{}}', NULL, 0, NULL);
INSERT INTO `eova_menu` VALUES (1068, 'user', '用户管理 ', 'single_grid', 'eova-icon1125', 2, 900, 1, NULL, '', '{\"objectCode\":\"user\",\"params\":{}}', NULL, 0, NULL);
INSERT INTO `eova_menu` VALUES (1070, 'notemanage', '交流管理', 'master_slave_grid', 'eova-icon138', 1, 3, 1, NULL, '', '{\"fields\":[\"note_id\"],\"objectCode\":\"note\",\"objectField\":\"id\",\"objects\":[\"note_reply\"],\"params\":{}}', NULL, 0, NULL);
INSERT INTO `eova_menu` VALUES (1074, 'addNews', '新增资讯', 'diy', 'eova-icon9', 1, 3, 1, NULL, '/news/write', '{\"params\":{}}', NULL, 0, NULL);
INSERT INTO `eova_menu` VALUES (1077, 'manageNews', '网站资讯管理', 'single_grid', 'eova-icon50', 1, 3, 1, NULL, '', '{\"objectCode\":\"news\",\"params\":{}}', NULL, 0, NULL);
INSERT INTO `eova_menu` VALUES (1078, 'manage', '景点资讯管理', 'single_grid', 'eova-icon49', 1, 3, 1, NULL, '', '{\"objectCode\":\"spot\",\"params\":{}}', NULL, 0, NULL);
INSERT INTO `eova_menu` VALUES (1079, 'manageActivity', '最新活动管理', 'single_grid', '', 1, 3, 1, NULL, '', '{\"objectCode\":\"activity\",\"params\":{}}', NULL, 0, NULL);

-- ----------------------------
-- Table structure for eova_object
-- ----------------------------
DROP TABLE IF EXISTS `eova_object`;
CREATE TABLE `eova_object`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '对象编码',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '对象名称',
  `view_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '查询数据视图',
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保存数据主表',
  `pk_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主键',
  `data_source` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'main' COMMENT '数据源',
  `is_single` tinyint(1) NULL DEFAULT 1 COMMENT '是否单选',
  `is_celledit` tinyint(1) NULL DEFAULT 0 COMMENT '是否可行内编辑',
  `is_show_num` tinyint(1) NULL DEFAULT 1 COMMENT '是否显示行号',
  `is_first_load` tinyint(1) NULL DEFAULT 1 COMMENT '是否初始加载',
  `filter` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '初始数据过滤条件',
  `default_order` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '默认排序字段(desc)',
  `diy_card` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '自定义卡片面板',
  `diy_js` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '依赖JS文件',
  `biz_intercept` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '自定义业务拦截器',
  `view_sql` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视图SQL',
  `config` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拓展配置',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_code`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1139 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'EOVA元对象' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of eova_object
-- ----------------------------
INSERT INTO `eova_object` VALUES (1, 'meta_template', '元对象模版数据', NULL, 'eova_template', 'id', 'eova', 1, 0, 1, 1, NULL, NULL, NULL, NULL, '', NULL, NULL);
INSERT INTO `eova_object` VALUES (2, 'eova_menu_code', '菜单', '', 'eova_menu', 'id', 'eova', 0, 0, 1, 1, '', 'parent_id,order_num', NULL, '', 'com.eova.core.menu.MenuIntercept', '', '');
INSERT INTO `eova_object` VALUES (3, 'eova_object_code', '对象', '', 'eova_object', 'id', 'eova', 0, 0, 1, 1, 'and id > 999', 'id desc', NULL, '', 'com.eova.core.object.ObjectIntercept', NULL, '');
INSERT INTO `eova_object` VALUES (4, 'eova_field_code', '字段', '', 'eova_field', 'id', 'eova', 1, 1, 1, 1, '', 'fieldnum,order_num', NULL, '', '', NULL, NULL);
INSERT INTO `eova_object` VALUES (5, 'eova_button_code', '按钮', '', 'eova_button', 'id', 'eova', 0, 0, 1, 1, 'and id > 999 and is_base = 0', 'id desc', NULL, '', '', NULL, '');
INSERT INTO `eova_object` VALUES (6, 'eova_user_code', '用户', '', 'eova_user', 'id', 'eova', 1, 0, 1, 1, 'and rid in (select id from eova_role where lv > ${user.role.lv})', 'id desc', NULL, '', 'com.eova.user.UserIntercept', NULL, '');
INSERT INTO `eova_object` VALUES (7, 'eova_role_code', '角色管理', '', 'eova_role', 'id', 'eova', 1, 0, 1, 1, '<%if(user.role.lv != 0){%>\r\n${user.role.lv} < lv\r\n<%}%>', 'id desc', NULL, '', 'com.eova.core.role.RoleIntercept', '', '');
INSERT INTO `eova_object` VALUES (8, 'eova_task_code', '定时调度', NULL, 'eova_task', 'id', 'eova', 1, 0, 1, 1, NULL, NULL, NULL, NULL, 'com.eova.core.task.TaskIntercept', NULL, NULL);
INSERT INTO `eova_object` VALUES (9, 'eova_log_code', '操作日志', NULL, 'eova_log', 'id', 'eova', 1, 0, 1, 1, NULL, 'id desc', NULL, NULL, '', NULL, NULL);
INSERT INTO `eova_object` VALUES (100, 'user_info_code', '用户详细信息', '', 'user_info', 'id', 'main', 1, 0, 1, 1, '', '', NULL, '/ui/js/diy/area.js', 'com.eova.user.UserInfoIntercept', NULL, NULL);
INSERT INTO `eova_object` VALUES (1129, 'user', '用户', NULL, 'user', 'id', 'main', 1, 0, 1, 1, 'and rid in (select id from eova.eova_role where lv >= ${user.role.lv})', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `eova_object` VALUES (1130, 'strategy', '攻略', NULL, 'strategy', 'id', 'main', 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `eova_object` VALUES (1131, 'strategy_reply', '攻略评论', NULL, 'strategy_reply', 'id', 'main', 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `eova_object` VALUES (1132, 'note', '交流贴', NULL, 'note', 'id', 'main', 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `eova_object` VALUES (1133, 'note_reply', '交流贴评论', NULL, 'note_reply', 'id', 'main', 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `eova_object` VALUES (1134, 'reply', 'note_reply', NULL, 'note_reply', 'id', 'main', 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `eova_object` VALUES (1135, 'test1', 'test1', NULL, 'strategy_reply', 'id', 'main', 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `eova_object` VALUES (1136, 'spot', 'spot', NULL, 'spot', 'id', 'main', 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `eova_object` VALUES (1137, 'activity', 'activity', NULL, 'newactivity', 'id', 'main', 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `eova_object` VALUES (1138, 'news', 'news', NULL, 'news', 'id', 'main', 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for eova_role
-- ----------------------------
DROP TABLE IF EXISTS `eova_role`;
CREATE TABLE `eova_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名',
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色描述',
  `lv` int(11) NULL DEFAULT 0 COMMENT '权限级别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'EOVA角色' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of eova_role
-- ----------------------------
INSERT INTO `eova_role` VALUES (1, '超级管理员', '开发者权限(禁止作为业务权限)', 0);
INSERT INTO `eova_role` VALUES (2, '管理员', '管理所有可用功能', 10);
INSERT INTO `eova_role` VALUES (3, '用户', '普通用户', 20);

-- ----------------------------
-- Table structure for eova_role_btn
-- ----------------------------
DROP TABLE IF EXISTS `eova_role_btn`;
CREATE TABLE `eova_role_btn`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL COMMENT '角色',
  `bid` int(11) NOT NULL COMMENT '功能',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2209 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'EOVA角色按钮' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of eova_role_btn
-- ----------------------------
INSERT INTO `eova_role_btn` VALUES (1823, 5, 116);
INSERT INTO `eova_role_btn` VALUES (1824, 5, 110);
INSERT INTO `eova_role_btn` VALUES (1941, 1, 116);
INSERT INTO `eova_role_btn` VALUES (1942, 1, 112);
INSERT INTO `eova_role_btn` VALUES (1943, 1, 113);
INSERT INTO `eova_role_btn` VALUES (1944, 1, 110);
INSERT INTO `eova_role_btn` VALUES (1945, 1, 111);
INSERT INTO `eova_role_btn` VALUES (1946, 1, 33);
INSERT INTO `eova_role_btn` VALUES (1947, 1, 43);
INSERT INTO `eova_role_btn` VALUES (1948, 1, 42);
INSERT INTO `eova_role_btn` VALUES (1949, 1, 41);
INSERT INTO `eova_role_btn` VALUES (1950, 1, 40);
INSERT INTO `eova_role_btn` VALUES (1951, 1, 82);
INSERT INTO `eova_role_btn` VALUES (1952, 1, 83);
INSERT INTO `eova_role_btn` VALUES (1953, 1, 80);
INSERT INTO `eova_role_btn` VALUES (1954, 1, 81);
INSERT INTO `eova_role_btn` VALUES (1955, 1, 86);
INSERT INTO `eova_role_btn` VALUES (1956, 1, 87);
INSERT INTO `eova_role_btn` VALUES (1957, 1, 84);
INSERT INTO `eova_role_btn` VALUES (1958, 1, 1134);
INSERT INTO `eova_role_btn` VALUES (1959, 1, 1133);
INSERT INTO `eova_role_btn` VALUES (1960, 1, 1135);
INSERT INTO `eova_role_btn` VALUES (1961, 1, 22);
INSERT INTO `eova_role_btn` VALUES (1962, 1, 23);
INSERT INTO `eova_role_btn` VALUES (1963, 1, 25);
INSERT INTO `eova_role_btn` VALUES (1964, 1, 129);
INSERT INTO `eova_role_btn` VALUES (1965, 1, 26);
INSERT INTO `eova_role_btn` VALUES (1966, 1, 27);
INSERT INTO `eova_role_btn` VALUES (1967, 1, 28);
INSERT INTO `eova_role_btn` VALUES (1968, 1, 29);
INSERT INTO `eova_role_btn` VALUES (1969, 1, 3);
INSERT INTO `eova_role_btn` VALUES (1970, 1, 1);
INSERT INTO `eova_role_btn` VALUES (1971, 1, 7);
INSERT INTO `eova_role_btn` VALUES (1972, 1, 30);
INSERT INTO `eova_role_btn` VALUES (1973, 1, 6);
INSERT INTO `eova_role_btn` VALUES (1974, 1, 1238);
INSERT INTO `eova_role_btn` VALUES (1975, 1, 32);
INSERT INTO `eova_role_btn` VALUES (1976, 1, 4);
INSERT INTO `eova_role_btn` VALUES (1977, 1, 31);
INSERT INTO `eova_role_btn` VALUES (1978, 1, 9);
INSERT INTO `eova_role_btn` VALUES (1979, 1, 20);
INSERT INTO `eova_role_btn` VALUES (1980, 1, 1132);
INSERT INTO `eova_role_btn` VALUES (1981, 1, 1269);
INSERT INTO `eova_role_btn` VALUES (1982, 1, 1267);
INSERT INTO `eova_role_btn` VALUES (1983, 1, 100);
INSERT INTO `eova_role_btn` VALUES (1984, 1, 1266);
INSERT INTO `eova_role_btn` VALUES (1985, 1, 1265);
INSERT INTO `eova_role_btn` VALUES (1986, 1, 1261);
INSERT INTO `eova_role_btn` VALUES (1987, 1, 1262);
INSERT INTO `eova_role_btn` VALUES (1988, 1, 1264);
INSERT INTO `eova_role_btn` VALUES (1989, 1, 45);
INSERT INTO `eova_role_btn` VALUES (1990, 1, 44);
INSERT INTO `eova_role_btn` VALUES (1991, 1, 1260);
INSERT INTO `eova_role_btn` VALUES (1992, 1, 90);
INSERT INTO `eova_role_btn` VALUES (1993, 1, 1259);
INSERT INTO `eova_role_btn` VALUES (1994, 1, 1258);
INSERT INTO `eova_role_btn` VALUES (1995, 1, 88);
INSERT INTO `eova_role_btn` VALUES (1997, 1, 1271);
INSERT INTO `eova_role_btn` VALUES (2021, 1, 1272);
INSERT INTO `eova_role_btn` VALUES (2022, 1, 1273);
INSERT INTO `eova_role_btn` VALUES (2023, 1, 1274);
INSERT INTO `eova_role_btn` VALUES (2024, 1, 1275);
INSERT INTO `eova_role_btn` VALUES (2025, 1, 1276);
INSERT INTO `eova_role_btn` VALUES (2026, 1, 1277);
INSERT INTO `eova_role_btn` VALUES (2027, 1, 1278);
INSERT INTO `eova_role_btn` VALUES (2035, 1, 1286);
INSERT INTO `eova_role_btn` VALUES (2036, 1, 1287);
INSERT INTO `eova_role_btn` VALUES (2037, 1, 1288);
INSERT INTO `eova_role_btn` VALUES (2038, 1, 1289);
INSERT INTO `eova_role_btn` VALUES (2039, 1, 1290);
INSERT INTO `eova_role_btn` VALUES (2040, 1, 1291);
INSERT INTO `eova_role_btn` VALUES (2041, 1, 1292);
INSERT INTO `eova_role_btn` VALUES (2042, 1, 1293);
INSERT INTO `eova_role_btn` VALUES (2043, 1, 1294);
INSERT INTO `eova_role_btn` VALUES (2044, 1, 1295);
INSERT INTO `eova_role_btn` VALUES (2045, 1, 1296);
INSERT INTO `eova_role_btn` VALUES (2046, 1, 1297);
INSERT INTO `eova_role_btn` VALUES (2051, 1, 1301);
INSERT INTO `eova_role_btn` VALUES (2066, 1, 1316);
INSERT INTO `eova_role_btn` VALUES (2067, 1, 1317);
INSERT INTO `eova_role_btn` VALUES (2068, 1, 1318);
INSERT INTO `eova_role_btn` VALUES (2069, 1, 1319);
INSERT INTO `eova_role_btn` VALUES (2070, 1, 1320);
INSERT INTO `eova_role_btn` VALUES (2071, 1, 1321);
INSERT INTO `eova_role_btn` VALUES (2072, 1, 1322);
INSERT INTO `eova_role_btn` VALUES (2073, 1, 1323);
INSERT INTO `eova_role_btn` VALUES (2074, 1, 1324);
INSERT INTO `eova_role_btn` VALUES (2075, 1, 1325);
INSERT INTO `eova_role_btn` VALUES (2076, 1, 1326);
INSERT INTO `eova_role_btn` VALUES (2077, 1, 1327);
INSERT INTO `eova_role_btn` VALUES (2078, 1, 1328);
INSERT INTO `eova_role_btn` VALUES (2079, 1, 1329);
INSERT INTO `eova_role_btn` VALUES (2080, 1, 1330);
INSERT INTO `eova_role_btn` VALUES (2081, 1, 1331);
INSERT INTO `eova_role_btn` VALUES (2082, 1, 1332);
INSERT INTO `eova_role_btn` VALUES (2083, 1, 1333);
INSERT INTO `eova_role_btn` VALUES (2084, 1, 1334);
INSERT INTO `eova_role_btn` VALUES (2085, 1, 1335);
INSERT INTO `eova_role_btn` VALUES (2086, 1, 1336);
INSERT INTO `eova_role_btn` VALUES (2142, 3, 1258);
INSERT INTO `eova_role_btn` VALUES (2143, 3, 1289);
INSERT INTO `eova_role_btn` VALUES (2144, 3, 1286);
INSERT INTO `eova_role_btn` VALUES (2145, 3, 1261);
INSERT INTO `eova_role_btn` VALUES (2146, 3, 1271);
INSERT INTO `eova_role_btn` VALUES (2147, 2, 44);
INSERT INTO `eova_role_btn` VALUES (2148, 2, 1264);
INSERT INTO `eova_role_btn` VALUES (2149, 2, 1262);
INSERT INTO `eova_role_btn` VALUES (2150, 2, 1261);
INSERT INTO `eova_role_btn` VALUES (2151, 2, 1260);
INSERT INTO `eova_role_btn` VALUES (2152, 2, 110);
INSERT INTO `eova_role_btn` VALUES (2153, 2, 111);
INSERT INTO `eova_role_btn` VALUES (2154, 2, 1259);
INSERT INTO `eova_role_btn` VALUES (2155, 2, 112);
INSERT INTO `eova_role_btn` VALUES (2156, 2, 1258);
INSERT INTO `eova_role_btn` VALUES (2157, 2, 1335);
INSERT INTO `eova_role_btn` VALUES (2158, 2, 113);
INSERT INTO `eova_role_btn` VALUES (2159, 2, 1334);
INSERT INTO `eova_role_btn` VALUES (2160, 2, 1333);
INSERT INTO `eova_role_btn` VALUES (2161, 2, 1135);
INSERT INTO `eova_role_btn` VALUES (2162, 2, 1332);
INSERT INTO `eova_role_btn` VALUES (2163, 2, 1134);
INSERT INTO `eova_role_btn` VALUES (2164, 2, 116);
INSERT INTO `eova_role_btn` VALUES (2165, 2, 1331);
INSERT INTO `eova_role_btn` VALUES (2166, 2, 1133);
INSERT INTO `eova_role_btn` VALUES (2167, 2, 90);
INSERT INTO `eova_role_btn` VALUES (2168, 2, 1275);
INSERT INTO `eova_role_btn` VALUES (2169, 2, 1274);
INSERT INTO `eova_role_btn` VALUES (2170, 2, 1273);
INSERT INTO `eova_role_btn` VALUES (2171, 2, 1272);
INSERT INTO `eova_role_btn` VALUES (2172, 2, 1271);
INSERT INTO `eova_role_btn` VALUES (2173, 2, 1);
INSERT INTO `eova_role_btn` VALUES (2174, 2, 1269);
INSERT INTO `eova_role_btn` VALUES (2175, 2, 1301);
INSERT INTO `eova_role_btn` VALUES (2176, 2, 1267);
INSERT INTO `eova_role_btn` VALUES (2177, 2, 1266);
INSERT INTO `eova_role_btn` VALUES (2178, 2, 1265);
INSERT INTO `eova_role_btn` VALUES (2179, 2, 129);
INSERT INTO `eova_role_btn` VALUES (2180, 2, 20);
INSERT INTO `eova_role_btn` VALUES (2181, 2, 1286);
INSERT INTO `eova_role_btn` VALUES (2182, 2, 1316);
INSERT INTO `eova_role_btn` VALUES (2183, 2, 1276);
INSERT INTO `eova_role_btn` VALUES (2184, 2, 1319);
INSERT INTO `eova_role_btn` VALUES (2185, 2, 1318);
INSERT INTO `eova_role_btn` VALUES (2186, 2, 1317);
INSERT INTO `eova_role_btn` VALUES (2187, 2, 1297);
INSERT INTO `eova_role_btn` VALUES (2188, 2, 1330);
INSERT INTO `eova_role_btn` VALUES (2189, 2, 1132);
INSERT INTO `eova_role_btn` VALUES (2190, 2, 1295);
INSERT INTO `eova_role_btn` VALUES (2191, 2, 1294);
INSERT INTO `eova_role_btn` VALUES (2192, 2, 1293);
INSERT INTO `eova_role_btn` VALUES (2193, 2, 1292);
INSERT INTO `eova_role_btn` VALUES (2194, 2, 1290);
INSERT INTO `eova_role_btn` VALUES (2195, 2, 1327);
INSERT INTO `eova_role_btn` VALUES (2196, 2, 1326);
INSERT INTO `eova_role_btn` VALUES (2197, 2, 100);
INSERT INTO `eova_role_btn` VALUES (2198, 2, 1325);
INSERT INTO `eova_role_btn` VALUES (2199, 2, 1324);
INSERT INTO `eova_role_btn` VALUES (2200, 2, 1323);
INSERT INTO `eova_role_btn` VALUES (2201, 2, 1289);
INSERT INTO `eova_role_btn` VALUES (2202, 2, 1288);
INSERT INTO `eova_role_btn` VALUES (2203, 2, 1321);
INSERT INTO `eova_role_btn` VALUES (2204, 2, 1287);
INSERT INTO `eova_role_btn` VALUES (2205, 2, 1320);
INSERT INTO `eova_role_btn` VALUES (2206, 2, 80);
INSERT INTO `eova_role_btn` VALUES (2207, 2, 40);
INSERT INTO `eova_role_btn` VALUES (2208, 2, 1328);

-- ----------------------------
-- Table structure for eova_task
-- ----------------------------
DROP TABLE IF EXISTS `eova_task`;
CREATE TABLE `eova_task`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` int(1) NOT NULL DEFAULT 0 COMMENT '状态：0=停止，1=启动',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `exp` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '表达式',
  `clazz` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '实现类',
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '说明',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'EOVA任务' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of eova_task
-- ----------------------------
INSERT INTO `eova_task` VALUES (1, 0, '每分', '0 * * * * ? *', 'com.oss.job.EveryMinJob', '每分钟来一发');
INSERT INTO `eova_task` VALUES (2, 0, '每时', '0 0 * * * ? *', 'com.oss.job.EveryHourJob', '每小时统计一次');
INSERT INTO `eova_task` VALUES (12, 0, '每天', '59 59 23 * * ? *', 'com.oss.job.EveryDayJob', '每天23点59分59秒跑一下');

-- ----------------------------
-- Table structure for eova_user
-- ----------------------------
DROP TABLE IF EXISTS `eova_user`;
CREATE TABLE `eova_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '帐号',
  `login_pwd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `rid` int(11) NOT NULL DEFAULT 0 COMMENT '角色ID',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '姓名',
  `memo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uq_login_id`(`login_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'EOVA用户' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of eova_user
-- ----------------------------
INSERT INTO `eova_user` VALUES (1, 'eova', '89BDF69372C2EF53EA409CDF020B5694', 1, '', NULL);
INSERT INTO `eova_user` VALUES (2, 'admin', '89BDF69372C2EF53EA409CDF020B5694', 2, '侯亮平', '主管业务');
INSERT INTO `eova_user` VALUES (3, 'test', '12345678', 3, '孙亦可', '惩奸除恶');
INSERT INTO `eova_user` VALUES (4, 'test1', '89BDF69372C2EF53EA409CDF020B5694', 4, '林华华', '调皮可爱');

-- ----------------------------
-- Table structure for eova_widget
-- ----------------------------
DROP TABLE IF EXISTS `eova_widget`;
CREATE TABLE `eova_widget`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(5) NOT NULL DEFAULT 1 COMMENT '控件类型：1=EOVA控件，2=DIY控件',
  `value` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '控件值',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `version` float(5, 1) NULL DEFAULT 1.0 COMMENT '版本号',
  `path` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路径',
  `description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '介绍',
  `config` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '控件配置信息JSON',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'EOVA控件' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of eova_widget
-- ----------------------------
INSERT INTO `eova_widget` VALUES (1, 1, '下拉框', '下拉框', 1.0, '', '', NULL);
INSERT INTO `eova_widget` VALUES (2, 1, '查找框', '查找框', 1.0, '', '', NULL);
INSERT INTO `eova_widget` VALUES (3, 1, '文本框', '文本框', 1.0, '', '', NULL);
INSERT INTO `eova_widget` VALUES (4, 1, '文本域', '文本域', 1.0, '', '', NULL);
INSERT INTO `eova_widget` VALUES (5, 1, '编辑框', '编辑框', 1.0, '', '', NULL);
INSERT INTO `eova_widget` VALUES (6, 1, 'JSON框', 'JSON框', 1.0, '', '', NULL);
INSERT INTO `eova_widget` VALUES (7, 1, '时间框', '时间框', 1.0, '', '', NULL);
INSERT INTO `eova_widget` VALUES (8, 1, '日期框', '日期框', 1.0, '', '', NULL);
INSERT INTO `eova_widget` VALUES (9, 1, '布尔框', '布尔框', 1.0, '', '', NULL);
INSERT INTO `eova_widget` VALUES (10, 1, '图片框', '图片框', 1.0, '', '', NULL);
INSERT INTO `eova_widget` VALUES (11, 1, '文件框', '文件框', 1.0, '', '', NULL);
INSERT INTO `eova_widget` VALUES (12, 1, '图标框', '图标框', 1.0, '', '', NULL);
INSERT INTO `eova_widget` VALUES (13, 1, '自增框', '自增框', 1.0, '', '', NULL);
INSERT INTO `eova_widget` VALUES (14, 1, '下拉树', '下拉树', 1.0, '', '', NULL);
INSERT INTO `eova_widget` VALUES (15, 1, '多图框', '多图框', 1.0, NULL, NULL, NULL);
INSERT INTO `eova_widget` VALUES (30, 2, '密码框', '密码框', 1.0, '/widget/password/index.html', '我的密码框，系统不给，自己造一个，大家一起爽歪歪', NULL);
INSERT INTO `eova_widget` VALUES (31, 2, '数字框', '数字框', 1.0, '/widget/number/index.html', 'number', NULL);
INSERT INTO `eova_widget` VALUES (32, 2, '颜色框', '颜色框', 1.0, '/widget/color/index.html', 'color', NULL);
INSERT INTO `eova_widget` VALUES (33, 2, '复选框', '复选框', 1.0, '/widget/check/index.html', '下拉变多复选框', NULL);

SET FOREIGN_KEY_CHECKS = 1;
