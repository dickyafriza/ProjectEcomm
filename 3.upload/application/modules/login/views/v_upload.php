<head>
    <title>malasngoding.com</title>
</head>

<body>
    <center>
        <h1>Upload File Dengan Kode Igniter</h1>
    </center>
    <?php echo $error; ?>
    <?php echo form_open_multipart('../login/upload/aksi_upload'); ?>
    <input type="file" name="berkas" />
    <br /><br />
    <input type="submit" value="upload" />
    </form>
</body>

</html>