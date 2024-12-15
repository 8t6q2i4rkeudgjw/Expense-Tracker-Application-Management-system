/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - chemical
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`chemical` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `chemical`;

/*Table structure for table `add_product` */

DROP TABLE IF EXISTS `add_product`;

CREATE TABLE `add_product` (
  `pid` int(200) NOT NULL AUTO_INCREMENT,
  `cat` varchar(200) DEFAULT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `pquantity` varchar(200) DEFAULT NULL,
  `price` int(200) DEFAULT NULL,
  `stock` int(200) DEFAULT NULL,
  `stock2` int(200) DEFAULT NULL,
  `pic` text,
  `rank` int(200) DEFAULT NULL,
  `buyerid` varchar(200) DEFAULT NULL,
  `buyername` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `add_product` */

insert  into `add_product`(`pid`,`cat`,`pname`,`pquantity`,`price`,`stock`,`stock2`,`pic`,`rank`,`buyerid`,`buyername`) values (15,'food','vegetables','5kg',700,0,0,'123.png',NULL,NULL,NULL),(16,'Medical ','tablets','5 tablets',164,0,0,'123.png',NULL,NULL,NULL),(17,'food','vegetables','5kg',300,0,0,'123.png',NULL,NULL,NULL);

/*Table structure for table `buy_cart` */

DROP TABLE IF EXISTS `buy_cart`;

CREATE TABLE `buy_cart` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `uid` varchar(200) DEFAULT NULL,
  `uname` varchar(200) DEFAULT NULL,
  `pid` varchar(200) DEFAULT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `bank` varchar(100) DEFAULT NULL,
  `cnumber` varchar(100) DEFAULT NULL,
  `expiry` varchar(150) DEFAULT NULL,
  `ccv` varchar(150) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'success',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `buy_cart` */

/*Table structure for table `card_details` */

DROP TABLE IF EXISTS `card_details`;

CREATE TABLE `card_details` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `cardholder` varchar(200) DEFAULT NULL,
  `cardnumber` varchar(200) DEFAULT NULL,
  `bankname` varchar(200) DEFAULT NULL,
  `exprirydate` varchar(200) DEFAULT NULL,
  `ccv` varchar(200) DEFAULT NULL,
  `issuedate` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `card_details` */

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `uid` varchar(200) DEFAULT NULL,
  `pic` varchar(200) DEFAULT NULL,
  `uname` varchar(200) DEFAULT NULL,
  `pid` varchar(200) DEFAULT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `stock` int(200) DEFAULT NULL,
  `mpurchase` varchar(200) DEFAULT NULL,
  `price` int(200) DEFAULT NULL,
  `upquantity` int(200) DEFAULT NULL,
  `amount` int(200) DEFAULT '0',
  `total` int(200) DEFAULT '0',
  `status` varchar(200) DEFAULT 'pending',
  `status2` varchar(200) DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `cart` */

insert  into `cart`(`id`,`uid`,`pic`,`uname`,`pid`,`pname`,`stock`,`mpurchase`,`price`,`upquantity`,`amount`,`total`,`status`,`status2`) values (5,'5','123.png','niki','15','vegetables',0,'5kg',700,1,700,0,'Delivered','pending'),(6,'5','123.png','niki','15','vegetables',0,'5kg',700,3,2100,0,'paid','pending'),(7,'null','123.png','null','15','vegetables',0,'5kg',700,2,1400,0,'pending','pending'),(8,'6','123.png','niki','17','vegetables',0,'5kg',300,2,600,0,'Delivered','pending');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `category` */

insert  into `category`(`id`,`category_name`) values (16,'Medical '),(18,'food'),(19,'travel'),(20,'fees'),(21,'hospital');

/*Table structure for table `dreg` */

DROP TABLE IF EXISTS `dreg`;

CREATE TABLE `dreg` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  KEY `sno` (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `dreg` */

insert  into `dreg`(`sno`,`name`,`pass`,`email`,`mobile`,`address`,`city`) values (6,'navi','navi','kamal@gmail.com','9836483852','Chennai','kolathur'),(7,'navi','navi','kamal@gmail.com','9836483852','Chennai','kolathur'),(8,'navi','navi','kamal@gmail.com','9836483852','Chennai','kolathur'),(9,'navi','123','kamal@gmail.com','9836483852','kolathur','CHENNAI');

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `uid` varchar(100) DEFAULT NULL,
  `uname` varchar(100) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `cardname` varchar(100) NOT NULL,
  `cardno` varchar(100) DEFAULT NULL,
  `cvv` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `payment` */

insert  into `payment`(`id`,`uid`,`uname`,`pname`,`total`,`cardname`,`cardno`,`cvv`) values (6,'5','niki','vegetables','700','','',''),(7,'6','niki','vegetables','600','depit card','1234567890','234');

/*Table structure for table `user_register` */

DROP TABLE IF EXISTS `user_register`;

CREATE TABLE `user_register` (
  `user_id` int(200) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `profile_pic` text,
  `status` varchar(200) DEFAULT 'Un-Authorized',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `user_register` */

insert  into `user_register`(`user_id`,`username`,`password`,`mobile`,`mail`,`city`,`profile_pic`,`status`) values (5,'niki','niki','9398398456','sibi@gmail.com','chennai','photo.jpg','Un-Authorized'),(6,'niki','123','9398398456','sibi@gmail.com','Chennai','123.png','Un-Authorized');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
