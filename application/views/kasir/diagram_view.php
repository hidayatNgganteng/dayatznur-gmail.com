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
          <div class="h3 ml-auto">Pendapatan Harian</div>

          <?php $this->load->view('kasir/menu_kanan') ?>
        </nav>

        <div class="container-fluid">
            

          <div class="form-row">
            <div class="form-group col-md-3">
              <label for="satuan">bulan</label>
              <select class="form-control " id="bulan" onChange="cek_bulan()" name="bulan">
                <?php
                $bulan=array("January","February","March","April","Mey","June","July","Agust","September","October","November","December");
                $jlh_bln=count($bulan);

                for($c=0; $c < (date("m")-1); $c++){ ?>
                  <option value="<?= $c ?>"> <?= $bulan[$c] ?></option> <?php
                } ?>

                  <option value="<?= date("m")-1; ?>" selected="selected"><?= date("F") ?></option> <?php
                  $sisa = 12 - date('m'); //5
                  $tgl = 12 - $sisa;

                  for($b=$tgl; $b < 12; $b++){?>
                    <option value="<?= $b ?>"> <?= $bulan[$b] ?> </option> <?php
                  }?>     
              </select>
            </div>
            
            <div class="form-group col-md-3">
              <label for="satuan">Tahun</label>
              <select class="form-control " id="tahun" name="tahun" onChange="cek_bulan()">
                <?php
                $now=date("Y") -1;
                for($thn=$now - 3; $thn<=$now; $thn++){
                  echo "<option value=$thn>$thn</option>";
                }?>
                  <option value="<?= date("Y") ?>" selected="selected"><?= date("Y") ?></option>
              </select>
            </div>
          </div>
      
          <canvas id="myChart" width="100%" height="40px"></canvas>

          <hr>

          <div class="alert alert-info" role="alert">
            <p>Total hari: <b id="total_hari"></b></p>
            <p>Total produk terjual: <b id="total_produk_terjual"></b></p>
            <p>Total keuntungan: <b id="total_keuntungan"></b></p>
            <p>Sedekah 2.5%: <b id="total_sedekah"></b></p>
            <p>Rata-rata keuntungan / hari: <b id="rata_rata"></b></p>
          </div>
          
        </div>

      </div>

      <?php $this->load->view('kasir/footer') ?>

    </div>

  </div>

  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <div class="modal fade" id="no-data-diagram" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Data Tidak Ditemukan</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
      </div>
    </div>
  </div>

  
  <script src="<?= base_url() ?>assets/jquery/jquery-3.2.1.min.js"></script>
  <script src="<?= base_url() ?>assets/bootstrap-4.1.3/js/bootstrap.min.js"></script>
  <script src="<?= base_url() ?>/assets/js/sb-admin-2.js"></script>
  <script src="<?= base_url() ?>/assets/js/Chart.custom.js"></script>
  <script src="<?= base_url() ?>assets/DataTables-1.10.18/js/jquery.dataTables.min.js"></script>
  <script src="<?= base_url() ?>assets/DataTables-1.10.18/js/dataTables.bootstrap4.min.js"></script>
  <script src="<?= base_url() ?>assets/Responsive-2.2.2/js/dataTables.responsive.min.js"></script>
  <script src="<?= base_url() ?>assets/Responsive-2.2.2/js/responsive.bootstrap4.min.js"></script>
  <script src="<?php echo base_url() ?>assets/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
  <script src="<?php echo base_url() ?>assets/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
  
  <script src="<?php echo base_url() ?>assets/js/Chart.min.js"></script>
  <script src="<?php echo base_url() ?>assets/js/custom.js"></script>
  <script>
      var myChart = null

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
                  let dataSend = []

                  obj.map(item => {
                    if (dataSend.length == 0) {
                      dataSend = [{
                        tgl_transaksi: item.tgl_transaksi,
                        neto: handleNeto(item)
                      }]
                    } else {
                      const searchIndata = dataSend.find(i => i.tgl_transaksi == item.tgl_transaksi)

                      if (searchIndata == undefined) {
                        dataSend = [...dataSend, {
                          tgl_transaksi: item.tgl_transaksi,
                          neto: handleNeto(item)
                        }]
                      } else {
                        dataSend = dataSend.map(e => {
                          if (e.tgl_transaksi == item.tgl_transaksi) {
                            return {...e, neto: e.neto + handleNeto(item)}
                          } else {
                            return e
                          }
                        })
                      }
                    }
                  })

                  let totalKeuntungan = 0
                  if (dataSend.length && dataSend.length == 1) {
                    totalKeuntungan = dataSend[0].neto
                  } else {
                    totalKeuntungan = dataSend.reduce((accumulator, currentValue) => {
                      if (typeof(accumulator) == 'object') {
                        return accumulator.neto + currentValue.neto
                      } else {
                         return accumulator + Number(currentValue.neto) 
                      }
                    })
                  }
                  console.log("totalKeuntungan", totalKeuntungan)

                  $("#total_produk_terjual").text(obj.length)
                  $("#total_hari").text(dataSend.length)
                  $("#total_keuntungan").text(`Rp. ${toIdrFormat(totalKeuntungan)}`)
                  $("#total_sedekah").text(`Rp. ${toIdrFormat(totalKeuntungan * 2.5 / 100)}`)
                  $("#rata_rata").text(`Rp. ${toIdrFormat(totalKeuntungan / dataSend.length)}`)

                  diagram(dataSend);
              },
              error: function(data)
              {
                  console.log(data);
              }
        });
      }

      function handleNeto(item) {
        if (item.type_product == 'elektrik') {
          return item.total_harga - item.harga_beli_elektrik
        } else {
          return item.total_harga - item.harga_beli
        }
      }

      function toIdrFormat(nominal) {
        var bilangan = parseInt(nominal)
        var number_string = bilangan.toString(),
          sisa  = number_string.length % 3,
          rupiah  = number_string.substr(0, sisa),
          ribuan  = number_string.substr(sisa).match(/\d{3}/g);
            
        if (ribuan) {
          separator = sisa ? '.' : '';
          rupiah += separator + ribuan.join('.');
        }

        return rupiah
      }
       
      $(function(){
        //cek_bulan();
          $.ajax({
              url:"http://localhost/bordercell/option/diagram",
              method: "GET",
              success:function(data)
              {
                  var obj=JSON.parse(data);
                  let dataSend = []

                  obj.map(item => {
                    if (dataSend.length == 0) {
                      dataSend = [{
                        tgl_transaksi: item.tgl_transaksi,
                        neto: handleNeto(item)
                      }]
                    } else {
                      const searchIndata = dataSend.find(i => i.tgl_transaksi == item.tgl_transaksi)

                      if (searchIndata == undefined) {
                        dataSend = [...dataSend, {
                          tgl_transaksi: item.tgl_transaksi,
                          neto: handleNeto(item)
                        }]
                      } else {
                        dataSend = dataSend.map(e => {
                          if (e.tgl_transaksi == item.tgl_transaksi) {
                            return {...e, neto: e.neto + handleNeto(item)}
                          } else {
                            return e
                          }
                        })
                      }
                    }
                  })

                  let totalKeuntungan = 0
                  if (dataSend.length && dataSend.length == 1) {
                    totalKeuntungan = dataSend[0].neto
                  } else {
                    totalKeuntungan = dataSend.reduce((accumulator, currentValue) => {
                      if (typeof(accumulator) == 'object') {
                        return accumulator.neto + currentValue.neto
                      } else {
                         return accumulator + Number(currentValue.neto) 
                      }
                    })
                  }
                  console.log("totalKeuntungan", totalKeuntungan)

                  $("#total_produk_terjual").text(obj.length)
                  $("#total_hari").text(dataSend.length)
                  $("#total_keuntungan").text(`Rp. ${toIdrFormat(totalKeuntungan)}`)
                  $("#total_sedekah").text(`Rp. ${toIdrFormat(totalKeuntungan * 2.5 / 100)}`)
                  $("#rata_rata").text(`Rp. ${toIdrFormat(totalKeuntungan / dataSend.length)}`)

                  diagram(dataSend);
              },
              error: function(data)
              {
                  console.log(data);
              }
          });
      });

      function getNameMonth(date) {
        const monthNames = ["January", "February", "March", "April", "May", "June",
          "July", "August", "September", "October", "November", "December"
        ];

        const d = new Date(date);
        return monthNames[d.getMonth()]
      }

      function getNameYear(date) {
        const d = new Date(date);
        return d.getFullYear()
      }
      
      function diagram(obj){
        if (!obj.length) {
          $("#no-data-diagram").modal('show')
          return
        }

        if (myChart) {
          myChart.destroy();
        }

        var ctx = $('#myChart');
        myChart = new Chart(ctx, {
            type: 'line',
            data: {
                labels: obj.map(item => {
                  const d = new Date(item.tgl_transaksi)
                  return d.getDate()
                }),
                datasets: [{
                    label: `${getNameMonth(obj[0].tgl_transaksi)} ${getNameYear(obj[0].tgl_transaksi)}`,
                    data: obj.map(item => item.neto),
                    backgroundColor: [
                        'rgba(66, 133, 244, 0.1)'
                    ],
                    borderColor: [
                        'rgba(15, 157, 88, 1)'
                    ],
                    borderWidth: 1,
                    pointBorderWidth: 10,
                    pointHitRadius: 20,
                    pointHoverBorderColor: 'rgba(15, 157, 88, 1)'
                },
                {
                    label: `Target`,
                    data: obj.map(item => {
                      const tgltahun = `${getNameMonth(obj[0].tgl_transaksi)} ${getNameYear(obj[0].tgl_transaksi)}`
                      
                      if (tgltahun == 'March 2020') {
                        return 20000
                      } else if (tgltahun == 'April 2020') {
                        return 25000
                      } else  if (tgltahun == 'May 2020') {
                        return 30000
                      } else if (tgltahun == 'June 2020') {
                        return 35000
                      } else {
                        return 0
                      }
                    }),
                    backgroundColor: [
                        'rgba(219, 68, 55, 0.1)'
                    ],
                    borderColor: [
                        'rgba(219, 68, 55, 1)'
                    ],
                    borderWidth: 1,
                    pointBorderWidth: 1,
                    pointHitRadius: 1,
                    pointHoverBorderColor: 'rgba(219, 68, 55, 1)'
                },
                {
                    label: `Sedekah 2.5%`,
                    data: obj.map(item => item.neto * 2.5 / 100),
                    backgroundColor: [
                        'rgba(247, 202, 24, 0.1)'
                    ],
                    borderColor: [
                        'rgba(247, 202, 24, 1)'
                    ],
                    borderWidth: 1,
                    pointBorderWidth: 2,
                    pointHitRadius: 2,
                    pointHoverBorderColor: 'rgba(247, 202, 24, 1)'
                }]
            },
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
                }
            }
        });
      }
  </script>
</body>

</html>
