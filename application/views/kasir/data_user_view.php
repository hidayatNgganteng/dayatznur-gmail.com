<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <!-- Custom fonts for this template-->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="<?= base_url() ?>assets/css/sb-admin-2.min.css" rel="stylesheet">
  
  <!-- Custom styles for this page -->
  <link href="<?= base_url() ?>assets/DataTables-1.10.18/css/dataTables.bootstrap4.min.css" rel="stylesheet">
  <link href="<?= base_url() ?>assets/Responsive-2.2.2/css/responsive.bootstrap4.min.css" rel="stylesheet">
  <!-- <link href="<-?= base_url() ?>aassets/bootstrap-datepicker/css/bootstrap-datepicker3.min.css" rel="stylesheet" > -->
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
          <div class="h3 ml-auto">Data user</div>

          <?php $this->load->view('kasir/menu_kanan') ?>
        </nav>

        <!-- Begin Page Content -->
        <div class="container-fluid">
            
			
			<table id="tabelBarang" class="table table-striped table-bordered nowrap" style="width:100%">
				<thead>
					<tr>
						<th>no</th>
						<th>Nama</th>
						<th>Email</th>
						<th>jenis kelamin</th>
						<th>no hp</th>
						<th>aktif</th>
						<th>opsi</th>
					</tr>
				</thead>
				<tbody>
        </tbody>
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

  <!-- Bootstrap core JavaScript-->
  <script src="<?= base_url() ?>assets/jquery/jquery-3.2.1.min.js"></script>
  <script src="<?= base_url() ?>assets/bootstrap-4.1.3/js/bootstrap.min.js"></script>
  <!-- <script src="<-?= base_url() ?>/aassets/js/bootstrap.bundle.min.js"></script> -->

  <!-- Core plugin JavaScript-->
  <!-- <script src="<-?= base_url() ?>/aassets/js/jquery.easing.min.js"></script> -->

  <!-- Custom scripts for all pages-->
  <script src="<?= base_url() ?>assets/js/sb-admin-2.js"></script>
  
  <!-- Page level plugins -->
  <script src="<?= base_url() ?>assets/DataTables-1.10.18/js/jquery.dataTables.min.js"></script>
  <script src="<?= base_url() ?>assets/DataTables-1.10.18/js/dataTables.bootstrap4.min.js"></script>
  <script src="<?= base_url() ?>assets/Responsive-2.2.2/js/dataTables.responsive.min.js"></script>
  <script src="<?= base_url() ?>assets/Responsive-2.2.2/js/responsive.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <!-- <script src="<-?= base_url() ?>/aassets/demo/datatables-demo.js"></script> -->
  
  <script src="<?php echo base_url() ?>assets/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
  <script src="<?php echo base_url() ?>assets/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
  <script>
    var table;
    $(document).ready(function(){
        table = $('#tabelBarang').DataTable({
            "columnDefs": [
            {
                "targets": [ 1,3,4,5 ],
                "orderable": false,
            },
            ],
            "order": [],
            "serverSide": true, 
            "ajax": {
                "url": "http://localhost/bordercell/option/get_data_user",
                "type": "POST"
                },
            "lengthChange": false,
            "responsive": true,
            
            });
        // new $.fn.dataTable.FixedHeader( table );
    });
    
    function reload_table()
    {
        table.ajax.reload(null,false);
    }
    
    function edit_user(id)
    {
        alert(id);
    }
  </script>
</body>

</html>
