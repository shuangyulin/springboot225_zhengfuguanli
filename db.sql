/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - zhengfuguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zhengfuguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zhengfuguanlixitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-04-12 20:34:18'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-04-12 20:34:18'),(3,'danwei_types','单位',1,'单位1',NULL,NULL,'2022-04-12 20:34:18'),(4,'danwei_types','单位',2,'单位2',NULL,NULL,'2022-04-12 20:34:18'),(5,'danwei_types','单位',3,'单位3',NULL,NULL,'2022-04-12 20:34:18'),(6,'nianhao_types','公文年号',1,'2020',NULL,NULL,'2022-04-12 20:34:18'),(7,'nianhao_types','公文年号',2,'2021',NULL,NULL,'2022-04-12 20:34:18'),(8,'nianhao_types','公文年号',3,'2022',NULL,NULL,'2022-04-12 20:34:18'),(9,'laifangdengji_mudi_types','信访目的',1,'申诉',NULL,NULL,'2022-04-12 20:34:18'),(10,'laifangdengji_mudi_types','信访目的',2,'意见建议',NULL,NULL,'2022-04-12 20:34:18'),(11,'laifangdengji_mudi_types','信访目的',3,'揭发控告',NULL,NULL,'2022-04-12 20:34:18'),(12,'laifangdengji_mudi_types','信访目的',4,'其他',NULL,NULL,'2022-04-12 20:34:19'),(13,'laifangdengji_chuli_types','是否处理',1,'未处理',NULL,NULL,'2022-04-12 20:34:19'),(14,'laifangdengji_chuli_types','是否处理',2,'已处理',NULL,NULL,'2022-04-12 20:34:19'),(15,'huiyishi_types','会议室类型',1,'会议室类型1',NULL,NULL,'2022-04-12 20:34:19'),(16,'huiyishi_types','会议室类型',2,'会议室类型2',NULL,NULL,'2022-04-12 20:34:19'),(17,'huiyishi_types','会议室类型',3,'会议室类型3',NULL,NULL,'2022-04-12 20:34:19'),(18,'huiyishi_types','会议室类型',4,'会议室类型4',NULL,NULL,'2022-04-12 20:34:19'),(19,'huiyishi_yuyue_types','会议室预约类型',1,'日常会议',NULL,NULL,'2022-04-12 20:34:19'),(20,'huiyishi_yuyue_types','会议室预约类型',2,'年度总结会议',NULL,NULL,'2022-04-12 20:34:19'),(21,'huiyishi_yuyue_types','会议室预约类型',3,'上级指示会议',NULL,NULL,'2022-04-12 20:34:19'),(22,'huiyishi_yuyue_yesno_types','审核状态',1,'待审核',NULL,NULL,'2022-04-12 20:34:19'),(23,'huiyishi_yuyue_yesno_types','审核状态',2,'年度总结会议',NULL,NULL,'2022-04-12 20:34:19'),(24,'huiyishi_yuyue_yesno_types','审核状态',3,'上级指示会议',NULL,NULL,'2022-04-12 20:34:19'),(25,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2022-04-12 20:34:19'),(26,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2022-04-12 20:34:19'),(27,'danwei_types','单位',4,'单位4',NULL,'','2022-04-12 21:16:29');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','http://localhost:8080/zhengfuguanlixitong/upload/gonggao1.jpg',2,'2022-04-12 20:34:35','公告详情1','2022-04-12 20:34:35'),(2,'公告名称2','http://localhost:8080/zhengfuguanlixitong/upload/gonggao2.jpg',2,'2022-04-12 20:34:35','公告详情2','2022-04-12 20:34:35'),(3,'公告名称3','http://localhost:8080/zhengfuguanlixitong/upload/gonggao3.jpg',2,'2022-04-12 20:34:35','公告详情3','2022-04-12 20:34:35'),(4,'公告名称4','http://localhost:8080/zhengfuguanlixitong/upload/gonggao4.jpg',1,'2022-04-12 20:34:35','公告详情4','2022-04-12 20:34:35'),(5,'公告名称5','http://localhost:8080/zhengfuguanlixitong/upload/gonggao5.jpg',1,'2022-04-12 20:34:35','公告详情5','2022-04-12 20:34:35');

