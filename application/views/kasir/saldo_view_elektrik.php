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
  <title>kasir</title>
</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">
    <?php $this->load->view('kasir/menu') ?>

    <div id="content-wrapper" class="d-flex flex-column">  
      <div id="content">

        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>
          <div class="h3 ml-auto">Saldo Elektrik</div>

          <?php $this->load->view('kasir/menu_kanan') ?>
        </nav>

        <div class="container-fluid">
          <div class="row">
            <div class="col-md-6">
              <h4>Saldo Mitra</h4>
              <?php
                  if ($data_saldo_mitra->saldo > 250000) { ?>
                      <h2 class="alert alert-success" role="alert" data-saldo="<?php echo $data_saldo_mitra->saldo ?>" data-saldoId="<?php echo $data_saldo_mitra->id ?>" id="saldo_view_mitra"> <?php
                  } else if ($data_saldo_mitra->saldo > 100000 && $data_saldo_mitra->saldo <= 250000) { ?>
                      <h2 class="alert alert-warning" role="alert" data-saldo="<?php echo $data_saldo_mitra->saldo ?>" data-saldoId="<?php echo $data_saldo_mitra->id ?>" id="saldo_view_mitra"> <?php
                  } else { ?>
                      <h2 class="alert alert-danger" role="alert" data-saldo="<?php echo $data_saldo_mitra->saldo ?>" data-saldoId="<?php echo $data_saldo_mitra->id ?>" id="saldo_view_mitra"> <?php
                  }
                      $saldo = number_format($data_saldo_mitra->saldo,2,',','.');
                      $saldoInArray = explode(",",$saldo);
                      echo "Rp " . $saldoInArray[0];
                  ?>
                  </h2>

                  <?php
                  if($this->session->userdata('level')==1) {
                  echo '<button class="btn btn-success" onclick="edit_barang(0)"><i class="glyphicon glyphicon-plus"></i> edit</button><br><br>';
              } ?>
            </div>
            <div class="col-md-6">
              <h4>Saldo OrderKuota</h4>
              <?php
                  if ($data_order_kuota->saldo > 250000) { ?>
                      <h2 class="alert alert-success" role="alert" data-saldo="<?php echo $data_order_kuota->saldo ?>" data-saldoId="<?php echo $data_order_kuota->id ?>" id="saldo_view_orderkuota"> <?php
                  } else if ($data_order_kuota->saldo > 100000 && $data_order_kuota->saldo <= 250000) { ?>
                      <h2 class="alert alert-warning" role="alert" data-saldo="<?php echo $data_order_kuota->saldo ?>" data-saldoId="<?php echo $data_order_kuota->id ?>" id="saldo_view_orderkuota"> <?php
                  } else { ?>
                      <h2 class="alert alert-danger" role="alert" data-saldo="<?php echo $data_order_kuota->saldo ?>" data-saldoId="<?php echo $data_order_kuota->id ?>" id="saldo_view_orderkuota"> <?php
                  }
                      $saldo = number_format($data_order_kuota->saldo,2,',','.');
                      $saldoInArray = explode(",",$saldo);
                      echo "Rp " . $saldoInArray[0];
                  ?>
                  </h2>

                  <?php
                  if($this->session->userdata('level')==1) {
                  echo '<button class="btn btn-info" onclick="edit_barang(1)"><i class="glyphicon glyphicon-plus"></i> edit</button><br><br>';
              } ?>
            </div>
          </div>
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
  <script>
      function edit_barang (type) {
        // 0 = mitra 1 = orderkuota
        if (type == 0) {
          const saldo = $("#saldo_view_mitra").attr('data-saldo')
          const saldoId = $("#saldo_view_mitra").attr('data-saldoId')
          $('#saldo').val(saldo)
          $("#saldoId").val(saldoId)  
        } else {
          const saldo = $("#saldo_view_orderkuota").attr('data-saldo')
          const saldoId = $("#saldo_view_orderkuota").attr('data-saldoId')
          $('#saldo').val(saldo)
          $("#saldoId").val(saldoId)
        }

        $('#modal_form').modal('show') 
      }
          
       function save() {
        const url = "<?php echo site_url('option/update_saldo')?>";

        $.ajax({
          url : url,
          type: "POST",
          data: $('#form').serialize(),
          dataType: "JSON",
          success: function(data){
            if(data.status){
              location.reload();
              $('#modal_form').modal('hide');
            }
          },
          error: function (jqXHR, textStatus, errorThrown) {
            alert('error');
          }
        });
       }
  </script>
  
  
  <!-- Bootstrap modal -->
  <div class="modal fade" id="modal_form" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">

          <div class="modal-header">
              <h5 class="modal-title" id="title">Edit saldo</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
              </button>
          </div>
            
            <div class="modal-body form">
              <form id="form" class="form-horizontal">

                <input type="hidden" name="saldoId" id="saldoId"/> 
                <input type="hidden" name="currentSaldo" id="currentSaldo"/> 
                <div class="form-body">
                       
                  <div class="form-group">
                      <input type="text" class="form-control" name="saldo" id="saldo">
                      <div class="invalid-feedback"></div>
                  </div>
           
                </div><!--form body-->

              </form>
            </div><!--modal-body-->
            
            <div class="modal-footer">
              <button type="button" onClick="save()" class="btn btn-primary">Simpan</button>
              <!--/form-->
              <button type="button" class="btn btn-danger" data-dismiss="modal">Kembali</button>
            </div>

        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->
  <!-- End Bootstrap modal -->
      
</body>

</html>
