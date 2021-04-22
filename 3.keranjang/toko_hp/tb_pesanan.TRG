TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `pesanan_produk` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN\n	UPDATE tb_brg SET stok = stok-NEW.jumlah\n    WHERE id_brg = NEW.id_brg;\nEND'
sql_modes=1098907648
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_unicode_ci'
db_cl_names='utf8mb4_general_ci'
created=159007901117
