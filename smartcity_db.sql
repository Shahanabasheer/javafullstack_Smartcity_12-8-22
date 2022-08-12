/*
SQLyog Community v12.4.3 (32 bit)
MySQL - 10.4.24-MariaDB : Database - db_project
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_project` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_project`;

/*Table structure for table `add_college` */

DROP TABLE IF EXISTS `add_college`;

CREATE TABLE `add_college` (
  `college_id` int(5) NOT NULL AUTO_INCREMENT,
  `college_name` varchar(25) DEFAULT NULL,
  `college_place` varchar(25) DEFAULT NULL,
  `college_affiliation` varchar(25) DEFAULT NULL,
  `college_type` varchar(25) DEFAULT NULL,
  `college_coursetype` varchar(10) DEFAULT NULL,
  `college_accreditation` varchar(25) DEFAULT NULL,
  `college_yearest` year(4) DEFAULT NULL,
  `college_address` varchar(50) DEFAULT NULL,
  `college_email` varchar(25) DEFAULT NULL,
  `college_website` varchar(25) DEFAULT NULL,
  `college_principal` varchar(25) DEFAULT NULL,
  `college_about` text DEFAULT NULL,
  `college_logo` blob DEFAULT NULL,
  `college_phone` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`college_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `add_college` */

insert  into `add_college`(`college_id`,`college_name`,`college_place`,`college_affiliation`,`college_type`,`college_coursetype`,`college_accreditation`,`college_yearest`,`college_address`,`college_email`,`college_website`,`college_principal`,`college_about`,`college_logo`,`college_phone`) values 
(2,'Sacred Heart Thevara','Kochi','MG University','private','artsandsci','naac',0000,'Sacred Heart College,\r\nPandit Karuppan Road, Theva','office@shcollege.ac.in','https://www.shcollege.ac.','Fr Jose John','Sacred Heart College, Kochi is an institution of higher education affiliated to the Mahatma Gandhi University, Kottayam. It was established in 1944. In the year 2000, the college was accredited by the National Accreditation and Assessment Council at the Five Star level, and in 2013 it was re accredited at the A level.',NULL,'4842870500');

/*Table structure for table `add_library` */

DROP TABLE IF EXISTS `add_library`;

CREATE TABLE `add_library` (
  `library_id` int(5) NOT NULL AUTO_INCREMENT,
  `library_name` varchar(25) DEFAULT NULL,
  `library_place` varchar(25) DEFAULT NULL,
  `library_own` varchar(25) DEFAULT NULL,
  `library_otime` time(2) DEFAULT NULL,
  `library_ctime` time(2) DEFAULT NULL,
  `library_address` varchar(50) DEFAULT NULL,
  `library_email` varchar(25) DEFAULT NULL,
  `library_website` varchar(25) DEFAULT NULL,
  `library_phone` varchar(10) DEFAULT NULL,
  `library_about` text DEFAULT NULL,
  PRIMARY KEY (`library_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `add_library` */

insert  into `add_library`(`library_id`,`library_name`,`library_place`,`library_own`,`library_otime`,`library_ctime`,`library_address`,`library_email`,`library_website`,`library_phone`,`library_about`) values 
(1,'sgdhsgd',NULL,'fdsff',NULL,NULL,'cscsddfsd','sggg@hhh.com','https://www.bhdsvbdh.com','chdscbajhd','3645623'),
(2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0'),
(3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0');

/*Table structure for table `add_schools` */

DROP TABLE IF EXISTS `add_schools`;

CREATE TABLE `add_schools` (
  `School_id` int(3) NOT NULL AUTO_INCREMENT,
  `School_name` varchar(25) DEFAULT NULL,
  `School_place` varchar(25) DEFAULT NULL,
  `School_affiliation` varchar(15) DEFAULT NULL,
  `School_type` varchar(20) DEFAULT NULL,
  `School_curriculum` varchar(20) DEFAULT NULL,
  `School_grades` varchar(10) DEFAULT NULL,
  `School_yearest` year(4) DEFAULT NULL,
  `School_address` varchar(50) DEFAULT NULL,
  `School_email` varchar(25) DEFAULT NULL,
  `School_website` varchar(25) DEFAULT NULL,
  `School_phone` varchar(10) DEFAULT NULL,
  `School_principal` varchar(25) DEFAULT NULL,
  `School_about` text DEFAULT NULL,
  `School_logo` tinyblob DEFAULT NULL,
  PRIMARY KEY (`School_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

/*Data for the table `add_schools` */

insert  into `add_schools`(`School_id`,`School_name`,`School_place`,`School_affiliation`,`School_type`,`School_curriculum`,`School_grades`,`School_yearest`,`School_address`,`School_email`,`School_website`,`School_phone`,`School_principal`,`School_about`,`School_logo`) values 
(14,'BHAVAN\'S VIDYA MANDIR','Kochi','930016','private','cbse','hsecondary',0000,'BHAVAN\'S VIDYA MANDIR, ELAMAKKARA\r\nDESHABHIMANI RO','bvm_elmk@yahoo.com','https://www.bhavanselamak','7736154434','Smt.Sunitha S','Located in a serene, picturesque, 7 acre setting, Bhavan’s Vidya Mandir, Elamakkara is the first school of Bharatiya Vidya Bhavan to be established in Kochi in the year 1972. It is a full-fledged Senior Secondary School (KG - XII) with over 2724 students affiliated to CBSE. We enjoy a rich tradition of academic excellence supported by strong partnerships with parents, students, management, faculty and the community.',NULL),
(15,'mgsdsadsd','sdfdsafds','321324',NULL,NULL,NULL,0000,'sdfghjjhkjh',NULL,NULL,'9876543219',NULL,NULL,NULL),
(16,'K  V Mysore','Mysore','63453654','Government','CBSE','LP ',0000,'K v Mysore\r\nMysore Karnataka','kvmysore@gmail.com','https://www.kvs.com','9876512345','Binoy','hdjhfsdhfkjd',NULL);

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `Msg_id` int(10) NOT NULL AUTO_INCREMENT,
  `User_name` varchar(25) DEFAULT NULL,
  `User_email` varchar(35) DEFAULT NULL,
  `User_phone` varchar(10) DEFAULT NULL,
  `Catagory` varchar(30) DEFAULT NULL,
  `Name_ctgry` varchar(35) DEFAULT NULL,
  `Text_msg` text DEFAULT NULL,
  PRIMARY KEY (`Msg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

/*Data for the table `messages` */

insert  into `messages`(`Msg_id`,`User_name`,`User_email`,`User_phone`,`Catagory`,`Name_ctgry`,`Text_msg`) values 
(9,'shahah','shhd@sdgsd','9709988765',NULL,'BHAVAN\'S VIDYA MANDIR','hjdsfd'),
(10,'addsad','dsasd@fghsdf','9876543212',NULL,'BHAVAN\'S VIDYA MANDIR','ghdsfdf'),
(14,'sdd','dsd@fgdf','7657564645',NULL,'BHAVAN\'S VIDYA MANDIR','fgdfdg'),
(15,'dsajds','duD@DFGSDF','98743875',NULL,'BHAVAN\'S VIDYA MANDIR','hajdsfd'),
(16,'dsajds','duD@DFGSDF','98743875',NULL,'BHAVAN\'S VIDYA MANDIR','hajdsfd'),
(17,'Adin ZIa','aydin@gmail.com','9497283733',NULL,'mgsdsadsd','gyeawence'),
(18,'Aydind ','aydin@gmail.com','9497283733',NULL,'mgsdsadsd','gdjahsdsdsds');

/*Table structure for table `user_registration` */

DROP TABLE IF EXISTS `user_registration`;

CREATE TABLE `user_registration` (
  `User_id` int(11) NOT NULL AUTO_INCREMENT,
  `User_name` varchar(18) DEFAULT NULL,
  `User_email` varchar(25) DEFAULT NULL,
  `User_password` varchar(18) DEFAULT NULL,
  `User_cpassword` varchar(18) DEFAULT NULL,
  `User_city` varchar(18) DEFAULT NULL,
  `User_phone` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`User_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

/*Data for the table `user_registration` */

insert  into `user_registration`(`User_id`,`User_name`,`User_email`,`User_password`,`User_cpassword`,`User_city`,`User_phone`) values 
(7,'Ayzam Ali Khan','ayzam@gmail.com','Ayzam@2019','Ayzam@2019','Mysore','9497283733'),
(10,'Aydin Zia Khan','aydin@gmail.com','Aydin@2015','Aydin@2015','Mysore','9497283732');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
