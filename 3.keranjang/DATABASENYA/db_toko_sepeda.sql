/*
SQLyog Professional v12.5.1 (64 bit)
MySQL - 10.4.18-MariaDB : Database - db_toko_sepeda
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_toko_sepeda` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_toko_sepeda`;

/*Table structure for table `tb_brg` */

DROP TABLE IF EXISTS `tb_brg`;

CREATE TABLE `tb_brg` (
  `id_brg` int(11) NOT NULL AUTO_INCREMENT,
  `nm_brg` varchar(150) NOT NULL,
  `merk` varchar(20) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `gambar` text NOT NULL,
  PRIMARY KEY (`id_brg`)
) ENGINE=InnoDB AUTO_INCREMENT=52059 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_brg` */

insert  into `tb_brg`(`id_brg`,`nm_brg`,`merk`,`stok`,`harga`,`gambar`) values 
(2,'Helmet Bikeboy Ultra Light','aksesoris',50,350000,'bikeboy-helm-sepeda-ultralight-breathable-bicycle-cycling-helmet-008a-white-571.jpg'),
(3,'Sepeda Polygon Putih','sepeda',100,4200000,'1952162762p1.jpg'),
(4,'Kaos Let\'s Bike Biru Hitam','aksesoris',50,140000,'b8741ad0-bec3-4f7b-8c29-949f767b3ed71.jpg'),
(5,'Kacamata Rockbros Hitam','aksesoris',40,200000,'7c2c82e9-c363-4a25-84c8-ff16e6f048f71.jpg'),
(6,'Helmet Red','aksesoris',60,170000,'helm1.jpg'),
(7,'Sepeda Lipat Kuning','sepeda',30,1200000,'Sepeda-Lipat-Pacific-Splendid-11.jpg'),
(20,'Sepeda United Merah','sepeda',30,3000000,'Sepeda-Gunung-United-Monanza-20-911.jpg');

/*Table structure for table `tb_jual` */

DROP TABLE IF EXISTS `tb_jual`;

CREATE TABLE `tb_jual` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_jual` */

insert  into `tb_jual`(`id`,`nama`,`alamat`,`tgl_pesan`,`batas_bayar`) values 
(9,'Mang Oleh','Cibaduyut','2021-04-22 12:53:57','2021-04-23 12:53:57'),
(10,'Muhammad Dicky Afriza','Pegandon Kendal','2021-04-22 15:55:20','2021-04-23 15:55:20');

/*Table structure for table `tb_pesanan` */

DROP TABLE IF EXISTS `tb_pesanan`;

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_jual` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nm_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(12) NOT NULL,
  `pilihan` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_pesanan` */

insert  into `tb_pesanan`(`id`,`id_jual`,`id_brg`,`nm_brg`,`jumlah`,`harga`,`pilihan`) values 
(19,9,20,'Sepeda United Merah',1,3000000,''),
(20,10,5,'Kacamata Rockbros Hitam',1,200000,'');

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_user` */

insert  into `tb_user`(`id`,`nama`,`username`,`password`,`role_id`) values 
(1,'admin','admin','111',1),
(2,'afriza','afr','123',2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
