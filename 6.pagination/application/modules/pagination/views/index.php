<!-- Begin Page Content -->
<div class="container-fluid">

  <!-- Page Heading -->
  <h1 class="h3 mb-2 text-gray-800"><?= $head; ?></h1>

  <!-- <div class="flash-data" data-flashdata="<?= $this->session->flashdata('pesan'); ?>"></div> -->




  <!-- DataTales Example -->
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <!-- <a href="<?= base_url('barang/tambah_barang') ?>" class="btn btn-primary btn-icon-split">
        <span class="icon text-white-50">
          <i class="fas fa-plus"></i>
        </span>
        <span class="text">Tambah Produk</span>
      </a> -->
    </div>


    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-bordered" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th>No</th>
              <th>Nama Produk</th>
              <th>Harga</th>
              <th>Stok</th>
              <th>Gambar</th>

            </tr>
          </thead>
          <tbody>
            <?php

            foreach ($brg as $b) :
            ?>
              <tr>
                <td><?= ++$start; ?></td>
                <td><?= $b['nm_brg']; ?></td>
                <td>Rp. <?= number_format($b['harga'], 0) ?></td>
                <td><?= $b['stok']; ?></td>
                <td><img src="<?= base_url('assets/gambar/' . $b['gambar']); ?>" width="60px"></td>


              </tr>
            <?php endforeach; ?>




          </tbody>
        </table>
        <?= $this->pagination->create_links(); ?>
      </div>
    </div>
  </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->