/*Table structure for table `gongwen` */

DROP TABLE IF EXISTS `gongwen`;

CREATE TABLE `gongwen` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `gongwen_uuid_number` varchar(200) DEFAULT NULL COMMENT '文号 Search111 ',
  `nianhao_types` int(11) DEFAULT NULL COMMENT '公文年号 Search111 ',
  `gongwen_fenhao` varchar(200) DEFAULT NULL COMMENT '份号 Search111 ',
  `danwei_types` int(11) DEFAULT NULL COMMENT '接收单位 Search111',
  `gongwen_name` varchar(200) DEFAULT NULL COMMENT '公文标题 Search111 ',
  `gongwen_file` varchar(200) DEFAULT NULL COMMENT '公文附件',
  `gongwen_content` text COMMENT '公文内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发送时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='公文';

/*Data for the table `gongwen` */

insert  into `gongwen`(`id`,`yonghu_id`,`gongwen_uuid_number`,`nianhao_types`,`gongwen_fenhao`,`danwei_types`,`gongwen_name`,`gongwen_file`,`gongwen_content`,`insert_time`,`create_time`) values (1,2,'164976687578116',2,'份号1',1,'公文标题1','http://localhost:8080/zhengfuguanlixitong/upload/file.rar','公文内容1','2022-04-12 20:34:35','2022-04-12 20:34:35'),(2,3,'16497668757814',3,'份号2',2,'公文标题2','http://localhost:8080/zhengfuguanlixitong/upload/file.rar','公文内容2','2022-04-12 20:34:35','2022-04-12 20:34:35'),(3,1,'16497668757810',2,'份号3',2,'公文标题3','http://localhost:8080/zhengfuguanlixitong/upload/file.rar','公文内容3','2022-04-12 20:34:35','2022-04-12 20:34:35'),(4,1,'16497668757813',2,'份号4',1,'公文标题4','http://localhost:8080/zhengfuguanlixitong/upload/file.rar','公文内容4','2022-04-12 20:34:35','2022-04-12 20:34:35'),(5,3,'164976687578113',3,'份号5',3,'公文标题5','http://localhost:8080/zhengfuguanlixitong/upload/file.rar','公文内容5','2022-04-12 20:34:35','2022-04-12 20:34:35'),(6,1,'1649769629552',2,'1',3,'标题111','http://localhost:8080/zhengfuguanlixitong/upload/1649769646338.jpg','<p>电弧焊接</p>','2022-04-12 21:20:48','2022-04-12 21:20:48'),(7,1,'1649769658936',3,'2',4,'标题111','http://localhost:8080/zhengfuguanlixitong/upload/1649769671058.rar','<p>sghhjkl;\'\'</p>','2022-04-12 21:21:13','2022-04-12 21:21:13');

/*Table structure for table `huiyishi` */

DROP TABLE IF EXISTS `huiyishi`;

CREATE TABLE `huiyishi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huiyishi_uuid_number` varchar(200) DEFAULT NULL COMMENT '会议室编号 Search111 ',
  `huiyishi_mingcheng` varchar(200) DEFAULT NULL COMMENT '会议室号 Search111 ',
  `huiyishi_address` varchar(200) DEFAULT NULL COMMENT '会议室地址 Search111 ',
  `huiyishi_types` int(11) DEFAULT NULL COMMENT '会议室类型 Search111 ',
  `huiyishi_suqiu_content` text COMMENT '会议室介绍',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='会议室';

/*Data for the table `huiyishi` */

insert  into `huiyishi`(`id`,`huiyishi_uuid_number`,`huiyishi_mingcheng`,`huiyishi_address`,`huiyishi_types`,`huiyishi_suqiu_content`,`insert_time`,`create_time`) values (1,'16497668757852','会议室号1','会议室地址1',4,'会议室介绍1','2022-04-12 20:34:35','2022-04-12 20:34:35'),(2,'164976687578517','会议室号2','会议室地址2',4,'会议室介绍2','2022-04-12 20:34:35','2022-04-12 20:34:35'),(3,'164976687578516','会议室号3','会议室地址3',4,'会议室介绍3','2022-04-12 20:34:35','2022-04-12 20:34:35'),(4,'164976687578517','会议室号4','会议室地址4',1,'会议室介绍4','2022-04-12 20:34:35','2022-04-12 20:34:35'),(5,'16497668757854','会议室号5','会议室地址5',4,'会议室介绍5','2022-04-12 20:34:35','2022-04-12 20:34:35');

