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
  <div id="wrapper">
    <?php $this->load->view('kasir/menu') ?>

    <div id="content-wrapper" class="d-flex flex-column">
      <?php $this->load->view('kasir/message') ?>

      <div id="content">

        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>
          <div class="h3 ml-auto">Semua data pengeluaran</div>

          <?php $this->load->view('kasir/menu_kanan') ?>
        </nav>

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <?php
            if($this->session->userdata('level')==1) {
              echo '<button class="btn btn-success" onclick="tambah_pengeluaran()"><i class="glyphicon glyphicon-plus"></i> tambah</button><br><br>';
            } ?>

          <table id="tabelBarang" class="table table-striped table-bordered nowrap" style="width:100%">
            <thead>
              <tr>
                <th>no</th>
                <th>Keterangan</th>
                <th>Nominal</th>
                <th>Waktu</th>
              </tr>
            </thead>
            <tbody>
            </tbody>
            <tfoot>
              <tr>
                <th colspan="3" style="text-align:right">Total:</th>
                <th></th>
              </tr>
            </tfoot>
          </table>
        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <?php $this->load->view('kasir/footer') ?>

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
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
      $(document).ready(function(){
          table = $('#tabelBarang').DataTable({
              "columnDefs": [
              {
                  "targets": [ 0,1,2,3 ],
                  "orderable": false,
              },
              ],
              "rowCallback": function( row, data, dataIndex){
                const inputData = data[3].split(" ")[0]
                const d = new Date(),
                    month = `${d.getMonth() + 1}`.padStart(2, '0'),
                    day = `${d.getDate()}`.padStart(2, '0'),
                    year = d.getFullYear()

                const currentDate = `${year}-${month}-${day}`

                if (inputData == currentDate) {
                  $(row).css('backgroundColor', 'rgba(199,249,107, 0.25)')
                }
              },
              "order": [],
              "serverSide": true, 
              "ajax": {
                  "url": "http://localhost/bordercell/option/get_pengeluaran",
                  "type": "POST"
                  },
              "lengthChange": false,
              "responsive": true,
              
              });
          });
       
       function reload_table()
       {
           table.ajax.reload(null,false);
       }

       function tambah_pengeluaran () {
        $('#form')[0].reset()
        $('#modal_form').modal('show') 
      }

      function save(){
          const url = "<?php echo site_url('option/simpan_pengeluaran')?>";
           
           $.ajax({
               url : url,
               type: "POST",
               data: $('#form').serialize(),
               dataType: "JSON",
               success: function(data){
                   if(data.status){
                       $('#modal_form').modal('hide');
                       reload_table();
                   } else {
                       for (var i = 0; i < data.inputerror.length; i++){
                          $('[name="'+data.inputerror[i]+'"]').addClass('is-invalid');
                          $('[name="'+data.inputerror[i]+'"]').next().text(data.error_string[i]);
                       }
                   }            
               },
               error: function (jqXHR, textStatus, errorThrown)
               {
                   alert(textStatus);
               }
           });
       }
      
  </script>

  <div class="modal fade" id="modal_form" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">

          <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Input pengeluaran</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
              </button>
          </div>
            
            <div class="modal-body form">
              <form id="form" class="form-horizontal">
                <div class="form-body">
                  <div class="form-group">
                    <label for="nama_barang" class="col-form-label">Keterangan</label>
                    <input type="text" class="form-control " name="nama_barang" >
                    <div class="invalid-feedback"></div>
                  </div>
                        
                  <div class="form-group">
                    <label for="nominal" class="col-form-label">Nominal</label>
                    <input type="number" class="form-control" name="nominal" >
                    <div class="invalid-feedback"></div>
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
