/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.0.67-community-nt : Database - schoolproject
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`schoolproject` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `schoolproject`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `name` varchar(25) default NULL,
  `city` varchar(25) default NULL,
  `IDprove` varchar(25) default NULL,
  `age` int(3) default NULL,
  `phone` int(15) default NULL,
  `degree` varchar(25) default NULL,
  `deposit` int(17) default NULL,
  `accno` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `account` */

insert  into `account`(`name`,`city`,`IDprove`,`age`,`phone`,`degree`,`deposit`,`accno`) values ('GOVIND','JAIPUR','AADHAR CARD',40,94130238,'MA',20000,12),('SUMAN','UDAIPUR','RASHAN CARD',47,94130338,'BA',30000,13),('LATA','JODHPUR','RASHAN CARD',35,94130367,'MCA',40000,14),('DEEPA','GOA','PEN CARD',57,94130366,'BTech',50000,15),('AYUSHI','JAIPUR','PEN CARD',22,74134366,'MTech',60000,16),('AASTHA','JAIPUR','RASHAN CARD',21,81034864,'BTech',90000,18),('GULLU','KOLKATA','PEN CARD',29,77031824,'MSc',100000,19),('DEEPTI','UDAIPUR','PEN CARD',35,78031424,'PHD',200000,20),('CHANKI','PALI','RASHAN CARD',31,78031909,'BCom',300000,21),('DIVYA','GOA','AADHAR CARD',40,81073297,'MSc',400000,22),('RAJA','JODPHUR','RASHAN CARD',54,77377191,'BSc',600000,24),('GOLU','JAIPUR','AADHAR CARD',50,89630735,'MBBS',500000,25);

/*Table structure for table `deposit` */

DROP TABLE IF EXISTS `deposit`;

CREATE TABLE `deposit` (
  `accntNo` int(20) default NULL,
  `amount` int(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `deposit` */

insert  into `deposit`(`accntNo`,`amount`) values (12,200000),(13,198760),(14,300067),(15,129995),(16,345000),(18,832100),(19,250000),(20,785000),(21,345000),(22,245000),(24,650000),(25,NULL);

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `username` char(20) default NULL,
  `password` char(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`username`,`password`) values ('ASTHA','A123'),('POOJA','Pooja'),('MANSI','Mansi');

/*Table structure for table `withdraw` */

DROP TABLE IF EXISTS `withdraw`;

CREATE TABLE `withdraw` (
  `accntNo` int(20) default NULL,
  `withdrawAmt` int(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `withdraw` */

insert  into `withdraw`(`accntNo`,`withdrawAmt`) values (12,15000),(18,15599),(21,16000),(14,17890),(24,20000),(25,30000);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
