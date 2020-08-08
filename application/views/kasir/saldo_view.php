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
   <style type="text/css">
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

  <!-- Page Wrapper -->
  <div id="wrapper">
    <?php $this->load->view('kasir/menu') ?>

    <div id="content-wrapper" class="d-flex flex-column"> 
      <?php $this->load->view('kasir/message') ?>

      <div id="content">

        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>
          <div class="h3 ml-auto">Saldo Fisik</div>

          <?php $this->load->view('kasir/menu_kanan') ?>
        </nav>

        <div class="container-fluid">
          <?php
              if ($data_saldo_fisik->saldo > 250000) { ?>
                <h2 class="alert alert-success" role="alert" data-saldo="<?php echo $data_saldo_fisik->saldo ?>" data-saldoId="<?php echo $data_saldo_fisik->id ?>" id="saldo_view_fisik"> <?php
              } else if ($data_saldo_fisik->saldo > 100000 && $data_saldo_fisik->saldo <= 250000) { ?>
                <h2 class="alert alert-warning" role="alert" data-saldo="<?php echo $data_saldo_fisik->saldo ?>" data-saldoId="<?php echo $data_saldo_fisik->id ?>" id="saldo_view_fisik"> <?php
              } else { ?>
                <h2 class="alert alert-danger" role="alert" data-saldo="<?php echo $data_saldo_fisik->saldo ?>" data-saldoId="<?php echo $data_saldo_fisik->id ?>" id="saldo_view_fisik"> <?php
              }
                $saldo = number_format($data_saldo_fisik->saldo,2,',','.');
                $saldoInArray = explode(",",$saldo);
                echo "Rp " . $saldoInArray[0];
              ?>
            </h2>

            <!-- <?php
            if($this->session->userdata('level')==1) {
              echo '<button class="btn btn-danger" onclick="kurangi_saldo()"><i class="glyphicon glyphicon-plus"></i> Kurangi</button>';
              echo '<button class="btn btn-success" style="margin-left: 10px" onclick="tambah_saldo()"><i class="glyphicon glyphicon-plus"></i> Tambah</button><br><br>';
            } ?> -->
        </div>

      </div>

      <?php $this->load->view('kasir/footer') ?>

    </div>

  </div>

  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <div class="modal fade" id="error_kurang" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Nominal tidak boleh kurang dari saldo</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
      </div>
    </div>
  </div>

  <script src="<?= base_url() ?>assets/jquery/jquery-3.2.1.min.js"></script>
  <script src="<?= base_url() ?>assets/bootstrap-4.1.3/js/bootstrap.min.js"></script>
  <script src="<?= base_url() ?>assets/js/sb-admin-2.js"></script>
  <script src="<?= base_url() ?>assets/DataTables-1.10.18/js/jquery.dataTables.min.js"></script>
  <script src="<?= base_url() ?>assets/DataTables-1.10.18/js/dataTables.bootstrap4.min.js"></script>
  <script src="<?= base_url() ?>assets/Responsive-2.2.2/js/dataTables.responsive.min.js"></script>
  <script src="<?= base_url() ?>assets/Responsive-2.2.2/js/responsive.bootstrap4.min.js"></script>
  <script src="<?php echo base_url() ?>assets/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
  <script>
      var statusUbah = ''

      function tambah_saldo () {
        statusUbah = 'tambahFisik'
        const saldo = $("#saldo_view_fisik").attr('data-saldo')
        const saldoId = $("#saldo_view_fisik").attr('data-saldoId')
        $('#saldo').val('')
        $("#currentSaldo").val(saldo)
        $("#saldoId").val(saldoId)
        $("#title").text('Tambah Saldo')
        $('#modal_form').modal('show') 
      }

      function kurangi_saldo () {
        statusUbah = 'kurangiFisik'
        const saldo = $("#saldo_view_fisik").attr('data-saldo')
        const saldoId = $("#saldo_view_fisik").attr('data-saldoId')
        $('#saldo').val('')
        $("#currentSaldo").val(saldo)
        $("#saldoId").val(saldoId)
        $("#title").text('Kurangi Saldo')
        $('#modal_form').modal('show') 
      }
          
       function save() {
          if (statusUbah == 'tambahFisik') {
            const url = "<?php echo site_url('option/tambah_saldo_fisik')?>";

            $.ajax({
                url : url,
                type: "POST",
                data: $('#form').serialize(),
                dataType: "JSON",
                success: function(data)
                {
                    if(data.status){
                      location.reload();
                      $('#modal_form').modal('hide');
                    }
                },
                error: function (jqXHR, textStatus, errorThrown) {
                  alert('error');
                }
            });
          }  else {
            // const saldoSaatIni = $("#saldo_view_fisik").attr('data-saldo')
            // const saldoMauDikurang = $('#saldo').val()
            // console.log(saldoSaatIni, saldoMauDikurang)

            // if (saldoMauDikurang > saldoSaatIni) {
            //   $('#modal_form').modal('hide');
            //   $("#error_kurang").modal('show')
            //   return
            // }

            const url = "<?php echo site_url('option/kurangi_saldo_fisik')?>";

            $.ajax({
                url : url,
                type: "POST",
                data: $('#form').serialize(),
                dataType: "JSON",
                success: function(data)
                {
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
       }
  </script>
  
  
  <!-- Bootstrap modal -->
  <div class="modal fade" id="modal_form" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">

          <div class="modal-header">
              <h5 class="modal-title" id="title"></h5>
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
