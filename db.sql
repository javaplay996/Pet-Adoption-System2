/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - liulangdongwulingyang
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`liulangdongwulingyang` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `liulangdongwulingyang`;

/*Table structure for table `chongwu` */

DROP TABLE IF EXISTS `chongwu`;

CREATE TABLE `chongwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwu_name` varchar(200) DEFAULT NULL COMMENT '宠物名称 Search111 ',
  `chongwu_types` int(11) DEFAULT NULL COMMENT '宠物类别 Search111 ',
  `chongwu_sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `chongwu_age` varchar(200) DEFAULT NULL COMMENT '年龄',
  `chongwu_huase` varchar(200) DEFAULT NULL COMMENT '花色',
  `chongwu_jiankang_types` int(11) DEFAULT NULL COMMENT '健康情况 Search111 ',
  `chongwu_suozaidi` varchar(200) DEFAULT NULL COMMENT '所在地',
  `chongwu_lingyangyaoqiu` varchar(200) DEFAULT NULL COMMENT '领养要求',
  `chongwu_lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `chongwu_photo` varchar(200) DEFAULT NULL COMMENT '宠物照片',
  `chongwu_content` text COMMENT '宠物详情',
  `chongwu_yesno_types` int(11) DEFAULT NULL COMMENT '是否被领养 Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='宠物';

/*Data for the table `chongwu` */

insert  into `chongwu`(`id`,`chongwu_name`,`chongwu_types`,`chongwu_sex_types`,`chongwu_age`,`chongwu_huase`,`chongwu_jiankang_types`,`chongwu_suozaidi`,`chongwu_lingyangyaoqiu`,`chongwu_lianxifangshi`,`chongwu_photo`,`chongwu_content`,`chongwu_yesno_types`,`yonghu_id`,`create_time`) values (1,'猫咪1',2,2,'0.5岁','灰色',1,'北京','要求有爱心','17703786900','http://localhost:8080/liulangdongwulingyang/file/download?fileName=1618564083421.jpg','宠物1的详细情况\r\n',1,2,'2021-04-29 17:09:32'),(2,'狗1',1,1,'1月整',' 灰色',1,'上海','无','17703786901','http://localhost:8080/liulangdongwulingyang/file/download?fileName=1618564195598.jpg','宠物狗1号的详情\r\n',2,NULL,'2021-04-29 17:09:32'),(3,'狗狗2',1,1,'2岁','灰色',3,'郑州','无','17703786902','http://localhost:8080/liulangdongwulingyang/file/download?fileName=1618564274157.jpg','狗狗2的详情\r\n',1,1,'2021-04-29 17:09:32'),(4,'猫猫2',2,2,'1.5岁','黑白相间',1,'杭州','有房子','17703786904','http://localhost:8080/liulangdongwulingyang/file/download?fileName=1618564412691.jpg','猫猫2的详情\r\n',2,NULL,'2021-04-29 17:09:32'),(5,'哈士奇一号',1,1,'3个月','黑白',2,'北京','有爱心  有稳定工作','17703786903','http://localhost:8080/liulangdongwulingyang/file/download?fileName=1618571701084.jpg','哈士奇一号的详情\r\n',1,2,'2021-04-29 17:09:32'),(6,'宠物11',2,1,'四个月','黑',2,'上海','有爱心 有5000以上收入','17703786966','http://localhost:8080/liulangdongwulingyang/file/download?fileName=1620011280678.jpg','宠物11的详情\r\n',1,2,'2021-05-03 11:08:13');

/*Table structure for table `chongwu_collection` */

DROP TABLE IF EXISTS `chongwu_collection`;

CREATE TABLE `chongwu_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwu_id` int(11) DEFAULT NULL COMMENT '宠物',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='宠物收藏';

/*Data for the table `chongwu_collection` */

