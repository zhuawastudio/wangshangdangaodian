/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - wangshangdangaodian
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wangshangdangaodian` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `wangshangdangaodian`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,1,'收货人1','17703786901','地址1',1,'2023-04-07 17:31:32','2023-04-07 17:31:32','2023-04-07 17:31:32'),(2,3,'收货人2','17703786902','地址2',1,'2023-04-07 17:31:32','2023-04-07 17:31:32','2023-04-07 17:31:32'),(3,3,'收货人3','17703786903','地址3',1,'2023-04-07 17:31:32','2023-04-07 17:31:32','2023-04-07 17:31:32'),(4,1,'收货人4','17703786904','地址4',1,'2023-04-07 17:31:32','2023-04-07 17:31:32','2023-04-07 17:31:32'),(5,1,'收货人5','17703786905','地址5',1,'2023-04-07 17:31:32','2023-04-07 17:31:32','2023-04-07 17:31:32'),(6,1,'收货人6','17703786906','地址6',1,'2023-04-07 17:31:32','2023-04-07 17:31:32','2023-04-07 17:31:32'),(7,2,'收货人7','17703786907','地址7',1,'2023-04-07 17:31:32','2023-04-07 17:31:32','2023-04-07 17:31:32'),(8,3,'收货人8','17703786908','地址8',1,'2023-04-07 17:31:32','2023-04-07 17:31:32','2023-04-07 17:31:32'),(9,2,'收货人9','17703786909','地址9',1,'2023-04-07 17:31:32','2023-04-07 17:31:32','2023-04-07 17:31:32'),(10,1,'收货人10','17703786910','地址10',2,'2023-04-07 17:31:32','2023-04-07 17:40:49','2023-04-07 17:31:32'),(11,2,'收货人11','17703786911','地址11',1,'2023-04-07 17:31:32','2023-04-07 17:31:32','2023-04-07 17:31:32'),(12,2,'收货人12','17703786912','地址12',1,'2023-04-07 17:31:32','2023-04-07 17:31:32','2023-04-07 17:31:32'),(13,1,'收货人13','17703786913','地址13',1,'2023-04-07 17:31:32','2023-04-07 17:31:32','2023-04-07 17:31:32'),(14,2,'收货人14','17703786914','地址14',1,'2023-04-07 17:31:32','2023-04-07 17:31:32','2023-04-07 17:31:32');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `dangao_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

insert  into `cart`(`id`,`yonghu_id`,`dangao_id`,`buy_number`,`create_time`,`update_time`,`insert_time`) values (8,1,1,1,'2023-04-07 17:44:57',NULL,'2023-04-07 17:44:57');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dangao` */

DROP TABLE IF EXISTS `dangao`;

CREATE TABLE `dangao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `dangao_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `dangao_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `dangao_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `dangao_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `dangao_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `dangao_price` int(11) DEFAULT NULL COMMENT '购买获得积分 ',
  `dangao_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `dangao_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `dangao_clicknum` int(11) DEFAULT NULL COMMENT '商品热度',
  `dangao_content` longtext COMMENT '商品介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `dangao_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `dangao` */

