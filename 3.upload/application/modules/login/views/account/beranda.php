<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <title>Toko Sepeda</title>
        <link href="css/styles.css" rel="stylesheet" />
</head>
<body class="sb-nav-fixed">
    <h1>SELAMAT DATANG</h1>
    <p>
    Silakan klik link
    <?php echo anchor('login','Masuk'); ?>
    untuk masuk ke dalam sistem atau
    <?php echo anchor('../login/register','Daftar'); ?>
    untuk mendaftar.
    </p>
   
</body>
</html>