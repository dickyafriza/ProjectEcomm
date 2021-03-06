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

/*Table structure for table `produk_hapus` */

DROP TABLE IF EXISTS `produk_hapus`;

CREATE TABLE `produk_hapus` (
  `id_brg` int(11) NOT NULL AUTO_INCREMENT,
  `nm_brg` varchar(150) NOT NULL,
  `merk` varchar(20) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `tgl_hapus` date DEFAULT NULL,
  `nama_user` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_brg`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

/*Data for the table `produk_hapus` */

insert  into `produk_hapus`(`id_brg`,`nm_brg`,`merk`,`stok`,`harga`,`gambar`,`tgl_hapus`,`nama_user`) values 
(21,'Sepeda United Kuning','sepeda',20,5500000,'united1.jpg','2021-07-07','root@localhost'),
(22,'Sepeda Lipat Pacific','sepeda',15,7000000,'Sepeda-Lipat-Pacific-Splendid-','2021-06-29','root@localhost'),
(23,'Sepeda wim cycle','sepeda',30,4000000,'','2021-06-29','root@localhost');

/*Table structure for table `tb_brg` */

DROP TABLE IF EXISTS `tb_brg`;

CREATE TABLE `tb_brg` (
  `id_brg` int(11) NOT NULL AUTO_INCREMENT,
  `nm_brg` varchar(150) NOT NULL,
  `merk` varchar(20) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  PRIMARY KEY (`id_brg`) USING BTREE,
  KEY `harga` (`harga`),
  KEY `stok` (`stok`)
) ENGINE=InnoDB AUTO_INCREMENT=52059 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_brg` */

insert  into `tb_brg`(`id_brg`,`nm_brg`,`merk`,`stok`,`harga`,`gambar`) values 
(1,'Helmet Bikeboy Ultra Light','aksesoris',10,350000,'bikeboy-helm-sepeda-ultralight-breathable-bicycle-cycling-helmet-008a-white-576.jpg'),
(2,'Helmet Red','aksesoris',60,200000,'helm1.jpg'),
(3,'Kacamata Rockbros Hitam','aksesoris',25,150000,'kacamata_rockbros_hitam1.jpg'),
(4,'Kaos Let\'s Bike Biru Hitam','aksesoris',50,300000,'b8741ad0-bec3-4f7b-8c29-949f767b3ed711.jpg'),
(5,'Kacamata Cool Change ','aksesoris',55,400000,'coolchange-kacamata-sepeda-sport-cycling-glasses-uv400-0098e-black-or-blue-381.jpg'),
(6,'Handlebar MTB Future','aksesoris',10,500000,'mtb_handlerbar.jpg'),
(7,'Handlebar Pura Raza','aksesoris',20,800000,'Handlebar_pura_raza.jpg'),
(8,'Lampu Sepeda FL 900','aksesoris',60,400000,'Lampu_sepeda_FL_900.jpg'),
(9,'Handlebar Taya','aksesoris',35,600000,'HANDLE_BAR_SEPEDA_TAYA.jpg'),
(10,'Handlebar Wake Flar','aksesoris',20,500000,'WAKE_FLAT_HANDLEBAR.jpg'),
(11,'Lampu Sepeda Rockbros','aksesoris',5,450000,'Rockbros_Lampu_Sepeda_Laser_LED__1_1.jpeg'),
(12,'Bell Sepeda Rockbros','aksesoris',32,150000,'rockbros-bell-sepeda-stainless-steel-vintage-model-15-1b-black-101.jpg'),
(13,'Holder Botol MTB','aksesoris',40,120000,'taffsport-holder-botol-minum-sepeda-adjustable-mtb-tmd05b-black-1441.jpg'),
(14,'Sepeda United Merah','sepeda',15,4000000,'Sepeda-Gunung-United-Monanza-20-91.jpg'),
(15,'Sepeda Polygon Hijau','sepeda',15,4000000,'1894160168p.jpg'),
(16,'Sepeda Lipat Police ','sepeda',15,5000000,'379910496p.jpg'),
(17,'Sepeda Polygon Putih','sepeda',15,6500000,'1952162762p.jpg'),
(18,'Sepeda Ontel 1990','sepeda',20,10000000,'onthel1.jpg'),
(19,'Sepeda Ontel 1991','sepeda',20,11000000,'screen-shot-2016-10-24-at-7-08-09-pm1.png'),
(20,'Sepeda Ontel 1992','sepeda',20,12000000,'Sepeda-Onthel-Modern.jpg');

/*Table structure for table `tb_jual` */

DROP TABLE IF EXISTS `tb_jual`;

CREATE TABLE `tb_jual` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `tb_jual_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_jual` */

insert  into `tb_jual`(`id`,`nama`,`alamat`,`tgl_pesan`,`batas_bayar`) values 
(1,'Mang Oleh','Cibaduyut','2021-04-22 12:53:57','2021-04-23 12:53:57'),
(2,'Muhammad Dicky Afriza','Pegandon Kendal','2021-04-22 15:55:20','2021-04-23 15:55:20');

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
  PRIMARY KEY (`id`),
  KEY `id_brg` (`id_brg`),
  KEY `id` (`id`),
  KEY `id_jual` (`id_jual`),
  KEY `harga` (`harga`),
  KEY `jumlah` (`jumlah`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_pesanan` */

insert  into `tb_pesanan`(`id`,`id_jual`,`id_brg`,`nm_brg`,`jumlah`,`harga`,`pilihan`) values 
(19,1,20,'Sepeda United Merah',1,3000000,''),
(20,2,5,'Kacamata Rockbros Hitam',1,200000,''),
(21,11,1,'Helmet Bikeboy Ultra Light',1,350000,'');

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL,
  KEY `role_id` (`role_id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_user` */

insert  into `tb_user`(`id`,`nama`,`username`,`password`,`role_id`) values 
(1,'admin','admin','admin',1),
(2,'afriza','dicky','dicky',2);

/* Trigger structure for table `tb_brg` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `hapus_barang` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `hapus_barang` AFTER DELETE ON `tb_brg` FOR EACH ROW BEGIN
 INSERT INTO produk_hapus
 	( id_brg, 
     nm_brg, 
     merk, 
     stok, 
     harga, 
     gambar, 
     tgl_hapus, 
     nama_user 
    )
    VALUES
    ( OLD.id_brg, 
     OLD.nm_brg, 
     OLD.merk, 
     OLD.stok, 
     OLD.harga, 
     OLD.gambar, 
     SYSDATE(), 
    CURRENT_USER 
    );
    END */$$


DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