insert  into `dangao`(`id`,`dangao_name`,`dangao_uuid_number`,`dangao_photo`,`dangao_types`,`dangao_kucun_number`,`dangao_price`,`dangao_old_money`,`dangao_new_money`,`dangao_clicknum`,`dangao_content`,`shangxia_types`,`dangao_delete`,`insert_time`,`create_time`) values (1,'商品名称1','1680859892877','upload/dangao1.jpg',1,90,387,'664.82','44.93',318,'商品介绍1',1,1,'2023-04-07 17:31:32','2023-04-07 17:31:32'),(2,'商品名称2','1680859892907','upload/dangao2.jpg',3,102,20,'578.30','58.04',151,'商品介绍2',1,1,'2023-04-07 17:31:32','2023-04-07 17:31:32'),(3,'商品名称3','1680859892875','upload/dangao3.jpg',3,103,109,'965.08','325.44',239,'商品介绍3',1,1,'2023-04-07 17:31:32','2023-04-07 17:31:32'),(4,'商品名称4','1680859892928','upload/dangao4.jpg',1,104,456,'511.33','212.82',286,'商品介绍4',1,1,'2023-04-07 17:31:32','2023-04-07 17:31:32'),(5,'商品名称5','1680859892917','upload/dangao5.jpg',2,105,439,'910.17','28.40',88,'商品介绍5',1,1,'2023-04-07 17:31:32','2023-04-07 17:31:32'),(6,'商品名称6','1680859892941','upload/dangao6.jpg',1,105,205,'557.50','305.57',335,'商品介绍6',1,1,'2023-04-07 17:31:32','2023-04-07 17:31:32'),(7,'商品名称7','1680859892934','upload/dangao7.jpg',1,107,15,'888.35','394.33',218,'商品介绍7',1,1,'2023-04-07 17:31:32','2023-04-07 17:31:32'),(8,'商品名称8','1680859892886','upload/dangao8.jpg',2,108,134,'721.50','330.21',121,'商品介绍8',1,1,'2023-04-07 17:31:32','2023-04-07 17:31:32'),(9,'商品名称9','1680859892943','upload/dangao9.jpg',2,109,348,'536.71','122.17',185,'商品介绍9',1,1,'2023-04-07 17:31:32','2023-04-07 17:31:32'),(10,'商品名称10','1680859892936','upload/dangao10.jpg',2,1010,184,'965.00','456.65',53,'商品介绍10',1,1,'2023-04-07 17:31:32','2023-04-07 17:31:32'),(11,'商品名称11','1680859892934','upload/dangao11.jpg',3,1011,352,'982.26','151.28',24,'商品介绍11',1,1,'2023-04-07 17:31:32','2023-04-07 17:31:32'),(12,'商品名称12','1680859892861','upload/dangao12.jpg',2,1012,471,'630.57','393.18',476,'商品介绍12',1,1,'2023-04-07 17:31:32','2023-04-07 17:31:32'),(13,'商品名称13','1680859892892','upload/dangao13.jpg',2,1013,85,'940.95','134.90',172,'商品介绍13',1,1,'2023-04-07 17:31:32','2023-04-07 17:31:32'),(14,'商品名称14','1680859892857','upload/dangao14.jpg',1,1014,255,'795.82','310.77',70,'商品介绍14',1,1,'2023-04-07 17:31:32','2023-04-07 17:31:32');

/*Table structure for table `dangao_collection` */

DROP TABLE IF EXISTS `dangao_collection`;

CREATE TABLE `dangao_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dangao_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `dangao_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `dangao_collection` */

