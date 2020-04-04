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
  <div id="wrapper">
    <?php $this->load->view('kasir/menu') ?>

    <div id="content-wrapper" class="d-flex flex-column">
      <div id="content">

        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>
          <div class="h3 ml-auto">Pendapatan</div>

          <?php $this->load->view('kasir/menu_kanan') ?>
        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">
            
			<div class="form-row">
			
			<div class="form-group col-md-3">
				<label for="satuan">bulan</label>
				<select class="form-control " id="bulan" onChange="cek_bulan()" name="bulan">
					<!--option value="pcs">pcs</option-->
					<?php
					$bulan=array("January","February","March","April","Mey","June","July","Agust","September","October","November","December");
					$jlh_bln=count($bulan);
					//for($c=0; $c<($jlh_bln - (date("m")+1)); $c++){
                    for($c=0; $c < (date("m")-1); $c++){
                    ?>
                        <option value="<?= $c ?>"> <?= $bulan[$c] ?></option>
                    <?php
					}
					?>
                        <option value="<?= date("m")-1; ?>" selected="selected"><?= date("F") ?></option>
                        
                    <?php
                    $sisa = 12 - date('m'); //5
                    $tgl = 12 - $sisa;
                    for($b=$tgl; $b < 12; $b++){
                    ?>
                        <option value="<?= $b ?>"> <?= $bulan[$b] ?> </option>

					<?php
					}
					?>
                    
                        
				</select>
			</div>
			
			<div class="form-group col-md-3">
				<label for="satuan">Tahun</label>
				<select class="form-control " id="tahun" name="tahun" onChange="cek_bulan()">
					<!--option value="pcs">pcs</option-->
					<?php
					$now=date("Y") -1;
					for($thn=$now - 3; $thn<=$now; $thn++){
						echo "<option value=$thn>$thn</option>";
					}
					?>
						<option value="<?= date("Y") ?>" selected="selected"><?= date("Y") ?></option>
				</select>
			</div>
			
			</div>
			<!--button type="button" onClick="cekTanggal()">cek</button-->
			<div class="canvas-wrapper" id="chart-container"  >
				<canvas class="chart" id="mycanvas" height="300" width="600"></canvas>
			</div>
			
    
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
  <script src="<?= base_url() ?>/assets/js/sb-admin-2.js"></script>
  <script src="<?= base_url() ?>assets/DataTables-1.10.18/js/jquery.dataTables.min.js"></script>
  <script src="<?= base_url() ?>assets/DataTables-1.10.18/js/dataTables.bootstrap4.min.js"></script>
  <script src="<?= base_url() ?>assets/Responsive-2.2.2/js/dataTables.responsive.min.js"></script>
  <script src="<?= base_url() ?>assets/Responsive-2.2.2/js/responsive.bootstrap4.min.js"></script>
  <script src="<?php echo base_url() ?>assets/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
  <script src="<?php echo base_url() ?>assets/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
  
  <script src="<?php echo base_url() ?>assets/js/Chart.min.js"></script>
  <script src="<?php echo base_url() ?>assets/js/custom.js"></script>
  <script>
      
      function cek_bulan()
      {
        var bulan = $("#bulan").val();
        var tahun = $("#tahun").val();
        $.ajax({
            url:'http://localhost/bordercell/option/cari_diagram',
            data:{bulan:bulan, tahun:tahun},
            method: "POST",
              success:function(data)
              {
                  var obj=JSON.parse(data);
                  diagram(obj);
                  //alert(data);
              },
              error: function(data)
              {
                  console.log(data);
              }
        });
      }
       
      $(function(){
        //cek_bulan();
          $.ajax({
              url:"http://localhost/bordercell/option/diagram",
              method: "GET",
              success:function(data)
              {
                  var obj=JSON.parse(data);
                  diagram(obj);
                  //alert(data);
              },
              error: function(data)
              {
                  console.log(data);
              }
          });
      });
      
      function diagram(obj)
      {
          var player = [];
          var score = [];
          
          for(var i=0; i<obj.length; i++)
          {
              player.push(obj[i].tgl_transaksi);
              score.push(obj[i].total_harga);
          }
          
          var option = {
              responsive: true,
              scales: {
                  yAxes: [{
                      stacked: true,
                      gridLines:
                      {
                          display: true,
                          color: "rgba(255,99,132,0.2)"
                      }
                  }],
              }
          };
          
          var ctx = $("#mycanvas");
          ctx.height(200);
          var barGraph = new Chart(ctx, {
              type: 'bar',
              label: 'pendapatan',
              options: option,
              data:{
                  labels: player,
                  datasets:[{
                      label: 'pendapatan',
                      backgroundColor: "rgba(255,99,132,0.2)",
                      borderColor: "rgba(255,99,132,1)",
                      borderWidth: 2,
                      hoverBackgroundColor: "rgba(255,99,132,0.4)",
                      hoverBorderColor: "rgba(255,99,132,1)",
                      data:score
                  }]
              }
          });
          
      }
  </script>
</body>

</html>
