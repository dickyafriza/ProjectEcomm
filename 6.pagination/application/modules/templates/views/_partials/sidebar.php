<!-- Page Wrapper -->
<div id="wrapper">

  <!-- Sidebar -->
  <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
      <div class="sidebar-brand-icon">
        <i class="fas fa-archive"></i>
      </div>
      <div class="sidebar-brand-text mx-3">Produk</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item <?php if ($this->uri->segment(3) == "dashboard") {
                          echo "active";
                        } ?>">
      <a class="nav-link " href="<?= base_url('manajemenuser/admin/dashboard') ?>">
        <i class="fas fa-fw fa-tachometer-alt"></i>
        <span>Dashboard</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
      Barang
    </div>


    <!-- Nav Item - Tables -->
    <li class="nav-item <?php if ($this->uri->segment(3) == "produk") {
                          echo "active";
                        } ?>">
      <a class="nav-link" href="<?= base_url('manajemenuser/admin/produk') ?>">
        <i class="fas fa-fw fa-table"></i>
        <span>Produk</span></a>
    </li>
    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
      User
    </div>

    <!-- Nav Item - Charts -->
    <li class="nav-item <?php if ($this->uri->segment(3) == "datapengguna") {
                          echo "active";
                        } ?>">
      <a class="nav-link" href="<?= base_url('manajemenuser/admin/datapengguna') ?>">
        <i class="fas fa-fw fa-users"></i>
        <span>Data Pengguna</span></a>
    </li>

    <!-- Divider -->
    <!-- <hr class="sidebar-divider"> -->
    <!-- Heading -->
    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
      <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

  </ul>
  <!-- End of Sidebar -->