insert  into `dangao_collection`(`id`,`dangao_id`,`yonghu_id`,`dangao_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-04-07 17:31:32','2023-04-07 17:31:32'),(2,2,2,1,'2023-04-07 17:31:32','2023-04-07 17:31:32'),(3,3,1,1,'2023-04-07 17:31:32','2023-04-07 17:31:32'),(6,6,1,1,'2023-04-07 17:31:32','2023-04-07 17:31:32'),(7,7,3,1,'2023-04-07 17:31:32','2023-04-07 17:31:32'),(8,8,3,1,'2023-04-07 17:31:32','2023-04-07 17:31:32'),(9,9,1,1,'2023-04-07 17:31:32','2023-04-07 17:31:32'),(10,10,2,1,'2023-04-07 17:31:32','2023-04-07 17:31:32'),(11,11,1,1,'2023-04-07 17:31:32','2023-04-07 17:31:32'),(12,12,3,1,'2023-04-07 17:31:32','2023-04-07 17:31:32'),(13,13,2,1,'2023-04-07 17:31:32','2023-04-07 17:31:32'),(14,14,2,1,'2023-04-07 17:31:32','2023-04-07 17:31:32');

/*Table structure for table `dangao_commentback` */

DROP TABLE IF EXISTS `dangao_commentback`;

CREATE TABLE `dangao_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dangao_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `dangao_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `dangao_commentback` */

insert  into `dangao_commentback`(`id`,`dangao_id`,`yonghu_id`,`dangao_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'评价内容1','2023-04-07 17:31:32','回复信息1','2023-04-07 17:31:32','2023-04-07 17:31:32'),(2,2,2,'评价内容2','2023-04-07 17:31:32','回复信息2','2023-04-07 17:31:32','2023-04-07 17:31:32'),(3,3,1,'评价内容3','2023-04-07 17:31:32','回复信息3','2023-04-07 17:31:32','2023-04-07 17:31:32'),(4,4,2,'评价内容4','2023-04-07 17:31:32','回复信息4','2023-04-07 17:31:32','2023-04-07 17:31:32'),(5,5,2,'评价内容5','2023-04-07 17:31:32','回复信息5','2023-04-07 17:31:32','2023-04-07 17:31:32'),(6,6,1,'评价内容6','2023-04-07 17:31:32','回复信息6','2023-04-07 17:31:32','2023-04-07 17:31:32'),(7,7,2,'评价内容7','2023-04-07 17:31:32','回复信息7','2023-04-07 17:31:32','2023-04-07 17:31:32'),(8,8,2,'评价内容8','2023-04-07 17:31:32','回复信息8','2023-04-07 17:31:32','2023-04-07 17:31:32'),(9,9,2,'评价内容9','2023-04-07 17:31:32','回复信息9','2023-04-07 17:31:32','2023-04-07 17:31:32'),(10,10,2,'评价内容10','2023-04-07 17:31:32','回复信息10','2023-04-07 17:31:32','2023-04-07 17:31:32'),(11,11,1,'评价内容11','2023-04-07 17:31:32','回复信息11','2023-04-07 17:31:32','2023-04-07 17:31:32'),(12,12,2,'评价内容12','2023-04-07 17:31:32','回复信息12','2023-04-07 17:31:32','2023-04-07 17:31:32'),(13,13,1,'评价内容13','2023-04-07 17:31:32','回复信息13','2023-04-07 17:31:32','2023-04-07 17:31:32'),(14,14,1,'评价内容14','2023-04-07 17:31:32','回复信息14','2023-04-07 17:31:32','2023-04-07 17:31:32'),(15,1,1,'购买完成可评论','2023-04-07 17:44:51',NULL,NULL,'2023-04-07 17:44:51');

/*Table structure for table `dangao_order` */

DROP TABLE IF EXISTS `dangao_order`;

