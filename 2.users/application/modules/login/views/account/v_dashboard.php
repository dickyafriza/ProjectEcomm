<?php defined('BASEPATH') OR exit('No direct script access
allowed'); ?>
<!DOCTYPE html>
<head>
 <meta charset="UTF-8">
 <title>Dashboard Upload
</title>
</head>
<body>
 <h3>DASHBOARD</h3>
 <p>
 Selamat datang di halaman dashboard, <?php echo ucfirst($this->session->userdata('username')); ?>!
 Untuk logout dari sistem, silakan klik <?php echo anchor('login/logout','di sini...'); ?>
 </p>
 <p>Upload barang <?php echo anchor('login/upload','di sini...'); ?></p>
</body>
</html>