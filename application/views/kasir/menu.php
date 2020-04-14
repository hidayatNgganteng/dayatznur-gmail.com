<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
  <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<?= site_url() ?>">
    <div class="sidebar-brand-icon">
      <img style="width: auto; height: 50px" src="http://localhost/bordercell/assets/images/p.png">
    </div>
    <div class="sidebar-brand-text mx-1">
      <?php
        if($this->session->userdata('level')==1){
          echo 'Admin';
        }else{
          echo 'Kasir';
        }
      ?>
    </div>
  </a>

  <hr class="sidebar-divider my-0">

  <li class="nav-item">
    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapse_kasir" aria-expanded="true" aria-controls="collapse_kasir">
      <i class="fas fa-fw fa-cash-register"></i>
      <span>Kasir</span>
    </a>
    <div id="collapse_kasir" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
      <div class="bg-white py-2 collapse-inner rounded">
        <a class="collapse-item" href="<?= site_url() ?>"><i class="fas fa-thermometer"></i> Kasir Produk</a>
        <a class="collapse-item" href="<?= site_url() ?>option/kasir_elektrik_view"><i class="fas fa-thermometer-empty"></i> Kasir Elektrik</a>
    </div>
  </li>

  <hr class="sidebar-divider">
  
  <li class="nav-item">
      <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapse_saldo" aria-expanded="true" aria-controls="collapse_barang">
        <i class="far fa-hdd"></i>
        <span>Saldo</span>
      </a>
      <div id="collapse_saldo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
        <div class="bg-white py-2 collapse-inner rounded">
          <a class="collapse-item" href="<?= site_url() ?>option/saldo"><i class="fas fa-gem"></i> Saldo Fisik</a>
          <a class="collapse-item" href="<?= site_url() ?>option/saldo_elektrik"><i class="far fa-gem"></i> Saldo Elektrik</a>
      </div>
  </li>

  <hr class="sidebar-divider">

  <li class="nav-item">
    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapse_barang" aria-expanded="true" aria-controls="collapse_barang">
      <i class="fas fa-fw fa-cubes"></i>
      <span>Data barang</span>
    </a>
    <div id="collapse_barang" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
      <div class="bg-white py-2 collapse-inner rounded">
        <a class="collapse-item" href="<?= site_url() ?>option/data_barang"><i class="fas fa-battery-full"></i> Semua Barang</a>
        <a class="collapse-item" href="<?= site_url() ?>option/data_barang_hampir_habis"><i class="fas fa-battery-half"></i> Barang Hampir Habis</a>
        <a class="collapse-item" href="<?= site_url() ?>option/data_barang_kosong"><i class="fas fa-battery-empty"></i> Barang Kosong</a>
    </div>
  </li>

  <hr class="sidebar-divider">

  <li class="nav-item">
    <a class="nav-link" href="<?= site_url() ?>option/data_penjualan">
    <i class="far fa-handshake"></i>
      <span>Data penjualan</span></a>
  </li>

  <hr class="sidebar-divider">

  <li class="nav-item">
    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
    <i class="fas fa-money-bill-wave"></i>
      <span>Keuntungan</span>
    </a>
    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
      <div class="bg-white py-2 collapse-inner rounded">
        <!-- <a class="collapse-item" href="<?= site_url() ?>option/laba_tabel"><i class="fas fa-table"></i> Tabel</a> -->
        <a class="collapse-item" href="<?= site_url() ?>option/laba_diagram"><i class="far fa-chart-bar"></i> Diagram / Hari</a>
        <a class="collapse-item" href="<?= site_url() ?>option/laba_diagram_per_bulan"><i class="fas fa-building"></i> Diagram / Bulan</a>
        <a class="collapse-item" href="<?= site_url() ?>option/laba_diagram_per_tahun"><i class="fas fa-hospital-alt"></i> Diagram / Tahun</a>
    </div>
  </li>

  <hr class="sidebar-divider">

  <li class="nav-item">
    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseIO" aria-expanded="true" aria-controls="collapseTwo">
    <i class="fas fa-clipboard-list"></i>
      <span>Input / Ouput</span>
    </a>
    <div id="collapseIO" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
      <div class="bg-white py-2 collapse-inner rounded">
        <a class="collapse-item" href="<?= site_url() ?>option/data_pemasukan"><i class="fas fa-box"></i> Pemasukan</a>
        <a class="collapse-item" href="<?= site_url() ?>option/data_pengeluaran"><i class="fas fa-dolly-flatbed"></i> Pengeluaran</a>
    </div>
  </li>

  <hr class="sidebar-divider">

  <li class="nav-item">
    <a class="nav-link" href="<?= site_url() ?>option/data_hutang">
    <i class="fas fa-torii-gate"></i>
      <span>Daftar Hutang</span></a>
  </li>

  <!-- <hr class="sidebar-divider">

  <?php
    if($this->session->userdata('level')==1){ ?>
      <li class="nav-item">
        <a class="nav-link" href="<?= site_url() ?>option/data_user">
        <i class="far fa-user"></i>
          <span>Data user</span></a>
      </li>

      <hr class="sidebar-divider">

  <?php } ?> -->

  <div class="text-center d-none d-md-inline">
    <button class="rounded-circle border-0" id="sidebarToggle"></button>
  </div>

</ul>