insert  into `chongwu_collection`(`id`,`chongwu_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,1,1,'2021-04-16 18:54:41','2021-04-29 17:09:32'),(2,5,2,'2021-04-16 19:18:18','2021-04-29 17:09:32'),(4,2,2,'2021-05-03 11:11:57','2021-05-03 11:11:57');

/*Table structure for table `chongwu_liuyan` */

DROP TABLE IF EXISTS `chongwu_liuyan`;

CREATE TABLE `chongwu_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwu_id` int(11) DEFAULT NULL COMMENT '宠物',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `chongwu_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '讨论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='宠物留言';

/*Data for the table `chongwu_liuyan` */

insert  into `chongwu_liuyan`(`id`,`chongwu_id`,`yonghu_id`,`chongwu_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,3,1,'乖么',NULL,'2021-04-29 17:09:32','2021-04-29 17:09:32'),(2,2,1,'狗1乖么\r\n','很乖的,放心吧111\r\n','2021-04-29 17:09:32','2021-04-29 17:09:32'),(3,5,1,'皮么\r\n','还好   \r\n','2021-04-29 17:09:32','2021-04-29 17:09:32'),(4,6,2,'咬人么\r\n','放心好了 \r\n','2021-05-03 11:08:45','2021-05-03 11:08:45');

/*Table structure for table `chongwu_order` */

DROP TABLE IF EXISTS `chongwu_order`;

CREATE TABLE `chongwu_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwu_id` int(11) DEFAULT NULL COMMENT '宠物',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '领养时间',
  `chongwu_order_types` int(11) DEFAULT NULL COMMENT '宠物订单状态',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='宠物领养订单';

/*Data for the table `chongwu_order` */

insert  into `chongwu_order`(`id`,`chongwu_id`,`yonghu_id`,`insert_time`,`chongwu_order_types`,`create_time`) values (7,3,1,'2021-04-29 17:09:32',1,'2021-04-16 19:09:24'),(8,5,2,'2021-04-29 17:09:32',2,'2021-04-16 19:18:58'),(9,6,2,'2021-05-03 11:13:08',1,'2021-05-03 11:13:08'),(10,1,2,'2021-05-03 11:14:28',2,'2021-05-03 11:14:28');

/*Table structure for table `chongwuzhishi` */

DROP TABLE IF EXISTS `chongwuzhishi`;

CREATE TABLE `chongwuzhishi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwuzhishi_name` varchar(200) DEFAULT NULL COMMENT '宠物知识科普名称 Search111 ',
  `chongwuzhishi_types` int(11) DEFAULT NULL COMMENT '宠物科普知识类型 Search111 ',
  `chongwuzhishi_photo` varchar(200) DEFAULT NULL COMMENT '宠物知识科普图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '宠物知识科普时间',
  `chongwuzhishi_content` text COMMENT '宠物知识科普详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='宠物知识科普';

/*Data for the table `chongwuzhishi` */

insert  into `chongwuzhishi`(`id`,`chongwuzhishi_name`,`chongwuzhishi_types`,`chongwuzhishi_photo`,`insert_time`,`chongwuzhishi_content`,`create_time`) values (3,'知识科普1',1,'http://localhost:8080/liulangdongwulingyang/file/download?fileName=1618571434413.jpg','2021-04-29 17:09:32','知识科普1的详情\r\n','2021-04-29 17:09:32'),(4,'知识科普2',3,'http://localhost:8080/liulangdongwulingyang/file/download?fileName=1618571476668.jpg','2021-04-29 17:09:32','知识科普2的详情\r\n','2021-04-29 17:09:32'),(5,'知识科普3',3,'http://localhost:8080/liulangdongwulingyang/file/download?fileName=1620011421589.jpg','2021-05-03 11:10:30','知识科普3的详情\r\n','2021-05-03 11:10:30');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/liulangdongwulingyang/upload/1618571649474.jpg'),(2,'轮播图2','http://localhost:8080/liulangdongwulingyang/upload/1618571663488.jpg'),(4,'轮播图3','http://localhost:8080/liulangdongwulingyang/upload/1620011195239.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'yonghu_sex_types','性别类型名称',1,'男',NULL,'2021-04-29 17:09:32'),(2,'yonghu_sex_types','性别类型名称',2,'女',NULL,'2021-04-29 17:09:32'),(3,'yonghu_yesno_types','是否养过宠物',1,'养过宠物',NULL,'2021-04-29 17:09:32'),(4,'yonghu_yesno_types','是否养过宠物',2,'没养过宠物',NULL,'2021-04-29 17:09:32'),(5,'chongwu_types','宠物类别名称',1,'狗',NULL,'2021-04-29 17:09:32'),(6,'chongwu_types','宠物类别名称',2,'猫',NULL,'2021-04-29 17:09:32'),(7,'chongwu_types','宠物类别名称',3,'蛇',NULL,'2021-04-29 17:09:32'),(8,'chongwu_types','宠物类别名称',4,'仓鼠',NULL,'2021-04-29 17:09:32'),(9,'chongwu_sex_types','宠物性别名称',1,'公',NULL,'2021-04-29 17:09:32'),(10,'chongwu_sex_types','宠物性别名称',2,'母',NULL,'2021-04-29 17:09:32'),(11,'chongwu_jiankang_types','健康情况',1,'健康',NULL,'2021-04-29 17:09:32'),(12,'chongwu_jiankang_types','健康情况',2,'亚健康',NULL,'2021-04-29 17:09:32'),(13,'chongwu_jiankang_types','健康情况',3,'不健康',NULL,'2021-04-29 17:09:32'),(14,'chongwu_yesno_types','是否被领养',1,'已被领养',NULL,'2021-04-29 17:09:32'),(15,'chongwu_yesno_types','是否被领养',2,'未被领养',NULL,'2021-04-29 17:09:32'),(16,'chongwuzhishi_types','科普知识类型名称',1,'知识类型1',NULL,'2021-04-29 17:09:32'),(17,'chongwuzhishi_types','科普知识类型名称',2,'知识类型2',NULL,'2021-04-29 17:09:32'),(18,'chongwuzhishi_types','科普知识类型名称',3,'知识类型3',NULL,'2021-04-29 17:09:32'),(20,'chongwu_order_types','宠物订单类型名称',1,'已预约',NULL,'2021-04-29 17:09:32'),(21,'chongwu_order_types','宠物订单类型名称',2,'已领养',NULL,'2021-04-29 17:09:32'),(22,'chongwuzhishi_types','科普知识类型名称',4,'知识科普类型4',NULL,'2021-05-03 11:11:30');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','8qnc182o5ji5o7qi5nib1x4srjyx6lhy','2021-04-29 17:09:32','2021-05-03 12:04:53'),(2,1,'a1','yonghu','用户','rx9w89lit26q3z09bot7ml0tmc4utqgm','2021-04-29 17:09:32','2021-05-03 11:45:11'),(3,2,'a2','yonghu','用户','vokbt2wv15germl2v0vr4c8i9wub40lj','2021-04-29 17:09:32','2021-05-03 12:15:09');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-04-29 17:09:32');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '姓名 Search111 ',
  `yonghu_sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_age` int(11) DEFAULT NULL COMMENT '年龄',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `yonghu_gongzuo` varchar(200) DEFAULT NULL COMMENT '工作',
  `yonghu_jine` int(11) DEFAULT NULL COMMENT '收入',
  `yonghu_address` varchar(200) DEFAULT NULL COMMENT '家庭地址',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号 Search111 ',
  `yonghu_aihao` varchar(200) DEFAULT NULL COMMENT '爱好',
  `yonghu_yesno_types` int(11) DEFAULT NULL COMMENT '是否养过宠物',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_sex_types`,`yonghu_age`,`yonghu_photo`,`yonghu_gongzuo`,`yonghu_jine`,`yonghu_address`,`yonghu_phone`,`yonghu_id_number`,`yonghu_aihao`,`yonghu_yesno_types`,`create_time`) values (1,'a1','123456','张1',1,18,'http://localhost:8080/liulangdongwulingyang/file/download?fileName=1618560661320.jpg','金融',10000,'北京二环','17703786901','410224199610232001','跳舞 玩手机',2,'2021-04-29 17:09:32'),(2,'a2','123456','张22222',2,19,'http://localhost:8080/liulangdongwulingyang/file/download?fileName=1618563418269.jpg','c++开发111',12000,'北京三环','17703786902','410224199610232002','画画 跑步222',2,'2021-04-29 17:09:32'),(3,'a3','123456','张3',2,17,'http://localhost:8080/liulangdongwulingyang/file/download?fileName=1618571590383.jpg','销售',12000,'杭州二区','17703786903','410224199610232003','跑步',2,'2021-04-29 17:09:32'),(4,'a4','123456','张4',2,14,'http://localhost:8080/liulangdongwulingyang/file/download?fileName=1620010685223.jpg','民工',7000,'郑州三环','17703786904','410224199610232004','打乒乓球',2,'2021-05-03 10:58:52'),(5,'张5','123456','张5',1,21,'http://localhost:8080/liulangdongwulingyang/file/download?fileName=1620011122994.jpg','销售',9000,'杭州三环','17703786905','410224199610232005','踢足球',2,'2021-05-03 11:05:59');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
