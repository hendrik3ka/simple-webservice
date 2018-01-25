/*
SQLyog Ultimate v10.41 
MySQL - 5.5.5-10.1.21-MariaDB : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `test`;

/*Table structure for table `layanan_kesehatan` */

DROP TABLE IF EXISTS `layanan_kesehatan`;

CREATE TABLE `layanan_kesehatan` (
  `kode_satker` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(4) DEFAULT '0',
  `bulan` int(2) DEFAULT NULL,
  `kelas` int(11) DEFAULT NULL,
  `jumlah_pasien` int(11) DEFAULT NULL,
  `jumlah_hari` int(11) DEFAULT NULL,
  `tanggal_update` datetime DEFAULT NULL,
  PRIMARY KEY (`kode_satker`)
) ENGINE=MyISAM AUTO_INCREMENT=415429 DEFAULT CHARSET=utf8;

/*Data for the table `layanan_kesehatan` */

insert  into `layanan_kesehatan`(`kode_satker`,`tahun`,`bulan`,`kelas`,`jumlah_pasien`,`jumlah_hari`,`tanggal_update`) values (415423,2012,5,2,5,11,'2018-01-24 18:26:28'),(415422,2012,1,1,10,9,'2018-01-16 18:26:44'),(415421,2013,8,9,2,11,'2018-01-24 18:27:02');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
