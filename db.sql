/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmamytc
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmamytc` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmamytc`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmamytc/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmamytc/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmamytc/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='新闻公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (41,'2021-03-15 14:52:33','标题1','简介1','http://localhost:8080/ssmamytc/upload/news_picture1.jpg','内容1'),(42,'2021-03-15 14:52:33','标题2','简介2','http://localhost:8080/ssmamytc/upload/news_picture2.jpg','内容2'),(43,'2021-03-15 14:52:33','标题3','简介3','http://localhost:8080/ssmamytc/upload/news_picture3.jpg','内容3'),(44,'2021-03-15 14:52:33','标题4','简介4','http://localhost:8080/ssmamytc/upload/news_picture4.jpg','内容4'),(45,'2021-03-15 14:52:33','标题5','简介5','http://localhost:8080/ssmamytc/upload/news_picture5.jpg','内容5'),(46,'2021-03-15 14:52:33','标题6','简介6','http://localhost:8080/ssmamytc/upload/news_picture6.jpg','内容6');

/*Table structure for table `paichusuo` */

DROP TABLE IF EXISTS `paichusuo`;

CREATE TABLE `paichusuo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `paichusuomingcheng` varchar(200) DEFAULT NULL COMMENT '派出所名称',
  `fuzeren` varchar(200) NOT NULL COMMENT '负责人',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `wangzhi` varchar(200) DEFAULT NULL COMMENT '网址',
  `fuwushijian` varchar(200) DEFAULT NULL COMMENT '服务时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='派出所';

/*Data for the table `paichusuo` */

insert  into `paichusuo`(`id`,`addtime`,`zhanghao`,`mima`,`paichusuomingcheng`,`fuzeren`,`dianhua`,`youxiang`,`dizhi`,`wangzhi`,`fuwushijian`) values (21,'2021-03-15 14:52:32','派出所1','123456','派出所名称1','负责人1','电话1','773890001@qq.com','地址1','网址1','服务时间1'),(22,'2021-03-15 14:52:33','派出所2','123456','派出所名称2','负责人2','电话2','773890002@qq.com','地址2','网址2','服务时间2'),(23,'2021-03-15 14:52:33','派出所3','123456','派出所名称3','负责人3','电话3','773890003@qq.com','地址3','网址3','服务时间3'),(24,'2021-03-15 14:52:33','派出所4','123456','派出所名称4','负责人4','电话4','773890004@qq.com','地址4','网址4','服务时间4'),(25,'2021-03-15 14:52:33','派出所5','123456','派出所名称5','负责人5','电话5','773890005@qq.com','地址5','网址5','服务时间5'),(26,'2021-03-15 14:52:33','派出所6','123456','派出所名称6','负责人6','电话6','773890006@qq.com','地址6','网址6','服务时间6');

/*Table structure for table `renkouyisong` */

DROP TABLE IF EXISTS `renkouyisong`;

CREATE TABLE `renkouyisong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `renkouyisong` varchar(200) DEFAULT NULL COMMENT '人口移送',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='人口移送';

/*Data for the table `renkouyisong` */

insert  into `renkouyisong`(`id`,`addtime`,`renkouyisong`) values (31,'2021-03-15 14:52:33','人口移送1'),(32,'2021-03-15 14:52:33','人口移送2'),(33,'2021-03-15 14:52:33','人口移送3'),(34,'2021-03-15 14:52:33','人口移送4'),(35,'2021-03-15 14:52:33','人口移送5'),(36,'2021-03-15 14:52:33','人口移送6');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','ap4i9h20jnfbyy76cp5mn2wlfu2tmhc2','2021-03-15 14:54:36','2021-03-15 15:56:11'),(2,1615791330881,'441421199001120458','wailairenkou','外来人口','6qi4kbtg5fxhj5bblw23zepwy5z85yuy','2021-03-15 14:56:57','2021-03-15 15:56:57');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-15 14:52:33');

/*Table structure for table `wailairenkou` */

DROP TABLE IF EXISTS `wailairenkou`;

CREATE TABLE `wailairenkou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shenfenzhenghao` varchar(200) NOT NULL COMMENT '身份证号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `chushengriqi` varchar(200) DEFAULT NULL COMMENT '出生日期',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `minzu` varchar(200) DEFAULT NULL COMMENT '民族',
  `zhiye` varchar(200) DEFAULT NULL COMMENT '职业',
  `hunyinzhuangkuang` varchar(200) DEFAULT NULL COMMENT '婚姻状况',
  `wenhuachengdu` varchar(200) DEFAULT NULL COMMENT '文化程度',
  `xuexing` varchar(200) DEFAULT NULL COMMENT '血型',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `jiankangzhuangkuang` varchar(200) DEFAULT NULL COMMENT '健康状况',
  `zanzhudizhi` varchar(200) DEFAULT NULL COMMENT '暂住地址',
  `hujisuozaidi` varchar(200) DEFAULT NULL COMMENT '户籍所在地',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shenfenzhenghao` (`shenfenzhenghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615791330882 DEFAULT CHARSET=utf8 COMMENT='外来人口';

/*Data for the table `wailairenkou` */

insert  into `wailairenkou`(`id`,`addtime`,`shenfenzhenghao`,`mima`,`xingming`,`chushengriqi`,`xingbie`,`minzu`,`zhiye`,`hunyinzhuangkuang`,`wenhuachengdu`,`xuexing`,`shouji`,`jiankangzhuangkuang`,`zanzhudizhi`,`hujisuozaidi`,`sfsh`,`shhf`) values (11,'2021-03-15 14:52:32','外来人口1','123456','姓名1','出生日期1','男','民族1','职业1','已婚','文化程度1','血型1','13823888881','健康状况1','暂住地址1','户籍所在地1','是',''),(12,'2021-03-15 14:52:32','外来人口2','123456','姓名2','出生日期2','男','民族2','职业2','已婚','文化程度2','血型2','13823888882','健康状况2','暂住地址2','户籍所在地2','是',''),(13,'2021-03-15 14:52:32','外来人口3','123456','姓名3','出生日期3','男','民族3','职业3','已婚','文化程度3','血型3','13823888883','健康状况3','暂住地址3','户籍所在地3','是',''),(14,'2021-03-15 14:52:32','外来人口4','123456','姓名4','出生日期4','男','民族4','职业4','已婚','文化程度4','血型4','13823888884','健康状况4','暂住地址4','户籍所在地4','是',''),(15,'2021-03-15 14:52:32','外来人口5','123456','姓名5','出生日期5','男','民族5','职业5','已婚','文化程度5','血型5','13823888885','健康状况5','暂住地址5','户籍所在地5','是',''),(16,'2021-03-15 14:52:32','外来人口6','123456','姓名6','出生日期6','男','民族6','职业6','已婚','文化程度6','血型6','13823888886','健康状况6','暂住地址6','户籍所在地6','是',''),(1615791330881,'2021-03-15 14:55:30','441421199001120458','22','222','222','男','萨达','是的撒','已婚','是的撒','萨达',NULL,NULL,NULL,NULL,'是',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