CREATE TABLE `dangao_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dangao_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `dangao_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `dangao_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `dangao_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `dangao_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `dangao_order` */

insert  into `dangao_order`(`id`,`dangao_order_uuid_number`,`address_id`,`dangao_id`,`yonghu_id`,`buy_number`,`dangao_order_true_price`,`dangao_order_types`,`dangao_order_payment_types`,`insert_time`,`create_time`) values (1,'1680860465352',10,6,1,1,'299.46',101,1,'2023-04-07 17:41:05','2023-04-07 17:41:05'),(2,'1680860465352',10,1,1,1,'44.03',103,1,'2023-04-07 17:41:05','2023-04-07 17:41:05'),(3,'1680860465352',10,12,1,1,'385.32',102,1,'2023-04-07 17:41:05','2023-04-07 17:41:05'),(4,'1680860563916',10,1,1,10,'449.30',105,2,'2023-04-07 17:42:44','2023-04-07 17:42:44');

/*Table structure for table `dianyuan` */

DROP TABLE IF EXISTS `dianyuan`;

CREATE TABLE `dianyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `dianyuan_name` varchar(200) DEFAULT NULL COMMENT '店员名称 Search111 ',
  `dianyuan_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `dianyuan_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `dianyuan_types` int(11) DEFAULT NULL COMMENT '店员类型 Search111',
  `dianyuan_content` longtext COMMENT '店员介绍 ',
  `dianyuan_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='店员';

/*Data for the table `dianyuan` */

insert  into `dianyuan`(`id`,`username`,`password`,`dianyuan_name`,`dianyuan_phone`,`dianyuan_email`,`dianyuan_types`,`dianyuan_content`,`dianyuan_delete`,`create_time`) values (1,'a1','123456','店员名称1','17703786901','1@qq.com',1,'店员介绍1',1,'2023-04-07 17:31:32'),(2,'a2','123456','店员名称2','17703786902','2@qq.com',1,'店员介绍2',1,'2023-04-07 17:31:32'),(3,'a3','123456','店员名称3','17703786903','3@qq.com',3,'店员介绍3',1,'2023-04-07 17:31:32');

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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (38,'dianyuan_types','店员类型',1,'店员类型1',NULL,NULL,'2023-04-07 17:31:20'),(39,'dianyuan_types','店员类型',2,'店员类型2',NULL,NULL,'2023-04-07 17:31:20'),(40,'dianyuan_types','店员类型',3,'店员类型3',NULL,NULL,'2023-04-07 17:31:20'),(41,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-04-07 17:31:20'),(42,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-04-07 17:31:20'),(43,'dangao_types','商品类型',1,'商品类型1',NULL,NULL,'2023-04-07 17:31:20'),(44,'dangao_types','商品类型',2,'商品类型2',NULL,NULL,'2023-04-07 17:31:20'),(45,'dangao_types','商品类型',3,'商品类型3',NULL,NULL,'2023-04-07 17:31:20'),(46,'dangao_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-07 17:31:20'),(47,'dangao_order_types','订单类型',101,'已支付',NULL,NULL,'2023-04-07 17:31:20'),(48,'dangao_order_types','订单类型',102,'已退款',NULL,NULL,'2023-04-07 17:31:20'),(49,'dangao_order_types','订单类型',103,'已发货',NULL,NULL,'2023-04-07 17:31:20'),(50,'dangao_order_types','订单类型',104,'已送达',NULL,NULL,'2023-04-07 17:31:20'),(51,'dangao_order_types','订单类型',105,'已评价',NULL,NULL,'2023-04-07 17:31:20'),(52,'dangao_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-04-07 17:31:20'),(53,'dangao_order_payment_types','订单支付类型',2,'积分',NULL,NULL,'2023-04-07 17:31:20'),(54,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2023-04-07 17:31:21'),(55,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2023-04-07 17:31:21'),(56,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-07 17:31:21'),(57,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-07 17:31:21'),(58,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-07 17:31:21'),(59,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-07 17:31:21'),(60,'huiyuandengji_types','会员等级类型',1,'青铜会员',NULL,'0.99','2023-04-07 17:31:21'),(61,'huiyuandengji_types','会员等级类型',2,'白银会员',NULL,'0.9','2023-04-07 17:31:21'),(62,'huiyuandengji_types','会员等级类型',3,'黄金会员',NULL,'0.8','2023-04-07 17:31:21'),(63,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-07 17:31:21'),(64,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-07 17:31:21');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `dianyuan_id` int(11) DEFAULT NULL COMMENT '店员',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`dianyuan_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,NULL,NULL,'发布内容1',365,1,'2023-04-07 17:31:32','2023-04-07 17:31:32','2023-04-07 17:31:32'),(2,'帖子标题2',1,NULL,NULL,'发布内容2',162,1,'2023-04-07 17:31:32','2023-04-07 17:31:32','2023-04-07 17:31:32'),(3,'帖子标题3',2,NULL,NULL,'发布内容3',75,1,'2023-04-07 17:31:32','2023-04-07 17:31:32','2023-04-07 17:31:32'),(4,'帖子标题4',3,NULL,NULL,'发布内容4',166,1,'2023-04-07 17:31:32','2023-04-07 17:31:32','2023-04-07 17:31:32'),(5,'帖子标题5',1,NULL,NULL,'发布内容5',92,1,'2023-04-07 17:31:32','2023-04-07 17:31:32','2023-04-07 17:31:32'),(6,'帖子标题6',1,NULL,NULL,'发布内容6',291,1,'2023-04-07 17:31:32','2023-04-07 17:31:32','2023-04-07 17:31:32'),(7,'帖子标题7',2,NULL,NULL,'发布内容7',361,1,'2023-04-07 17:31:32','2023-04-07 17:31:32','2023-04-07 17:31:32'),(8,'帖子标题8',2,NULL,NULL,'发布内容8',178,1,'2023-04-07 17:31:32','2023-04-07 17:31:32','2023-04-07 17:31:32'),(9,'帖子标题9',2,NULL,NULL,'发布内容9',215,1,'2023-04-07 17:31:32','2023-04-07 17:31:32','2023-04-07 17:31:32'),(10,'帖子标题10',3,NULL,NULL,'发布内容10',171,1,'2023-04-07 17:31:32','2023-04-07 17:31:32','2023-04-07 17:31:32'),(11,'帖子标题11',3,NULL,NULL,'发布内容11',37,1,'2023-04-07 17:31:32','2023-04-07 17:31:32','2023-04-07 17:31:32'),(13,'帖子标题13',2,NULL,NULL,'发布内容13',13,1,'2023-04-07 17:31:32','2023-04-07 17:31:32','2023-04-07 17:31:32'),(14,'帖子标题14',2,NULL,NULL,'发布内容14',5,1,'2023-04-07 17:31:32','2023-04-07 17:31:32','2023-04-07 17:31:32'),(15,NULL,1,NULL,NULL,'登录后才可以进入数据详情页进行评论收藏购买等操作',14,2,'2023-04-07 17:40:24',NULL,'2023-04-07 17:40:24'),(17,NULL,NULL,1,NULL,'2222222222222',14,2,'2023-04-07 17:43:56',NULL,'2023-04-07 17:43:56'),(18,NULL,NULL,NULL,1,'对应的折扣可以修改',14,2,'2023-04-07 17:45:32',NULL,'2023-04-07 17:45:32');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',2,'upload/news1.jpg','2023-04-07 17:31:32','公告详情1','2023-04-07 17:31:32'),(2,'公告标题2',1,'upload/news2.jpg','2023-04-07 17:31:32','公告详情2','2023-04-07 17:31:32'),(3,'公告标题3',2,'upload/news3.jpg','2023-04-07 17:31:32','公告详情3','2023-04-07 17:31:32'),(4,'公告标题4',2,'upload/news4.jpg','2023-04-07 17:31:32','公告详情4','2023-04-07 17:31:32'),(5,'公告标题5',1,'upload/news5.jpg','2023-04-07 17:31:32','公告详情5','2023-04-07 17:31:32'),(6,'公告标题6',1,'upload/news6.jpg','2023-04-07 17:31:32','公告详情6','2023-04-07 17:31:32'),(7,'公告标题7',1,'upload/news7.jpg','2023-04-07 17:31:32','公告详情7','2023-04-07 17:31:32'),(8,'公告标题8',1,'upload/news8.jpg','2023-04-07 17:31:32','公告详情8','2023-04-07 17:31:32'),(9,'公告标题9',2,'upload/news9.jpg','2023-04-07 17:31:32','公告详情9','2023-04-07 17:31:32'),(10,'公告标题10',2,'upload/news10.jpg','2023-04-07 17:31:32','公告详情10','2023-04-07 17:31:32'),(11,'公告标题11',2,'upload/news11.jpg','2023-04-07 17:31:32','公告详情11','2023-04-07 17:31:32'),(12,'公告标题12',2,'upload/news12.jpg','2023-04-07 17:31:32','公告详情12','2023-04-07 17:31:32'),(13,'公告标题13',2,'upload/news13.jpg','2023-04-07 17:31:32','公告详情13','2023-04-07 17:31:32'),(14,'公告标题14',1,'upload/news14.jpg','2023-04-07 17:31:32','公告详情14','2023-04-07 17:31:32');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','o3vze2z10z9dc7xpusyyjokd3vxyaruf','2023-04-07 17:39:47','2023-04-07 18:39:48'),(2,1,'a1','dianyuan','店员','y1dtn8swza7vnztozmc8c8bfbmw2v0cy','2023-04-07 17:43:01','2023-04-07 18:43:02'),(3,1,'admin','users','管理员','hls2f4kka8rr0hkaixidmp7yamelx8z7','2023-04-07 17:44:03','2023-04-07 18:44:04');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-07 17:31:20');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_sum_jifen` decimal(10,2) DEFAULT NULL COMMENT '总积分',
  `yonghu_new_jifen` decimal(10,2) DEFAULT NULL COMMENT '现积分',
  `huiyuandengji_types` int(11) DEFAULT NULL COMMENT '会员等级',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`yonghu_sum_jifen`,`yonghu_new_jifen`,`huiyuandengji_types`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','479.93','1095.85','170.05',1,'2023-04-07 17:31:32'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','645.42','760.07','437.34',1,'2023-04-07 17:31:32'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','77.63','998.63','162.11',1,'2023-04-07 17:31:32');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
