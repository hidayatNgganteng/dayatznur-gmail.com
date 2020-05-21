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
          <div class="h3 ml-auto">Semua Barang</div>

          <?php $this->load->view('kasir/menu_kanan') ?>
        </nav>

        <div class="container-fluid">
          <?php
            if($this->session->userdata('level')==1) {
              echo '<button class="btn btn-success" onclick="tambah_barang()"><i class="glyphicon glyphicon-plus"></i> tambah</button><br><br>';
            } ?>
            
            <table id="tabelBarang" class="table table-striped table-bordered nowrap" style="width:100%">
              <thead>
                <tr>
                  <th>no</th>
                  <th>Nama</th>
                  <th>H beli</th>
                  <th>HJ offline</th>
                  <th>HJ online</th>
                  <th>HJ reseller</th>
                  <th>Stok</th>
                  <th>Aksi</th>
                </tr>
              </thead>
              <tbody></tbody>
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
  <script>
      var table
      $(document).ready(function(){
        table = $('#tabelBarang').DataTable({
          "columnDefs": [{
            "targets": [ 0,1,2,3,4,5,6,7 ]
          }],
          "fnRowCallback": (nRow, aData, iDisplayIndex, iDisplayIndexFull ) => {
            if ( aData[4] == 0 ){
              $('td', nRow).css({
                "background-color":"red",
                "color":"#fff"})
            }
            if (aData[0] % 2 != 0){
              $(nRow).css('backgroundColor', 'rgba(0,243,255, 0.25)');
            }
          },
          "order": [],
          "serverSide": true, 
          "ajax": {
            "url": "http://localhost/bordercell/option/get_barang",
            "type": "POST"
          },
          "lengthChange": false,
          "responsive": true,
        })

        $("#harga_jual, #harga_beli").keyup(function() {
          const harga_beli = $("#harga_beli").val()
          const harga_jual = $("#harga_jual").val()

          if (harga_beli != "" && harga_jual != "") {
            const neto = harga_jual - harga_beli
            const neto75 = 75 * neto / 100
            const neto50 = 35 * neto / 100
            const harga_online = Number(harga_beli) + Number(neto75)
            const harga_reseller = Number(harga_beli) + Number(neto50)

            $("#harga_jual_online_rekomendasi").text(`Rekomendasi: ${harga_online}`)
            $("#harga_jual_reseller_rekomendasi").text(`Rekomendasi: ${harga_reseller}`)
          } else {
            $("#harga_jual_online_rekomendasi").text("")
            $("#harga_jual_reseller_rekomendasi").text("")

          }
        })
      })
       
      function reload_table() {
        table.ajax.reload(null,false)
      }
       
      function tambah_barang () {
        save_method = 'add'
        $('#form')[0].reset()
        $('.modal-title').text('Input barang')
        $("#harga_jual_online_rekomendasi").text("")
        $("#harga_jual_reseller_rekomendasi").text("")
        $('#modal_form').modal('show') 
      }
          
       function save()
       {
           var url;
           if(save_method == 'add')
           {
               url = "<?php echo site_url('option/simpan_barang')?>";
           }
           else
           {
               url = "<?php echo site_url('option/update_barang')?>";
           }
           
           
           $.ajax({
               url : url,
               type: "POST",
               data: $('#form').serialize(),
               dataType: "JSON",
               success: function(data)
               {
                   if(data.status)
                   {
                       $('#modal_form').modal('hide');
                       reload_table();
                   }
                   else
                   {
                       for (var i = 0; i < data.inputerror.length; i++)
                       {
                           //$('[name="'+data.inputerror[i]+'"]').parent().parent().addClass('has-error');
                           $('[name="'+data.inputerror[i]+'"]').addClass('is-invalid');
                           $('[name="'+data.inputerror[i]+'"]').next().text(data.error_string[i]);
                       }
                   }            
               },
               error: function (jqXHR, textStatus, errorThrown)
               {
                   alert('error');
                   console.log("errorThrown", errorThrown)
               }
           });
       }
       
       function delete_barang(id)
       {
         if(confirm('yakin ingin di hapus?')){
               $.ajax({
                   url : "<?php echo site_url('option/hapus_barang')?>/"+id,
                   type: "POST",
                   dataType: "JSON",
                   success: function(data)
                   {
                       
                       reload_table();
                   },
                   error: function (jqXHR, textStatus, errorThrown)
                   {
                       alert('Error deleting data');
                   }
              });
           
           }
       }
       
       function edit_barang(id)
       {
           save_method = 'update';
           $('#form')[0].reset();
           $.ajax({
               url : "<?php echo site_url('option/edit_barang')?>/" + id,
               type: "GET",
               dataType: "JSON",
               success: function(data)
               {
                   $('[name="id"]').val(data.id_barang);
                   $('[name="setatus_barang"]').val(data.setatus_barang);
                   $('[name="nama_barang"]').val(data.nama_barang);
                   $('[name="harga_beli"]').val(data.harga_beli);
                   $('[name="harga_jual"]').val(data.harga_jual);
                   $('[name="harga_jual_online"]').val(data.harga_jual_online);
                   $('[name="harga_jual_reseller"]').val(data.harga_jual_reseller);
                   $('[name="deskripsi"]').val(data.deskripsi);
                   $('[name="setok"]').val(data.setok);
                   $('[name="satuan"]').val(data.satuan);
                   $("#harga_jual_online_rekomendasi").text("")
                   $("#harga_jual_reseller_rekomendasi").text("")
                   $('#modal_form').modal('show');
                   $('.modal-title').text('Edit barang');
               },
               error: function (jqXHR, textStatus, errorThrown)
               {
                   alert('Error get data from ajax');
               }
               });
       }

       function open_deskripsi(id){
        var deskripsi = $(`#${id}`).attr('deskripsi')
        $("#deskripsi").text(deskripsi)
        $("#modal_deskripsi").modal('show')
       }
  </script>
  
  
  <!-- Bootstrap modal -->
  <div class="modal fade" id="modal_form" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">

          <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">input</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
              </button>
          </div>
            
            <div class="modal-body form">
              <form id="form" class="form-horizontal">

                <input type="hidden" value="" name="id"/> 
                <div class="form-body">
                        
                  <div class="form-group mt-2">
                    <label for="setatus_barang">setatus barang</label>
                    <select class="form-control " name="setatus_barang" >
                      <option value="1">jual</option>
                      <option value="0">gudang</option>
                    </select>
                  </div>
                       
                  <div class="form-group">
                      <label for="nama_barang" class="col-form-label">nama barang</label>
                      <input type="text" class="form-control " name="nama_barang" >
                      <div class="invalid-feedback"></div>
                  </div>

                  <div class="form-group">
                      <label for="deskripsi" class="col-form-label">deskripsi</label>
                      <textarea class="form-control" name="deskripsi"></textarea>
                      <div class="invalid-feedback"></div>
                  </div>
                        
                  <div class="form-group">
                    <label for="harga_beli" class="col-form-label">harga beli</label>
                    <input type="number" class="form-control" name="harga_beli"  id="harga_beli">
                    <div class="invalid-feedback"></div>
                  </div>
                       
                  <div class="form-group">
                    <label for="harga_jual" class="col-form-label">harga jual</label>
                    <input type="number" class="form-control " name="harga_jual" id="harga_jual">
                    <div class="invalid-feedback"></div>
                  </div>

                  <div class="form-group">
                    <label for="harga_jual_online" class="col-form-label">harga jual online <span style="color: red" id="harga_jual_online_rekomendasi"></span></label>
                    <input type="number" class="form-control" name="harga_jual_online" >
                    <div class="invalid-feedback"></div>
                  </div>

                  <div class="form-group">
                    <label for="harga_jual_reseller" class="col-form-label">harga jual reseller <span style="color: red" id="harga_jual_reseller_rekomendasi"></span></label>
                    <input type="number" class="form-control" name="harga_jual_reseller" >
                    <div class="invalid-feedback"></div>
                  </div>
                       
                  <div class="form-group">
                    <label for="setok" class="col-form-label">stok</label>
                    <input type="number" class="form-control " name="setok" >
                    <div class="invalid-feedback"></div>
                  </div>

                  <div class="form-group">
                    <label for="satuan">satuan</label>
                    <select class="form-control " name="satuan" >
                      <option value=""></option>
                      <option value="pcs">pcs</option>
                      <option value="botol">botol</option>
                      <option value="liter">liter</option>
                      <option value="kg">kg</option>
                      <option value="kardus">kardus</option>
                      <option value="saset">saset</option>
                    </select>
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

  
  <div class="modal fade" id="modal_deskripsi" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
              <h5>Deskripsi</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
              </button>
          </div>
          <div class="modal-body form">
            <pre id="deskripsi"></pre>
          </div>
        </div>
    </div>
  </div>
      
</body>

</html>
