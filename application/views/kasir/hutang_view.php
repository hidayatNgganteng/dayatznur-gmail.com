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
  <title>Hutang</title>
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
          <div class="h3 ml-auto">Daftar hutang</div>

          <?php $this->load->view('kasir/menu_kanan') ?>
        </nav>

        <!-- Begin Page Content -->
        <div class="container-fluid">
            
			
			<table id="tabelBarang" class="table table-striped table-bordered nowrap" style="width:100%">
				<thead>
					<tr>
						<th>no</th>
						<th>Nama</th>
            <th>Harga beli</th>
						<th>Harga Jual</th>
						<th>Waktu</th>
            <th>Status</th>
            <th>Aksi</th>
					</tr>
				</thead>
				<tbody>
        </tbody>
        <tfoot>
          <tr>
            <th colspan="6" style="text-align:right">Total:</th>
            <th></th>
          </tr>
        </tfoot>
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
                  "targets": [ 0,1,2,3,4,5,6 ],
                  "orderable": false,
              },
              ],
              "rowCallback": function( row, data, dataIndex){
                const inputData = data[4].split(" ")[0]
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
                  "url": "http://localhost/bordercell/option/get_hutang",
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

       function lunasi_hutang(idHutang) {
        if (!lunasiHutangProses) {
          lunasiHutangProses = true
          var url = "<?php echo site_url('option/lunasi_hutang/') ?>" + idHutang;
          
          $.ajax({
            url : url,
            type: "POST",
            dataType: "JSON",
            success: function(data){
              lunasiHutangProses = false

              if(data.status) {
                $('#modal_form').modal('hide');
                reload_table();
              } else {
                alert('error');  
              }            
            },
            error: function (jqXHR, textStatus, errorThrown){
              lunasiHutangProses = false
              alert('error');
            }
          });
        }
       }
      
  </script>
</body>

</html>
