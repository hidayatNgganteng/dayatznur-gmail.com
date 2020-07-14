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
  <title>Menabung Detail</title>
  <style>
    .progress_bar {
      height: 36px;
      position: relative;
    }
    .orange {
      background-color: #4285F4
    }
    .basicColor{
      background-color: #D1D0CE
    }
    .green {
      background-color: #0F9D58
    }
    .red {
      background-color: #DB4437
    }
    .content {
      
    }
    .text-color{
      color: #efefef;
      font-size: 16px
    }
    .total{
      position: absolute;
      top: 0px;
      right: 0px;
      background-color: rgba(0,0,0,0.4);
      color: #fff;
      padding: 3px 10px;
      border-radius: 3px;
    }
    .flex-center{
      display: flex;
      align-items: flex-end;
      justify-content: center;
    }
    .mg-top {
      margin-top: 70px;
    }
  </style>
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
          <div class="h3 ml-auto">Nabung Bulan <?php echo date('M-Y', strtotime($date)) ?></div>

          <?php $this->load->view('kasir/menu_kanan') ?>
        </nav>

        <!-- Begin Page Content -->
        <div class="container-fluid">
            <div class="row">
              <div class="col-md-10">
                <div class="content">
                  <h2>Kontrakan</h2>
                  <div class="progress progress_bar basicColor">
                      <div class="progress-bar orange text-color" id="kontrakan" data-transitiongoal="0" aria-valuemin="0" aria-valuemax="0"></div>
                      <div class="total" id="kontrakan-total"></div>
                  </div>
                </div>
              </div>
              <div class="col-md-2 flex-center">
                <button class="btn btn-info" onclick="nabung(1)"><i class="glyphicon glyphicon-plus"></i> Nabung</button>
              </div>
            </div>

            <div class="row mg-top">
              <div class="col-md-10">
                <div class="content">
                  <h2>Sedekah</h2>
                  <div class="progress progress_bar basicColor">
                      <div class="progress-bar green text-color" id="sedekah" data-transitiongoal="0" aria-valuemin="0" aria-valuemax="0"></div>
                      <div class="total" id="sedekah-total"></div>
                  </div>
                </div>
              </div>
              <div class="col-md-2 flex-center">
                <button class="btn btn-success" onclick="nabung(2)"><i class="glyphicon glyphicon-plus"></i> Nabung</button>
              </div>
            </div>

            <div class="row mg-top">
              <div class="col-md-10">
                <div class="content">
                  <h2>Kas toko</h2>
                  <div class="progress progress_bar basicColor">
                      <div class="progress-bar red text-color" id="kas" data-transitiongoal="0" aria-valuemin="0" aria-valuemax="0"></div>
                      <div class="total" id="kas-total"></div>
                  </div>
                </div>
              </div>
              <div class="col-md-2 flex-center">
                <button class="btn btn-danger" onclick="nabung(3)"><i class="glyphicon glyphicon-plus"></i> Nabung</button>
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
  <script src="<?php echo base_url() ?>assets/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
  <script src="<?php echo base_url() ?>assets/bootstrap-progressbar/bootstrap-progressbar.js"></script>
  <script>
      var lunasiHutangProses = false
      $(document).ready(function(){
          var url = "<?php echo site_url('option/get_menabung_by_date/'.$date.'') ?>";
          var url_kontrakan = "<?php echo site_url('option/get_kontrakan_by_tahun/'.date('Y', strtotime($date)).'') ?>";
          
          $.ajax({
            url : url,
            type: "POST",
            dataType: "JSON",
            success: function(data){
              var ktgKontrak = data.find(item => item.kategori_menabung == 1)
              var ktgSedekah = data.find(item => item.kategori_menabung == 2)
              var ktgKas = data.find(item => item.kategori_menabung == 3)

              $("#kontrakan").attr('data-transitiongoal', ktgKontrak.nominal)
              $("#sedekah").attr('data-transitiongoal', ktgSedekah.nominal)
              $("#kas").attr('data-transitiongoal', ktgKas.nominal)
              
              // kontrakan
              $.ajax({
                url : url_kontrakan,
                type: "POST",
                dataType: "JSON",
                success: function(dataKontrak){
                  const maxKontrakTarget = dataKontrak.nominal / 12
                  $("#kontrakan").attr('aria-valuemax', Math.ceil(maxKontrakTarget))
                  $("#kontrakan-total").text(`Rp. ${Math.ceil(maxKontrakTarget)}`)

                  $('#kontrakan').progressbar({
                    display_text: 'fill',
                    percent_format: percent => {
                      return `Rp. ${Math.ceil(ktgKontrak.nominal)} (${percent} %)`
                    }
                  })
                },
                error: function (jqXHR, textStatus, errorThrown){
                  alert('error');
                }
              });

              // kas
              var date = "<?php echo $date ?>"
              var dateSplit = date.split("-")
              $.ajax({
                  url:'http://localhost/bordercell/option/cari_diagram_perbulan',
                  data:{bulan: dateSplit[1], tahun: dateSplit[0]},
                  method: "POST",
                    success:function(data)
                    {
                      var obj=JSON.parse(data);
                      let dataSend = []

                      obj.map(item => {
                        if (dataSend.length == 0) {
                          dataSend = [{
                            tgl_transaksi: getNameMonth(item.tgl_transaksi),
                            tahun: getNameYear(item.tgl_transaksi),
                            tgl_transaksi_full: item.tgl_transaksi,
                            neto: handleNeto(item)
                          }]
                        } else {
                          const searchIndata = dataSend.find(i => i.tgl_transaksi == getNameMonth(item.tgl_transaksi))

                          if (searchIndata == undefined) {
                            dataSend = [...dataSend, {
                              tgl_transaksi: getNameMonth(item.tgl_transaksi),
                              tahun: getNameYear(item.tgl_transaksi),
                              tgl_transaksi_full: item.tgl_transaksi,
                              neto: handleNeto(item)
                            }]
                          } else {
                            dataSend = dataSend.map(e => {
                              if (e.tgl_transaksi == getNameMonth(item.tgl_transaksi)) {
                                return {...e, neto: e.neto + handleNeto(item)}
                              } else {
                                return e
                              }
                            })
                          }
                        }
                      })

                      const currentDateData = dataSend.find(item => item.tgl_transaksi_full.split("-")[1] == dateSplit[1])

                      $("#kas").attr('aria-valuemax', Math.ceil(currentDateData.neto))
                      $("#kas-total").text(`Rp. ${Math.ceil(currentDateData.neto)}`)
                      $('#kas').progressbar({
                        display_text: 'fill',
                        percent_format: percent => {
                          return `Rp. ${Math.ceil(ktgKas.nominal)} (${percent} %)`
                        },
                      })

                      // sedekah
                      $("#sedekah").attr('aria-valuemax', Math.ceil(currentDateData.neto * 10 / 100))
                      $("#sedekah-total").text(`Rp. ${Math.ceil(currentDateData.neto * 10 / 100)}`)
                      $('#sedekah').progressbar({
                        display_text: 'fill',
                        percent_format: percent => {
                          return `Rp. ${Math.ceil(ktgSedekah.nominal)} (${percent} %)`
                        }
                      })
                    },
                    error: function(data)
                    {
                        console.log(data);
                    }
              });
            },
            error: function (jqXHR, textStatus, errorThrown){
              alert('error');
            }
          });
        })

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

        function handleNeto(item) {
          if (item.type_product == 'elektrik') {
            return item.total_harga - item.harga_beli_elektrik
          } else {
            return item.total_harga - (item.harga_beli * item.jumlah)
          }
        }

       function nabung(kategori) {
        $("#form-kategori").val(kategori)
        $("#form-date").val("<?php echo $date ?>")
        $('#form')[0].reset()
        $('#modal_form').modal('show') 
       }

       function save(kategori) {
        const url = "<?php echo site_url('option/save_menabung') ?>";

        $.ajax({
          url : url,
          type: "POST",
          data: $('#form').serialize(),
          dataType: "JSON",
          success: function(dataKontrak){
            if (dataKontrak.status) {
              $('#modal_form').modal('hide');
              location.reload()
            } else {
              $('#modal_form').modal('hide');
              alert("Saldo fisik tidak cukup!")
            }
          },
          error: function (jqXHR, textStatus, errorThrown){
            alert('error');
          }
        });
       }
      
  </script>

  <div class="modal fade" id="modal_form" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">

          <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Mau Nabung?</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
              </button>
          </div>
            
            <div class="modal-body form">
              <form id="form" class="form-horizontal">
                <input type="hidden" class="form-control" name="kategori" id="form-kategori">
                <input type="hidden" class="form-control" name="date" id="form-date">
                <div class="form-body">
                  <div class="form-group">
                    <label for="nominal" class="col-form-label">Nominal</label>
                    <input type="text" class="form-control " name="nominal">
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