/*Table structure for table `huiyishi_yuyue` */

DROP TABLE IF EXISTS `huiyishi_yuyue`;

CREATE TABLE `huiyishi_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `huiyishi_id` int(11) DEFAULT NULL COMMENT '会议室',
  `huiyishi_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '会议室预约编号 Search111 ',
  `huiyishi_yuyue_mingcheng` varchar(200) DEFAULT NULL COMMENT '会议室预约名称 Search111 ',
  `huiyishi_yuyue_types` int(11) DEFAULT NULL COMMENT '会议室预约类型 Search111 ',
  `huiyishi_yuyue_content` text COMMENT '预约内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `shiyong_kaishi_time` timestamp NULL DEFAULT NULL COMMENT '使用开始时间 Search111 ',
  `shiyong_jieshu_time` timestamp NULL DEFAULT NULL COMMENT '使用结束时间 Search111 ',
  `huiyishi_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态 Search111 ',
  `huiyishi_yuyue_yesno_text` text COMMENT '审核意见',
  `huiyishi_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='会议室预约';

/*Data for the table `huiyishi_yuyue` */

insert  into `huiyishi_yuyue`(`id`,`yonghu_id`,`huiyishi_id`,`huiyishi_yuyue_uuid_number`,`huiyishi_yuyue_mingcheng`,`huiyishi_yuyue_types`,`huiyishi_yuyue_content`,`insert_time`,`shiyong_kaishi_time`,`shiyong_jieshu_time`,`huiyishi_yuyue_yesno_types`,`huiyishi_yuyue_yesno_text`,`huiyishi_yuyue_shenhe_time`,`create_time`) values (1,1,1,'164976687579015','会议室预约名称1',1,'预约内容1','2022-04-12 20:34:35','2022-04-12 20:34:35','2022-04-12 20:34:35',1,NULL,NULL,'2022-04-12 20:34:35'),(2,3,2,'164976687579016','会议室预约名称2',2,'预约内容2','2022-04-12 20:34:35','2022-04-12 20:34:35','2022-04-12 20:34:35',1,NULL,NULL,'2022-04-12 20:34:35'),(3,2,3,'164976687579010','会议室预约名称3',1,'预约内容3','2022-04-12 20:34:35','2022-04-12 20:34:35','2022-04-12 20:34:35',1,NULL,NULL,'2022-04-12 20:34:35'),(4,2,4,'164976687579019','会议室预约名称4',2,'预约内容4','2022-04-12 20:34:35','2022-04-12 20:34:35','2022-04-12 20:34:35',3,'第三个号','2022-04-12 21:31:41','2022-04-12 20:34:35'),(5,3,5,'16497668757902','会议室预约名称5',2,'预约内容5','2022-04-12 20:34:35','2022-04-12 20:34:35','2022-04-12 20:34:35',2,'舒舒服服个','2022-04-12 21:34:35','2022-04-12 20:34:35'),(7,1,3,'1649769957145','2022年5月20日预约使用',1,'<p>2022年5月20日预约使用2022年5月20日预约使用2022年5月20日预约使用2022年5月20日预约使用2022年5月20日预约使用2022年5月20日预约使用</p>','2022-04-12 21:26:39','2022-05-20 00:00:00','2022-05-20 23:59:59',2,'dghjklswdsg','2022-04-12 21:31:35','2022-04-12 21:26:39');

/*Table structure for table `laifangdengji` */

DROP TABLE IF EXISTS `laifangdengji`;

