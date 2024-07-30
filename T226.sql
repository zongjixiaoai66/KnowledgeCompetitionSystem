/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t226`;
CREATE DATABASE IF NOT EXISTS `t226` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t226`;

DROP TABLE IF EXISTS `chongwuxihu`;
CREATE TABLE IF NOT EXISTS `chongwuxihu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwuxihu_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111',
  `chongwuxihu_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `chongwuxihu_video` varchar(200) DEFAULT NULL COMMENT '学习视频',
  `chongwuxihu_types` int DEFAULT NULL COMMENT '视频类型 Search111',
  `chongwuxihu_content` text COMMENT '详情内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布日期',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='在线学习';

DELETE FROM `chongwuxihu`;
INSERT INTO `chongwuxihu` (`id`, `chongwuxihu_name`, `chongwuxihu_photo`, `chongwuxihu_video`, `chongwuxihu_types`, `chongwuxihu_content`, `insert_time`, `create_time`) VALUES
	(1, '标题1', 'http://localhost:8080/xinxijishuzhishisai/upload/1649250509220.jpeg', 'http://localhost:8080/xinxijishuzhishisai/upload/video.mp4', 1, '<p>详情内容1</p>', '2022-04-06 12:51:24', '2022-04-06 12:51:24'),
	(2, '标题2', 'http://localhost:8080/xinxijishuzhishisai/upload/1649250501257.jpg', 'http://localhost:8080/xinxijishuzhishisai/upload/video.mp4', 3, '<p>详情内容2</p>', '2022-04-06 12:51:24', '2022-04-06 12:51:24'),
	(3, '标题3', 'http://localhost:8080/xinxijishuzhishisai/upload/1649250492695.jpg', 'http://localhost:8080/xinxijishuzhishisai/upload/video.mp4', 3, '<p>详情内容3</p>', '2022-04-06 12:51:24', '2022-04-06 12:51:24'),
	(4, '标题4', 'http://localhost:8080/xinxijishuzhishisai/upload/1649250484394.jpeg', 'http://localhost:8080/xinxijishuzhishisai/upload/video.mp4', 1, '<p>详情内容4</p>', '2022-04-06 12:51:24', '2022-04-06 12:51:24'),
	(5, '标题5', 'http://localhost:8080/xinxijishuzhishisai/upload/1649250476351.jpeg', 'http://localhost:8080/xinxijishuzhishisai/upload/video.mp4', 1, '<p>详情内容5</p>', '2022-04-06 12:51:24', '2022-04-06 12:51:24');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/xinxijishuzhishisai/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/xinxijishuzhishisai/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/xinxijishuzhishisai/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'shaishi_types', '赛事类型', 1, '赛事类型1', NULL, NULL, '2022-04-06 12:49:02'),
	(2, 'shaishi_types', '赛事类型', 2, '赛事类型2', NULL, NULL, '2022-04-06 12:49:02'),
	(3, 'shaishi_types', '赛事类型', 3, '赛事类型3', NULL, NULL, '2022-04-06 12:49:02'),
	(4, 'shaishibaoming_yesno_types', '报名审核', 1, '审核中', NULL, NULL, '2022-04-06 12:49:02'),
	(5, 'shaishibaoming_yesno_types', '报名审核', 2, '通过', NULL, NULL, '2022-04-06 12:49:02'),
	(6, 'shaishibaoming_yesno_types', '报名审核', 3, '拒绝', NULL, NULL, '2022-04-06 12:49:02'),
	(7, 'chongwuxihu_types', '视频类型', 1, '视频类型1', NULL, NULL, '2022-04-06 12:49:02'),
	(8, 'chongwuxihu_types', '视频类型', 2, '视频类型2', NULL, NULL, '2022-04-06 12:49:02'),
	(9, 'chongwuxihu_types', '视频类型', 3, '视频类型3', NULL, NULL, '2022-04-06 12:49:02'),
	(10, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-04-06 12:49:02'),
	(11, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-04-06 12:49:02'),
	(12, 'news_types', '公告类型', 3, '赛事流程', NULL, NULL, '2022-04-06 12:49:02'),
	(13, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-04-06 12:49:02'),
	(14, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-04-06 12:49:02'),
	(15, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2022-04-06 12:49:02'),
	(16, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2022-04-06 12:49:02'),
	(17, 'examquestion_types', '试题类型', 1, '单选题', NULL, NULL, '2022-04-06 12:49:02'),
	(18, 'examquestion_types', '试题类型', 2, '多选题', NULL, NULL, '2022-04-06 12:49:02'),
	(19, 'examquestion_types', '试题类型', 3, '判断题', NULL, NULL, '2022-04-06 12:49:02'),
	(20, 'examquestion_types', '试题类型', 4, '填空题', NULL, NULL, '2022-04-06 12:49:02'),
	(21, 'exampaper_types', '测卷状态', 1, '启用', NULL, NULL, '2022-04-06 12:49:03'),
	(22, 'exampaper_types', '测卷状态', 2, '禁用', NULL, NULL, '2022-04-06 12:49:03');

DROP TABLE IF EXISTS `exampaper`;
CREATE TABLE IF NOT EXISTS `exampaper` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_name` varchar(200) NOT NULL COMMENT '测卷名称 Search111',
  `exampaper_date` int NOT NULL COMMENT '测试时长(分钟)',
  `exampaper_myscore` int NOT NULL DEFAULT '0' COMMENT '测卷总分数',
  `exampaper_types` int NOT NULL DEFAULT '0' COMMENT '测卷状态 Search111',
  `exampaper_delete` int DEFAULT '0' COMMENT '逻辑删除（0代表未删除 1代表已删除）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='测卷表';

DELETE FROM `exampaper`;
INSERT INTO `exampaper` (`id`, `exampaper_name`, `exampaper_date`, `exampaper_myscore`, `exampaper_types`, `exampaper_delete`, `create_time`) VALUES
	(1, '测试测卷1', 100, 100, 1, 1, '2022-04-06 12:49:03');

DROP TABLE IF EXISTS `examquestion`;
CREATE TABLE IF NOT EXISTS `examquestion` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_id` int NOT NULL COMMENT '所属测卷id（外键）',
  `examquestion_name` varchar(200) NOT NULL COMMENT '试题名称 Search111',
  `examquestion_options` longtext COMMENT '选项，json字符串',
  `examquestion_score` int DEFAULT '0' COMMENT '分值 Search111',
  `examquestion_answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `examquestion_analysis` longtext COMMENT '答案解析',
  `examquestion_types` int DEFAULT '0' COMMENT '试题类型',
  `examquestion_sequence` int DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='试题表';

DELETE FROM `examquestion`;
INSERT INTO `examquestion` (`id`, `exampaper_id`, `examquestion_name`, `examquestion_options`, `examquestion_score`, `examquestion_answer`, `examquestion_analysis`, `examquestion_types`, `examquestion_sequence`, `create_time`) VALUES
	(1, 1, '单选题1', '[{"text":"答案A","code":"A"},{"text":"答案B","code":"B"},{"text":"正确答案C","code":"C"},{"text":"答案D","code":"D"}]', 10, 'C', '无', 1, 1, '2022-04-06 12:49:02'),
	(2, 1, '多选题1', '[{"text":"答案A","code":"A"},{"text":"正确答案B","code":"B"},{"text":"正确答案C","code":"C"},{"text":"答案D","code":"D"}]', 34, 'B,C', '无', 2, 2, '2022-04-06 12:49:02'),
	(3, 1, '填空题(正)_____', '[]', 41, '正', '无', 4, 3, '2022-04-06 12:49:02'),
	(4, 1, '判断题1', '[{"text":"A.对","code":"A"},{"text":"B.错","code":"B"}]', 11, 'A', '无', 3, 4, '2022-04-06 12:49:02'),
	(5, 1, '单选题2', '[{"text":"答案A","code":"A"},{"text":"正确答案B","code":"B"},{"text":"答案C","code":"C"},{"text":"答案D","code":"D"}]', 4, 'B', '无', 1, 5, '2022-04-06 12:49:02');

DROP TABLE IF EXISTS `examrecord`;
CREATE TABLE IF NOT EXISTS `examrecord` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examrecord_uuid_number` varchar(200) DEFAULT NULL COMMENT '测试编号',
  `yonghu_id` int NOT NULL COMMENT '测试用户',
  `exampaper_id` int NOT NULL COMMENT '所属测卷id（外键）',
  `total_score` int DEFAULT NULL COMMENT '所得总分',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '测试时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='测试记录表';

DELETE FROM `examrecord`;
INSERT INTO `examrecord` (`id`, `examrecord_uuid_number`, `yonghu_id`, `exampaper_id`, `total_score`, `insert_time`, `create_time`) VALUES
	(1, '1649294028858', 1, 1, 38, '2022-04-07 01:13:49', '2022-04-07 01:13:49'),
	(2, '1717989879920', 1, 1, 11, '2024-06-10 03:24:40', '2024-06-10 03:24:40');

DROP TABLE IF EXISTS `examredetails`;
CREATE TABLE IF NOT EXISTS `examredetails` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examredetails_uuid_number` varchar(200) DEFAULT NULL COMMENT '测卷编号',
  `yonghu_id` int NOT NULL COMMENT '用户id',
  `examquestion_id` int NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '用户答案',
  `examredetails_myscore` int NOT NULL DEFAULT '0' COMMENT '试题得分',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COMMENT='答题详情表';

DELETE FROM `examredetails`;
INSERT INTO `examredetails` (`id`, `examredetails_uuid_number`, `yonghu_id`, `examquestion_id`, `examredetails_myanswer`, `examredetails_myscore`, `create_time`) VALUES
	(1, '1649294028858', 1, 5, 'B', 4, '2022-04-07 01:13:52'),
	(2, '1649294028858', 1, 4, 'B', 0, '2022-04-07 01:13:54'),
	(3, '1649294028858', 1, 3, '1223', 0, '2022-04-07 01:13:58'),
	(4, '1649294028858', 1, 2, 'B,C', 34, '2022-04-07 01:14:02'),
	(5, '1649294028858', 1, 1, 'B', 0, '2022-04-07 01:14:05'),
	(6, '1717989879920', 1, 5, 'A', 0, '2024-06-10 03:24:42'),
	(7, '1717989879920', 1, 4, 'A', 11, '2024-06-10 03:24:45'),
	(8, '1717989879920', 1, 1, '未作答', 0, '2024-06-10 03:24:47'),
	(9, '1717989879920', 1, 2, '未作答', 0, '2024-06-10 03:24:47'),
	(10, '1717989879920', 1, 3, '未作答', 0, '2024-06-10 03:24:47');

DROP TABLE IF EXISTS `examrewrongquestion`;
CREATE TABLE IF NOT EXISTS `examrewrongquestion` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int NOT NULL COMMENT '用户id',
  `exampaper_id` int NOT NULL COMMENT '测卷（外键）',
  `examquestion_id` int NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '用户作答',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='错题表';

DELETE FROM `examrewrongquestion`;
INSERT INTO `examrewrongquestion` (`id`, `yonghu_id`, `exampaper_id`, `examquestion_id`, `examredetails_myanswer`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 4, 'B', '2022-04-07 01:13:54', '2022-04-07 01:13:54'),
	(2, 1, 1, 3, '1223', '2022-04-07 01:13:58', '2022-04-07 01:13:58'),
	(3, 1, 1, 1, 'B', '2022-04-07 01:14:05', '2022-04-07 01:14:05'),
	(4, 1, 1, 5, 'A', '2024-06-10 03:24:42', '2024-06-10 03:24:42'),
	(5, 1, 1, 1, '未作答', '2024-06-10 03:24:47', '2024-06-10 03:24:47'),
	(6, 1, 1, 2, '未作答', '2024-06-10 03:24:47', '2024-06-10 03:24:47'),
	(7, 1, 1, 3, '未作答', '2024-06-10 03:24:47', '2024-06-10 03:24:47');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='赛事论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 1, NULL, '发布内容1', NULL, 1, '2022-04-06 12:51:24', '2022-04-06 12:51:24', '2022-04-06 12:51:24'),
	(2, '帖子标题2', 2, NULL, '发布内容2', NULL, 1, '2022-04-06 12:51:24', '2022-04-06 12:51:24', '2022-04-06 12:51:24'),
	(3, '帖子标题3', 3, NULL, '发布内容3', NULL, 1, '2022-04-06 12:51:24', '2022-04-06 12:51:24', '2022-04-06 12:51:24'),
	(4, '帖子标题4', 1, NULL, '发布内容4', NULL, 1, '2022-04-06 12:51:24', '2022-04-06 12:51:24', '2022-04-06 12:51:24'),
	(5, '帖子标题5', 3, NULL, '发布内容5', NULL, 1, '2022-04-06 12:51:24', '2022-04-06 12:51:24', '2022-04-06 12:51:24'),
	(6, NULL, 1, NULL, '评论内容123', 5, 2, '2022-04-07 01:14:17', NULL, '2022-04-07 01:14:17'),
	(7, NULL, NULL, 1, '管理评论123', 5, 2, '2022-04-07 01:15:18', NULL, '2022-04-07 01:15:18');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 1, 'http://localhost:8080/xinxijishuzhishisai/upload/news1.jpg', '2022-04-06 12:51:24', '公告详情1', '2022-04-06 12:51:24'),
	(2, '公告标题2', 1, 'http://localhost:8080/xinxijishuzhishisai/upload/news2.jpg', '2022-04-06 12:51:24', '公告详情2', '2022-04-06 12:51:24'),
	(3, '公告标题3', 3, 'http://localhost:8080/xinxijishuzhishisai/upload/news3.jpg', '2022-04-06 12:51:24', '公告详情3', '2022-04-06 12:51:24'),
	(4, '公告标题4', 2, 'http://localhost:8080/xinxijishuzhishisai/upload/news4.jpg', '2022-04-06 12:51:24', '公告详情4', '2022-04-06 12:51:24'),
	(5, '公告标题5', 2, 'http://localhost:8080/xinxijishuzhishisai/upload/news5.jpg', '2022-04-06 12:51:24', '公告详情5', '2022-04-06 12:51:24');

DROP TABLE IF EXISTS `shaishi`;
CREATE TABLE IF NOT EXISTS `shaishi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shaishi_name` varchar(200) DEFAULT NULL COMMENT '赛事标题 Search111',
  `shaishi_photo` varchar(200) DEFAULT NULL COMMENT '赛事图片',
  `shaishi_types` int DEFAULT NULL COMMENT '赛事类型 Search111',
  `shaishi_content` text COMMENT '详情内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布日期',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='赛事信息';

DELETE FROM `shaishi`;
INSERT INTO `shaishi` (`id`, `shaishi_name`, `shaishi_photo`, `shaishi_types`, `shaishi_content`, `insert_time`, `create_time`) VALUES
	(1, '赛事标题1', 'http://localhost:8080/xinxijishuzhishisai/upload/1649293540166.jpeg', 2, '<p>详情内容1</p>', '2022-04-06 12:51:24', '2022-04-06 12:51:24'),
	(2, '赛事标题2', 'http://localhost:8080/xinxijishuzhishisai/upload/1649293531986.jpeg', 1, '<p>详情内容2</p>', '2022-04-06 12:51:24', '2022-04-06 12:51:24'),
	(3, '赛事标题3', 'http://localhost:8080/xinxijishuzhishisai/upload/1649293523172.jpeg', 1, '<p>详情内容3</p>', '2022-04-06 12:51:24', '2022-04-06 12:51:24'),
	(4, '赛事标题4', 'http://localhost:8080/xinxijishuzhishisai/upload/1649293513953.jpeg', 2, '<p>详情内容4</p>', '2022-04-06 12:51:24', '2022-04-06 12:51:24'),
	(5, '赛事标题5', 'http://localhost:8080/xinxijishuzhishisai/upload/1649293505835.jpeg', 1, '<p>详情内容5</p>', '2022-04-06 12:51:24', '2022-04-06 12:51:24');

DROP TABLE IF EXISTS `shaishibaoming`;
CREATE TABLE IF NOT EXISTS `shaishibaoming` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shaishi_id` int DEFAULT NULL COMMENT '赛事',
  `yonghu_id` int DEFAULT NULL COMMENT '赛事',
  `shaishibaoming_yesno_types` int DEFAULT NULL COMMENT '报名审核',
  `shaishibaoming_yesno_text` text COMMENT '审核结果',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '报名日期',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='赛事报名信息';

DELETE FROM `shaishibaoming`;
INSERT INTO `shaishibaoming` (`id`, `shaishi_id`, `yonghu_id`, `shaishibaoming_yesno_types`, `shaishibaoming_yesno_text`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 1, NULL, '2022-04-06 12:51:24', '2022-04-06 12:51:24'),
	(2, 2, 1, 1, NULL, '2022-04-06 12:51:24', '2022-04-06 12:51:24'),
	(3, 3, 1, 1, NULL, '2022-04-06 12:51:24', '2022-04-06 12:51:24'),
	(4, 4, 2, 1, NULL, '2022-04-06 12:51:24', '2022-04-06 12:51:24'),
	(5, 5, 3, 1, NULL, '2022-04-06 12:51:24', '2022-04-06 12:51:24'),
	(13, 4, 1, 1, NULL, '2022-04-07 01:08:31', '2022-04-07 01:08:31'),
	(14, 5, 1, 2, '通过123', '2022-04-07 01:13:25', '2022-04-07 01:13:25');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'gdl0xy4fl6e6uw350qve4lm203u78dpl', '2022-04-06 13:07:30', '2024-06-10 04:22:36'),
	(2, 1, 'a1', 'yonghu', '用户', 'g5vf8zir8f2zxcukkt9r4p85n7oxg87g', '2022-04-06 13:17:16', '2024-06-10 04:24:23');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `yonghu_phone`, `yonghu_email`, `sex_types`, `yonghu_delete`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', 'http://localhost:8080/xinxijishuzhishisai/upload/yonghu1.jpg', '17703786901', '1@qq.com', 1, 1, '2022-04-06 12:51:24'),
	(2, '用户2', '123456', '用户姓名2', 'http://localhost:8080/xinxijishuzhishisai/upload/yonghu2.jpg', '17703786902', '2@qq.com', 1, 1, '2022-04-06 12:51:24'),
	(3, '用户3', '123456', '用户姓名3', 'http://localhost:8080/xinxijishuzhishisai/upload/yonghu3.jpg', '17703786903', '3@qq.com', 2, 1, '2022-04-06 12:51:24');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
