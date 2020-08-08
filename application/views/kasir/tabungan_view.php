<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <link href="<?= base_url() ?>assets/css/sb-admin-2.min.css" rel="stylesheet">
  <link href="<?= base_url() ?>assets/DataTables-1.10.18/css/dataTables.bootstrap4.min.css" rel="stylesheet">
  <link href="<?= base_url() ?>assets/Responsive-2.2.2/css/responsive.bootstrap4.min.css" rel="stylesheet">
  <link href="<?= base_url() ?>assets/jquery-ui-1.12.1.custom/jquery-ui.min.css" rel="stylesheet">
  <title>Tabungan</title>
  <style>
    .title {
      text-align: center;
      color: rgb(3, 172, 14);
      margin-top: 50px;
      margin-bottom: 50px;
    }
    .message {
        padding: 15px 15px;
        background-color: #ff3300;
      }
      .textMessage {
        text-align: center;
        color: #ffffff; 
        font-weight: bold; 
        animation: blinker 1s linear infinite;
      }
      @keyframes blinker {
        50% {
          opacity: 0;
        }
      }
  </style>
</head>

<body id="page-top">
  <div id="wrapper">
    <?php $this->load->view('kasir/menu') ?>

    <div id="content-wrapper" class="d-flex flex-column">
      <?php $this->load->view('kasir/message') ?>

      <div id="content">

        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>
          <div class="h3 ml-auto">Total tabungan</div>

          <?php $this->load->view('kasir/menu_kanan') ?>
        </nav>

        <!-- Begin Page Content -->
        <div class="container-fluid">
            
			<div class="row">
        <div class="col-md-6">
          <h4>Kontrakan</h4>
          <h2 class="alert alert-success" role="alert" id="saldo-kontrakan">
            <?php
              $saldo = number_format($saldo_kontrakan->nominal,2,',','.');
              $saldoInArray = explode(",",$saldo);
              echo "Rp " . $saldoInArray[0];
            ?>
          </h2>
        </div>
        <div class="col-md-6">
          <h4>Kas toko</h4>
          <h2 class="alert alert-info" role="alert" id="saldo-kas">
            <?php
              $saldo = number_format($saldo_kas->nominal,2,',','.');
              $saldoInArray = explode(",",$saldo);
              echo "Rp " . $saldoInArray[0];
            ?>
          </h2>
        </div>

        <div class="col-md-12">
          <h4></h4>
          <?php
            if($this->session->userdata('level')==1) {
              echo '<button class="btn btn-info" onclick="pengeluaran()"><i class="glyphicon glyphicon-plus"></i> Ambil</button><br><br>';
            } 
          ?>
        </div>
      </div>

      <hr style="border-top: dotted 1px;">

      <h3 class="title">Laporan pengeluaran tabungan</h3>

			<table id="tabelBarang" class="table table-striped table-bordered nowrap" style="width:100%">
				<thead>
					<tr>
						<th>No</th>
						<th>Kategori</th>
            <th>Keterangan</th>
            <th>Nominal</th>
            <th>Tanggal</th>
					</tr>
				</thead>
				<tbody>
        </tbody>
			</table>
        </div>

      </div>

      <?php $this->load->view('kasir/footer') ?>

    </div>

  </div>

  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <script src="<?= base_url() ?>assets/jquery/jquery-3.2.1.min.js"></script>
  <script src="<?= base_url() ?>assets/bootstrap-4.1.3/js/bootstrap.min.js"></script>
  <script src="<?= base_url() ?>assets/js/sb-admin-2.js"></script>
  <script src="<?= base_url() ?>assets/DataTables-1.10.18/js/jquery.dataTables.min.js"></script>
  <script src="<?= base_url() ?>assets/DataTables-1.10.18/js/dataTables.bootstrap4.min.js"></script>
  <script src="<?= base_url() ?>assets/Responsive-2.2.2/js/dataTables.responsive.min.js"></script>
  <script src="<?= base_url() ?>assets/Responsive-2.2.2/js/responsive.bootstrap4.min.js"></script>
  <script src="<?php echo base_url() ?>assets/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
  <script src="<?php echo base_url() ?>assets/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
  <script>
      var table;
      var lunasiHutangProses = false
      $(document).ready(function(){
          table = $('#tabelBarang').DataTable({
            "columnDefs": [
              {
                "targets": [ 0,1,2, 3 ],
                "orderable": false,
              }
            ],
            "order": [],
            "serverSide": true, 
            "ajax": {
              "url": "http://localhost/bordercell/option/get_laporan_tabungan",
              "type": "POST"
            },
            "lengthChange": false,
            "responsive": true
          })
      })
       
      function reload_table()
      {
          table.ajax.reload(null,false);
      }

      function save() {
        var url = "<?php echo site_url('option/simpan_pengeluaran_tabungan/') ?>";
        
        $.ajax({
          url : url,
          type: "POST",
          data: $('#form').serialize(),
          dataType: "JSON",
          success: function(data){
            if(data.status) {
              $('#modal_form').modal('hide');

              if (data.kategori == 1) {
                $("#saldo-kontrakan").text(formatRupiah(data.tabungan_akhir))
              } else if (data.kategori == 3) {
                $("#saldo-kas").text(formatRupiah(data.tabungan_akhir))
              }

              reload_table();
            } else {
              for (var i = 0; i < data.inputerror.length; i++){
                $('[name="'+data.inputerror[i]+'"]').addClass('is-invalid');
                $('[name="'+data.inputerror[i]+'"]').next().text(data.error_string[i]);
              }
            }            
          },
          error: function (jqXHR, textStatus, errorThrown){
            alert('error');
          }
        });
    }

    function pengeluaran() {
      $('#form')[0].reset()
      $('#modal_form').modal('show') 
    }

    function formatRupiah(angka){
      var	reverse = angka.toString().split('').reverse().join(''),
        ribuan 	= reverse.match(/\d{1,3}/g);
        ribuan	= ribuan.join('.').split('').reverse().join('');

      return `Rp ${ribuan}`
		}
      
  </script>

<div class="modal fade" id="modal_form" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">

          <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Pengeluaran</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
              </button>
          </div>
            
            <div class="modal-body form">
              <form id="form" class="form-horizontal">
                <div class="form-body">
                  <div class="form-group">
                    <label for="nominal" class="col-form-label">Nominal</label>
                    <input type="text" class="form-control" name="nominal" id="form-nominal">
                    <div class="invalid-feedback"></div>
                  </div>
                  <div class="form-group">
                    <label for="keterangan" class="col-form-label">Keterangan</label>
                    <input type="text" class="form-control" name="keterangan" id="form-nominal">
                    <div class="invalid-feedback"></div>
                  </div>
                  <div class="form-group mt-2">
                    <label for="kategori">Kategori</label>
                    <select class="form-control " name="kategori" id="form-kategori">
                      <option value="1">Kontrakan</option>
                      <option value="3">Kas Toko</option>
                    </select>
                  </div>
                </div>
              </form>
            </div>
            
            <div class="modal-footer">
              <button type="button" onClick="save()" class="btn btn-primary">Simpan</button>
            </div>

        </div>
    </div>
  </div>
</body>

</html>