CREATE TABLE `laifangdengji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `laifangdengji_uuid_number` varchar(200) DEFAULT NULL COMMENT '唯一编号 Search111 ',
  `laifangdengji_xingming` varchar(200) DEFAULT NULL COMMENT '信访人姓名 Search111 ',
  `laifangdengji_phone` varchar(200) DEFAULT NULL COMMENT '信访人电话 Search111 ',
  `laifangdengji_suqiu_content` text COMMENT '主要诉求',
  `laifangdengji_shishi_content` text COMMENT '主要事实',
  `laifangdengji_mudi_types` int(11) DEFAULT NULL COMMENT '信访目的 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '信访时间',
  `laifangdengji_chuli_types` int(11) DEFAULT NULL COMMENT '是否处理 Search111',
  `laifangdengji_chuli_content` text COMMENT '处理结果',
  `chuli_time` timestamp NULL DEFAULT NULL COMMENT '处理时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='来访登记';

/*Data for the table `laifangdengji` */

insert  into `laifangdengji`(`id`,`yonghu_id`,`laifangdengji_uuid_number`,`laifangdengji_xingming`,`laifangdengji_phone`,`laifangdengji_suqiu_content`,`laifangdengji_shishi_content`,`laifangdengji_mudi_types`,`insert_time`,`laifangdengji_chuli_types`,`laifangdengji_chuli_content`,`chuli_time`,`create_time`) values (1,2,'164976687579217','信访人姓名1','17703786901','主要诉求1','主要事实1',2,'2022-04-12 20:34:35',1,'处理结果1','2022-04-12 20:34:35','2022-04-12 20:34:35'),(2,3,'164976687579214','信访人姓名2','17703786902','主要诉求2','主要事实2',4,'2022-04-12 20:34:35',1,'处理结果2','2022-04-12 20:34:35','2022-04-12 20:34:35'),(3,3,'164976687579311','信访人姓名3','17703786903','主要诉求3','主要事实3',1,'2022-04-12 20:34:35',2,'处理结果3','2022-04-12 20:34:35','2022-04-12 20:34:35'),(4,1,'16497668757933','信访人姓名4','17703786904','主要诉求4','主要事实4',4,'2022-04-12 20:34:35',1,'处理结果4','2022-04-12 20:34:35','2022-04-12 20:34:35'),(5,1,'16497668757930','信访人姓名5','17703786905','主要诉求5','主要事实5',3,'2022-04-12 20:34:35',2,'处理结果5','2022-04-12 20:34:35','2022-04-12 20:34:35'),(6,1,'1649770213503','张三1','17703785959','<p>事故后即可</p>','<p>地方好几家</p>',3,'2022-04-12 21:30:29',2,'<p>sgj;;\'dasgfdag 丢失撒过或或或或</p>','2022-04-11 11:00:00','2022-04-12 21:30:29');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','nhz9ux1nknsjiabqztnwgah0nsdqayhl','2022-04-12 20:55:54','2022-04-12 22:31:25'),(2,1,'a1','yonghu','用户','6o0nkuypavfm4ygihixn0rd8l91mzhik','2022-04-12 21:14:36','2022-04-12 22:19:50');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2022-05-02 14:51:13');

/*Table structure for table `xinfangduban` */

DROP TABLE IF EXISTS `xinfangduban`;

CREATE TABLE `xinfangduban` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `laifangdengji_id` int(11) DEFAULT NULL COMMENT '来访登记',
  `xinfangduban_uuid_number` varchar(200) DEFAULT NULL COMMENT '督办编号 Search111 ',
  `xinfangduban_biaoti` varchar(200) DEFAULT NULL COMMENT '督办标题 Search111 ',
  `xinfangduban_suqiu_content` text COMMENT '督办内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '督办时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='信访督办';

/*Data for the table `xinfangduban` */

insert  into `xinfangduban`(`id`,`laifangdengji_id`,`xinfangduban_uuid_number`,`xinfangduban_biaoti`,`xinfangduban_suqiu_content`,`insert_time`,`create_time`) values (6,5,'1649769556282','16497668757930的这个该办了','<p>sghhj</p>','2022-04-12 21:19:38','2022-04-12 21:19:38');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `danwei_types` int(11) DEFAULT NULL COMMENT '所在单位',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`danwei_types`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/zhengfuguanlixitong/upload/yonghu1.jpg',1,2,'2@qq.com','2022-04-12 20:34:35'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/zhengfuguanlixitong/upload/yonghu2.jpg',2,1,'2@qq.com','2022-04-12 20:34:35'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/zhengfuguanlixitong/upload/yonghu3.jpg',3,1,'3@qq.com','2022-04-12 20:34:35');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
