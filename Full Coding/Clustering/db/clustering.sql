/*
SQLyog - Free MySQL GUI v5.15
Host - 5.0.83-community-nt : Database - clustering
*********************************************************************
Server version : 5.0.83-community-nt
*/


SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `clustering`;

USE `clustering`;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `buyshares` */

DROP TABLE IF EXISTS `buyshares`;

CREATE TABLE `buyshares` (
  `sno` int(11) NOT NULL auto_increment,
  `username` varchar(30) default NULL,
  `noofshares` int(11) default NULL,
  `ticker` varchar(30) default NULL,
  `price` varchar(50) default NULL,
  `total` varchar(50) default NULL,
  `entrydate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

/*Data for the table `buyshares` */

insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (1,'Customer1',5,'PIH','7.5','1536','2017-08-03 10:29:43');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (2,'Customer1',120,'ABMD','146.44','318116','2017-08-03 10:30:03');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (3,'Customer1',2,'ABAX','45.93','204519','2017-08-03 10:30:22');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (4,'Customer2',5,'PIH','7.5','1536','2017-08-03 10:31:15');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (5,'Customer2',1,'AXAS','1.68','699008','2017-08-03 10:32:10');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (6,'Customer2',12,'SRCE','49.42','44263','2017-08-03 10:32:47');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (7,'Customer3',1,'ABIL','0.7498','37821','2017-08-03 10:33:18');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (8,'Customer3',1,'PIH','7.5','1536','2017-08-03 10:33:32');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (9,'Customer3',1,'PIH','7.5','1536','2017-08-03 10:33:43');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (10,'Customer3',4,'VNET','4.18','449010','2017-08-03 10:34:37');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (11,'Customer1',5,'FLWS','8.8','146378','2017-08-21 11:11:51');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (12,'Customer4',1,'PIH','8.2','20916','2017-08-21 11:19:15');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (13,'Customer4',13,'ARII','35.12','214921','2017-08-21 11:30:48');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (14,'Customer4',35,'SRCE','46.1','39073','2017-08-21 11:31:11');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (15,'Customer4',1,'LIFE','2.6','28441','2017-08-21 11:31:33');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (16,'Customer4',13,'YDIV','18.62','5231','2017-08-21 11:31:57');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (17,'Customer5',13,'HAWK','42.7','434026','2017-08-21 11:34:07');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (18,'Customer5',1,'GNMX','1.31','46198','2017-08-21 11:35:29');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (19,'Customer5',15,'YDIV','18.62','5231','2017-08-21 11:35:55');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (20,'Customer5',46,'FANG','87.26','1345657','2017-08-21 11:37:11');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (21,'Customer5',2,'KOOL','3.33','23273','2017-08-21 11:37:25');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (22,'Customer5',48,'JOBS','56.68','116114','2017-08-21 11:37:44');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (23,'Customer6',1,'PIH','8.2','20916','2017-08-21 11:38:14');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (24,'Customer6',13,'YDIV','18.62','5231','2017-08-21 11:38:33');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (25,'Customer6',7,'ACIU','7.68','23172','2017-08-21 11:39:34');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (26,'Customer6',13,'BOLD','18.53','160428','2017-08-21 11:40:15');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (27,'Customer6',13,'AGNCP','25.3','67162','2017-08-21 11:41:10');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (28,'Customer6',4,'ACIU','7.68','23172','2017-08-21 11:41:24');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (29,'Customer6',53,'AERI','53.05','389629','2017-08-21 11:42:37');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (30,'Customer6',2,'LIFE','2.6','28441','2017-08-21 11:43:15');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (31,'Customer6',35,'AVAV','37.47','96924','2017-08-21 11:45:15');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (32,'Customer6',1,'AXAS','1.7','1106196','2017-08-21 11:45:29');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (33,'Customer7',0,'PIH','8.2','20916','2017-08-21 11:46:05');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (34,'Customer7',13,'ACIA','43.8','439234','2017-08-21 11:46:18');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (35,'Customer7',7,'AGFS','7.01','126192','2017-08-21 11:46:39');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (36,'Customer7',131,'ALXN','133.4','1416434','2017-08-21 11:47:13');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (37,'Customer7',1,'XLRN','33.13','568098','2017-08-21 11:47:38');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (38,'Customer7',2,'LIFE','2.6','28441','2017-08-21 11:47:52');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (39,'Customer7',0,'JOBS','56.68','116114','2017-08-21 11:50:19');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (40,'Customer7',5,'PETX','5.51','245176','2017-08-21 11:50:46');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (41,'Customer7',41,'OZRK','41.33','835434','2017-08-21 11:51:06');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (42,'Customer7',1,'VNET','4.72','846751','2017-08-21 11:51:24');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (43,'Customer7',2,'OLLI','44.35','505149','2017-08-21 11:51:48');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (44,'Customer8',8,'PIH','8.2','20916','2017-08-21 11:52:30');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (45,'Customer8',13,'CAFD','14.35','106226','2017-08-21 11:52:49');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (46,'Customer8',41,'OZRK','41.33','835434','2017-08-21 11:53:06');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (47,'Customer8',56,'JOBS','56.68','116114','2017-08-21 11:53:22');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (48,'Customer8',2,'QABA','47.41','94302','2017-08-21 11:53:38');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (49,'Customer9',40,'OZRK','41.33','835434','2017-08-21 11:54:15');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (50,'Customer9',1,'PIH','8.2','20916','2017-08-21 11:54:31');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (51,'Customer9',42,'HAWK','42.7','434026','2017-08-21 11:54:53');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (52,'Customer9',33,'XLRN','33.13','568098','2017-08-21 11:55:10');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (53,'Customer9',0,'ABIL','0.675','17626','2017-08-21 11:55:54');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (54,'Customer10',15,'ZEUS','17.06','139596','2017-08-21 11:56:22');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (55,'Customer10',1,'GNMX','1.31','46198','2017-08-21 11:56:37');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (56,'Customer10',8,'PIH','8.2','20916','2017-08-21 11:56:49');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (57,'Customer10',43,'QABA','47.41','94302','2017-08-21 11:57:03');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (58,'Customer10',0,'PETX','5.51','245176','2017-08-21 11:57:23');
insert into `buyshares` (`sno`,`username`,`noofshares`,`ticker`,`price`,`total`,`entrydate`) values (59,'Customer10',1,'JRJC','2.31','575352','2017-08-21 11:57:47');

/*Table structure for table `userdetails` */

DROP TABLE IF EXISTS `userdetails`;

CREATE TABLE `userdetails` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userdetails` */

insert into `userdetails` (`username`,`password`,`email`) values ('Customer1','Customer1','customer1@gmail.com');
insert into `userdetails` (`username`,`password`,`email`) values ('Customer10','Customer10','Customer10@gmail.com');
insert into `userdetails` (`username`,`password`,`email`) values ('Customer2','Customer2','Customer2@gmail.com');
insert into `userdetails` (`username`,`password`,`email`) values ('Customer3','Customer3','Customer3@gmail.com');
insert into `userdetails` (`username`,`password`,`email`) values ('Customer4','Customer4','Customer4@gmail.com');
insert into `userdetails` (`username`,`password`,`email`) values ('Customer5','Customer5','Customer5@gmail.com');
insert into `userdetails` (`username`,`password`,`email`) values ('Customer6','Customer6','Customer6@gmail.com');
insert into `userdetails` (`username`,`password`,`email`) values ('Customer7','Customer7','Customer7@gmail.com');
insert into `userdetails` (`username`,`password`,`email`) values ('Customer8','Customer8','Customer8@gmail.com');
insert into `userdetails` (`username`,`password`,`email`) values ('Customer9','Customer9','Customer9@gmail.com');

/*Table structure for table `viewprice` */

DROP TABLE IF EXISTS `viewprice`;

CREATE TABLE `viewprice` (
  `sno` int(11) NOT NULL auto_increment,
  `ticker` varchar(30) default NULL,
  `username` varchar(30) default NULL,
  `price` float default NULL,
  `entrydate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

/*Data for the table `viewprice` */

insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (1,'PIH','Customer1',7.5,'2017-08-03 10:29:32');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (2,'ABMD','Customer1',146.44,'2017-08-03 10:29:51');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (3,'ABAX','Customer1',45.93,'2017-08-03 10:30:12');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (4,'PIH','Customer2',7.5,'2017-08-03 10:31:06');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (5,'ACIU','Customer2',7.23,'2017-08-03 10:31:20');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (6,'AXAS','Customer2',1.68,'2017-08-03 10:32:00');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (7,'SRCE','Customer2',49.42,'2017-08-03 10:32:33');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (8,'ABIL','Customer3',0.7498,'2017-08-03 10:33:06');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (9,'PIH','Customer3',7.5,'2017-08-03 10:33:24');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (10,'AXAS','Customer3',1.68,'2017-08-03 10:33:37');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (11,'AMRB','Customer3',13.94,'2017-08-03 10:33:51');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (12,'VNET','Customer3',4.18,'2017-08-03 10:34:27');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (13,'FLWS','Customer1',8.8,'2017-08-21 11:09:42');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (14,'AXAS','admin',1.7,'2017-08-21 11:14:36');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (15,'PIH','Customer4',8.2,'2017-08-21 11:19:05');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (16,'ARII','Customer4',35.12,'2017-08-21 11:19:24');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (17,'SRCE','Customer4',46.1,'2017-08-21 11:30:57');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (18,'LIFE','Customer4',2.6,'2017-08-21 11:31:19');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (19,'YDIV','Customer4',18.62,'2017-08-21 11:31:44');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (20,'HAWK','Customer5',42.7,'2017-08-21 11:32:21');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (21,'GNMX','Customer5',1.31,'2017-08-21 11:35:10');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (22,'YDIV','Customer5',18.62,'2017-08-21 11:35:38');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (23,'DOX','Customer5',62.36,'2017-08-21 11:36:03');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (24,'FANG','Customer5',87.26,'2017-08-21 11:36:51');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (25,'KOOL','Customer5',3.33,'2017-08-21 11:37:17');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (26,'JOBS','Customer5',56.68,'2017-08-21 11:37:32');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (27,'PIH','Customer6',8.2,'2017-08-21 11:38:06');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (28,'YDIV','Customer6',18.62,'2017-08-21 11:38:22');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (29,'ACIU','Customer6',7.68,'2017-08-21 11:38:38');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (30,'BOLD','Customer6',18.53,'2017-08-21 11:40:06');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (31,'AITP','Customer6',0,'2017-08-21 11:40:35');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (32,'AGNCP','Customer6',25.3,'2017-08-21 11:40:46');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (33,'ACIU','Customer6',7.68,'2017-08-21 11:41:16');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (34,'AERI','Customer6',53.05,'2017-08-21 11:42:07');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (35,'LIFE','Customer6',2.6,'2017-08-21 11:42:45');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (36,'ALQA','Customer6',0.27,'2017-08-21 11:43:54');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (37,'AVAV','Customer6',37.47,'2017-08-21 11:44:59');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (38,'AXAS','Customer6',1.7,'2017-08-21 11:45:21');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (39,'PIH','Customer7',8.2,'2017-08-21 11:45:59');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (40,'ACIA','Customer7',43.8,'2017-08-21 11:46:11');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (41,'AGFS','Customer7',7.01,'2017-08-21 11:46:23');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (42,'ALXN','Customer7',133.4,'2017-08-21 11:46:45');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (43,'ACCP','Customer7',0,'2017-08-21 11:47:21');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (44,'XLRN','Customer7',33.13,'2017-08-21 11:47:29');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (45,'LIFE','Customer7',2.6,'2017-08-21 11:47:44');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (46,'ALGN','Customer7',168.61,'2017-08-21 11:47:58');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (47,'JOBS','Customer7',56.68,'2017-08-21 11:50:09');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (48,'PETX','Customer7',5.51,'2017-08-21 11:50:33');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (49,'OZRK','Customer7',41.33,'2017-08-21 11:50:52');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (50,'VNET','Customer7',4.72,'2017-08-21 11:51:14');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (51,'OLLI','Customer7',44.35,'2017-08-21 11:51:36');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (52,'PIH','Customer8',8.2,'2017-08-21 11:52:21');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (53,'CAFD','Customer8',14.35,'2017-08-21 11:52:37');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (54,'OZRK','Customer8',41.33,'2017-08-21 11:52:56');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (55,'JOBS','Customer8',56.68,'2017-08-21 11:53:11');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (56,'QABA','Customer8',47.41,'2017-08-21 11:53:28');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (57,'OZRK','Customer9',41.33,'2017-08-21 11:53:58');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (58,'PIH','Customer9',8.2,'2017-08-21 11:54:18');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (59,'HAWK','Customer9',42.7,'2017-08-21 11:54:38');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (60,'XLRN','Customer9',33.13,'2017-08-21 11:54:59');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (61,'ABIL','Customer9',0.675,'2017-08-21 11:55:45');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (62,'ZEUS','Customer10',17.06,'2017-08-21 11:56:11');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (63,'GNMX','Customer10',1.31,'2017-08-21 11:56:28');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (64,'PIH','Customer10',8.2,'2017-08-21 11:56:42');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (65,'QABA','Customer10',47.41,'2017-08-21 11:56:54');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (66,'PETX','Customer10',5.51,'2017-08-21 11:57:09');
insert into `viewprice` (`sno`,`ticker`,`username`,`price`,`entrydate`) values (67,'JRJC','Customer10',2.31,'2017-08-21 11:57:33');

SET SQL_MODE=@OLD_SQL_MODE;