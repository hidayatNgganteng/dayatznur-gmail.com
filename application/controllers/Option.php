<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Option extends CI_Controller {
	
	public function __construct(){
		parent::__construct();
		$this->load->model('model_barang');
		if(!$this->session->userdata('id')){
			header('location:http://localhost/bordercell');
		}
	}
	
	public function index(){
		echo 'tes';
	}

	public function contoh(){
		$this->load->view('kasir/contoh'); 
	}

	public function get_barang(){
		$list = $this->model_barang->get_datatables();
		$data = [];
		$no = $_POST['start'];
    $n=0;
    
		foreach ($list as $barang) {
			$n++;
			$row = [];
			$row[] = $n;
			$row[] = $barang->nama_barang;
			$row[] = number_format($barang->harga_beli,0,".",".");
			$row[] = number_format($barang->harga_jual,0,".",".");
			$row[] = number_format($barang->harga_jual_online,0,".",".");
			$row[] = number_format($barang->harga_jual_reseller,0,".",".");
			$row[] = $barang->setok;
			
			if($this->session->userdata('level') == 1 ){
				$row[] = '<a class="btn btn-sm btn-warning" href="javascript:void(0)" title="Edit" onclick="edit_barang('."'".$barang->id_barang."'".')"><i class="far fa-edit"></i></a>
				  	  <a class="btn btn-sm btn-danger" href="javascript:void(0)" title="Hapus" onclick="delete_barang('."'".$barang->id_barang."'".')"><i class="far fa-trash-alt"></i></a>
				  	  <a deskripsi="'.$barang->deskripsi.'" id="'.$barang->id_barang.'" class="btn btn-sm btn-info" href="javascript:void(0)" title="Info" onclick="open_deskripsi('."'".$barang->id_barang."'".')"><i class="far fa-comment"></i></a>';
			}else{
				$row[] = '<a class="btn btn-sm btn-warning disabled" href="javascript:void(0)" title="Edit" ><i class="far fa-edit"></i></a>
				  	  <a class="btn btn-sm btn-danger disabled" href="javascript:void(0)" title="Hapus" ><i class="far fa-trash-alt"></i></a>
				  	  <a deskripsi="'.$barang->deskripsi.'" id="'.$barang->id_barang.'" class="btn btn-sm btn-info" href="javascript:void(0)" title="Info" onclick="open_deskripsi('."'".$barang->id_barang."'".')"><i class="far fa-comment"></i></a>';
			}
			$data[] = $row;
		}
		$output = [
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->model_barang->count_all(),
			"recordsFiltered" => $this->model_barang->count_filtered(),
			"data" => $data,
		];
		echo json_encode($output);
	}

	public function get_barang_kosong(){
		$list = $this->model_barang->get_datatables_brg_kosong();
		$data = [];
		$no = $_POST['start'];
		$n=0;
		foreach ($list as $barang) {
			$n++;
			$row = [];
			$row[] = $n;
			$row[] = $barang->nama_barang;
			$row[] = number_format($barang->harga_beli,0,".",".");
			$row[] = number_format($barang->harga_jual,0,".",".");
			$row[] = number_format($barang->harga_jual_online,0,".",".");
			$row[] = number_format($barang->harga_jual_reseller,0,".",".");
			
			$row[] = $barang->setok;
			
			if($this->session->userdata('level') == 1 ){
				$row[] = '<a class="btn btn-sm btn-warning" href="javascript:void(0)" title="Edit" onclick="edit_barang('."'".$barang->id_barang."'".')"><i class="far fa-edit"></i></a>
				  	  <a class="btn btn-sm btn-danger" href="javascript:void(0)" title="Hapus" onclick="delete_barang('."'".$barang->id_barang."'".')"><i class="far fa-trash-alt"></i></a>
				  	  <a deskripsi="'.$barang->deskripsi.'" id="'.$barang->id_barang.'" class="btn btn-sm btn-info" href="javascript:void(0)" title="Info" onclick="open_deskripsi('."'".$barang->id_barang."'".')"><i class="far fa-comment"></i></a>';
			}else{
				$row[] = '<a class="btn btn-sm btn-warning disabled" href="javascript:void(0)" title="Edit" ><i class="far fa-edit"></i></a>
				  	  <a class="btn btn-sm btn-danger disabled" href="javascript:void(0)" title="Hapus" ><i class="far fa-trash-alt"></i></a>
				  	  <a deskripsi="'.$barang->deskripsi.'" id="'.$barang->id_barang.'" class="btn btn-sm btn-info" href="javascript:void(0)" title="Info" onclick="open_deskripsi('."'".$barang->id_barang."'".')"><i class="far fa-comment"></i></a>';
			}
			$data[] = $row;
		}
		$output = [
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->model_barang->count_stok_kosong(),
			"recordsFiltered" => $this->model_barang->count_filtered_kosong(),
			"data" => $data,
		];
		echo json_encode($output);
	}

	public function get_barang_hampir_habis(){
		$list = $this->model_barang->get_datatables_brg_hampir_habis();
		$data = [];
		$no = $_POST['start'];
		$n=0;
		foreach ($list as $barang) {
			$n++;
			$row = [];
			$row[] = $n;
			$row[] = $barang->nama_barang;
			$row[] = number_format($barang->harga_beli,0,".",".");
			$row[] = number_format($barang->harga_jual,0,".",".");
			$row[] = number_format($barang->harga_jual_online,0,".",".");
			$row[] = number_format($barang->harga_jual_reseller,0,".",".");
			
			$row[] = $barang->setok;
			
			if($this->session->userdata('level') == 1 ){
				$row[] = '<a class="btn btn-sm btn-warning" href="javascript:void(0)" title="Edit" onclick="edit_barang('."'".$barang->id_barang."'".')"><i class="far fa-edit"></i></a>
				  	  <a class="btn btn-sm btn-danger" href="javascript:void(0)" title="Hapus" onclick="delete_barang('."'".$barang->id_barang."'".')"><i class="far fa-trash-alt"></i></a>
				  	  <a deskripsi="'.$barang->deskripsi.'" id="'.$barang->id_barang.'" class="btn btn-sm btn-info" href="javascript:void(0)" title="Info" onclick="open_deskripsi('."'".$barang->id_barang."'".')"><i class="far fa-comment"></i></a>';
			}else{
				$row[] = '<a class="btn btn-sm btn-warning disabled" href="javascript:void(0)" title="Edit" ><i class="far fa-edit"></i></a>
				  	  <a class="btn btn-sm btn-danger disabled" href="javascript:void(0)" title="Hapus" ><i class="far fa-trash-alt"></i></a>
				  	  <a deskripsi="'.$barang->deskripsi.'" id="'.$barang->id_barang.'" class="btn btn-sm btn-info" href="javascript:void(0)" title="Info" onclick="open_deskripsi('."'".$barang->id_barang."'".')"><i class="far fa-comment"></i></a>';
			}
			$data[] = $row;
		}
		$output = [
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->model_barang->count_stok_hampir_habis(),
			"recordsFiltered" => $this->model_barang->count_filtered_hampir_habis(),
			"data" => $data,
		];
		echo json_encode($output);
	}
	
	public function data_barang(){
		$this->load->view('kasir/barang_view');
  }

  public function kasir_elektrik_view(){
		$this->load->view('kasir/kasir_elektrik_view');
  }

  public function save_produk_elektrik(){
    $this->load->library('session'); 
    $this->load->model('model_saldo');

	$jenis_saldo = $this->input->post('jenis_saldo');
	$data_saldo = 0;
	if ($jenis_saldo == 'mitra') {
		$data_saldo = $this->model_saldo->getSaldoMitra();
	} else if ($jenis_saldo == 'orderkuota') {
		$data_saldo = $this->model_saldo->getSaldoOrderKuota();
	} else {
		$data_saldo = $this->model_saldo->getSaldoDigipos();
	}

    if ($this->input->post('harga_beli') > $data_saldo->saldo) {
      $this->session->set_flashdata('error', "Saldo ".$jenis_saldo." anda tidak mencukupi!!");
      $this->load->view('kasir/kasir_elektrik_view');
    } else if ($this->input->post('harga_beli') > $this->input->post('harga_jual')) {
      $this->session->set_flashdata('error', "Harga beli tidak boleh lebih dari harga jual!!");
      $this->load->view('kasir/kasir_elektrik_view');
    } else {
      $datestring = '%H:%i';
      $time 		= time();
      $waktu 		= mdate($datestring, $time);

      $data =[
        'kasir' => 0,
        'kode_brg' => 0,
        'nama_brg' 	    => $this->input->post('nama_brg'),
        'harga_beli_elektrik' 		=> $this->input->post('harga_beli'),
        'harga_brg' 		=> $this->input->post('harga_jual'),
        'jumlah' 		=> 1,
        'total_harga' 		=>  $this->input->post('harga_jual'),
        'tgl_transaksi' => date('Y-m-d'),
        'waktu' 			  => $waktu,
        'type_product' => 'elektrik'
      ];
      
      $this->session->set_flashdata('success', "Produk tersimpan : )");
      $this->model_barang->insert_penjualan($data);

      // kurangi saldo
	  $datasaldo =[ 'saldo' => $data_saldo->saldo - $this->input->post('harga_beli') ];
	  $id_saldo = 0;
	  if ($jenis_saldo == 'mitra') {
		$id_saldo = 0;
	  } else if ($jenis_saldo == 'orderkuota') {
		$id_saldo = 1;
	  } else {
		$id_saldo = 2;
	  }
	    $this->model_saldo->update(array('id' => $id_saldo), $datasaldo);
	  
      // tambah saldo fisik
      $this->ubah_saldo_fisik('tambah', $this->input->post('harga_jual'));

      // input ke pemasukan
      $this->load->model('model_io');
			$dataPemasukan =[
				'nama' 		=> 'PENJUALAN: '.$this->input->post('nama_brg'),
				'nominal' 		=> $this->input->post('harga_jual'),
				'date' => date('Y-m-d'),
				'time' => $waktu
			];
			$this->model_io->save($dataPemasukan);

      $this->load->view('kasir/kasir_elektrik_view');
    }
  }  
  
  public function hutang_simpan(){
    $this->load->model('model_saldo');
    $this->load->model('model_hutang');

	$jenis_saldo = $this->input->post('jenis_saldo');
	$data_saldo = 0;
	if ($jenis_saldo == 'mitra') {
		$data_saldo = $this->model_saldo->getSaldoMitra();
	} else if ($jenis_saldo == 'orderkuota') {
		$data_saldo = $this->model_saldo->getSaldoOrderKuota();
	} else {
		$data_saldo = $this->model_saldo->getSaldoDigipos();
	}

    if ($this->input->post('harga_beli') > $data_saldo->saldo) {
      echo json_encode([
        "status" => FALSE,
        "message" => 'Saldo '.$jenis_saldo.' anda tidak mencukupi!!',
      ]);
    } else if ($this->input->post('harga_beli') > $this->input->post('harga_jual')) {
      echo json_encode([
        "status" => FALSE,
        "message" => 'Harga beli tidak boleh lebih dari harga jual!!',
      ]);
    } else {
      $datestring = '%H:%i';
      $time 		= time();
      $waktu 		= mdate($datestring, $time);

      $data =[
        'nama_brg' 	    => $this->input->post('nama_brg'),
        'harga_beli' 		=> $this->input->post('harga_beli'),
        'harga_jual' 		=> $this->input->post('harga_jual'),
        'date'          => date('Y-m-d'),
        'time' 			  => $waktu
      ];

      // insert ke tabel hutang
      $this->model_hutang->insert_hutang($data);

      // kurangi saldo
	  $datasaldo =[ 'saldo' => $data_saldo->saldo - $this->input->post('harga_beli') ];
	  $id_saldo = 0;
	  if ($jenis_saldo == 'mitra') {
		$id_saldo = 0;
	  } else if ($jenis_saldo == 'orderkuota') {
		$id_saldo = 1;
	  } else {
		$id_saldo = 2;
	  }

	 	$this->model_saldo->update(array('id' => $id_saldo), $datasaldo);

      echo json_encode([
        "status" => TRUE,
        "message" => 'Produk tersimpan : )',
      ]);
    }
  } 

  public function save_menabung(){
    $this->load->model('model_saldo');
    $this->load->model('model_menabung');

    $saldo_fisik = $this->model_saldo->getSaldoFisik();
    $kategori_input = $this->input->post('kategori');
    $nominal_input =$this->input->post('nominal');
    $date_input = $this->input->post('date');

    if ($nominal_input > $saldo_fisik->saldo) {
      echo json_encode([
        "status" => FALSE,
        "message" => 'Saldo fisik anda tidak mencukupi!!',
      ]);
    } else {
      $data_tabungan = $this->model_menabung->get_by_date($date_input);
      
      if (count($data_tabungan) == 0) {
        $data =[
          'kategori_menabung' => $kategori_input,
          'bulan'             => $date_input,
          'nominal'           => $nominal_input
        ];
  
        $this->model_menabung->insert_menabung($data);
      } else {
        $item = null;
        foreach($data_tabungan as $struct) {
          if ($kategori_input == $struct->kategori_menabung) {
            $item = $struct;
            break;
          }
        }

        $dataSaving =[ 'nominal'  => $item->nominal + $nominal_input ];
        $this->model_menabung->update(array('id_menabung' => $item->id_menabung), $dataSaving);
      }

      
      $dataSaldo =[ 'saldo' => $saldo_fisik->saldo - $nominal_input ];
      $this->model_saldo->updateSaldoFisik(array('id' => '1'), $dataSaldo);

      echo json_encode([
        "status" => TRUE,
        "message" => "Sukses tersimpan!",
      ]);
    }
  } 

  public function lunasi_hutang($id){
    $this->load->model('model_hutang');

    // update status di tabel hutang
    $data =[ 'status' 	    => 'lunas' ];
    $this->model_hutang->update(array('id_hutang_elektrik' => $id), $data);

    $data_hutang = $this->model_hutang->get_by_id($id);
    
    // insert ke penjualan
    $datestring = '%H:%i';
    $time 		= time();
    $waktu 		= mdate($datestring, $time);

    $data_penjualan =[
      'kasir' => 0,
      'kode_brg' => 0,
      'nama_brg' 	    => $data_hutang->nama_brg,
      'harga_beli_elektrik' 		=> $data_hutang->harga_beli,
      'harga_brg' 		=> $data_hutang->harga_jual,
      'jumlah' 		=> 1,
      'total_harga' 		=>  $data_hutang->harga_jual,
      'tgl_transaksi' => date('Y-m-d'),
      'waktu' 			  => $waktu,
      'type_product' => 'elektrik'
    ];
    
    $this->model_barang->insert_penjualan($data_penjualan);


    // tambah saldo fisik
    $this->ubah_saldo_fisik('tambah', $data_hutang->harga_jual);

    
    // input ke pemasukan
    $this->load->model('model_io');
    $dataPemasukan =[
      'nama' 		=> 'PENJUALAN: '.$data_hutang->nama_brg,
      'nominal' 		=> $data_hutang->harga_jual,
      'date' => date('Y-m-d'),
      'time' => $waktu
    ];
    $this->model_io->save($dataPemasukan);

    echo json_encode([ "status" => TRUE ]);
  }
  
  public function saldo(){
    $this->load->model('model_saldo');
    $data['data_saldo_fisik'] = $this->model_saldo->getSaldoFisik();

		$this->load->view('kasir/saldo_view', $data);
  }
  
  public function saldo_elektrik(){
    $this->load->model('model_saldo');
    $data['data_saldo_mitra'] = $this->model_saldo->getSaldoMitra();
	$data['data_order_kuota'] = $this->model_saldo->getSaldoOrderKuota();
	$data['data_order_digipos'] = $this->model_saldo->getSaldoDigipos();

		$this->load->view('kasir/saldo_view_elektrik', $data);
	}

	public function data_barang_kosong(){
		$this->load->view('kasir/barang_kosong_view');
	}

	public function data_barang_hampir_habis(){
		$this->load->view('kasir/barang_hampir_habis_view');
	}
	
	public function hapus_barang($id){
		$this->model_barang->delete_by_id($id);
		echo json_encode(["status" => TRUE]);
	}

	public function hapus_telp($id){
		$this->load->model('model_no_telp');
		$this->model_no_telp->delete_by_id($id);
		echo json_encode(["status" => TRUE]);
	}

	public function hapus_ppob($id){
		$this->load->model('model_ppob');
		$this->model_ppob->delete_by_id($id);
		echo json_encode(["status" => TRUE]);
	}
	
	public function edit_barang($id){
		$data = $this->model_barang->get_by_id($id);
		echo json_encode($data);
	}

	public function edit_telp($id){
		$this->load->model('model_no_telp');
		$data = $this->model_no_telp->get_by_id($id);
		echo json_encode($data);
	}

	public function edit_ppob($id){
		$this->load->model('model_ppob');
		$data = $this->model_ppob->get_by_id($id);
		echo json_encode($data);
	}
	
	public function update_barang(){
		$data =[
			'setatus_barang'	=> $this->input->post('setatus_barang'),
			'nama_barang' 		=> $this->input->post('nama_barang'),
			'harga_beli' 		=> $this->input->post('harga_beli'),
			'harga_jual' 		=> $this->input->post('harga_jual'),
			'harga_jual_online' 		=> $this->input->post('harga_jual_online'),
			'harga_jual_reseller' 		=> $this->input->post('harga_jual_reseller'),
			'deskripsi' 		=> $this->input->post('deskripsi'),
			'laba' 				=> $this->input->post('harga_jual')-$this->input->post('harga_beli'),
			'laba_online' 				=> $this->input->post('harga_jual_online')-$this->input->post('harga_beli'),
			'laba_reseller' 				=> $this->input->post('harga_jual_reseller')-$this->input->post('harga_beli'),
			'satuan' 			=> $this->input->post('satuan'),
			'setok' 			=> $this->input->post('setok')
		];
		$this->model_barang->update(array('id_barang' => $this->input->post('id')), $data);
		echo json_encode(array("status" => TRUE));
  }

  public function update_nomor(){
	  $this->load->model('model_no_telp');
	  $this->_validate_telp();
	$data =[
		'nama' 		=> $this->input->post('nama'),
		'nomor' 		=> $this->input->post('nomor'),
	];
	$this->model_no_telp->update(array('id' => $this->input->post('id')), $data);
	echo json_encode(array("status" => TRUE));
}

public function update_ppob(){
	$this->load->model('model_ppob');
	$this->_validate_ppob();
  $data =[
	  'nama' 		=> $this->input->post('nama'),
	  'nomor' 		=> $this->input->post('nomor'),
	  'kategori_ppob' 		=> $this->input->post('jenis_ppob'),
  ];
  $this->model_ppob->update(array('id_pelanggan' => $this->input->post('id')), $data);
  echo json_encode(array("status" => TRUE));
}
  
  public function update_saldo(){
    $this->load->model('model_saldo');

		$data =[ 'saldo' => $this->input->post('saldo') ];
		$this->model_saldo->update(array('id' => $this->input->post('saldoId')), $data);
		echo json_encode(array("status" => TRUE, "saldo" => $this->input->post('saldo')));
	}

	public function tambah_saldo_fisik(){
		$this->load->model('model_saldo');

    $data =[ 'saldo' => $this->input->post('currentSaldo') + $this->input->post('saldo') ];
    $this->model_saldo->updateSaldoFisik(array('id' => $this->input->post('saldoId')), $data);
    echo json_encode(array("status" => TRUE, "saldo" => $this->input->post('currentSaldo') + $this->input->post('saldo')));
  }
  
  public function kurangi_saldo_fisik(){
		$this->load->model('model_saldo');

    $data =[ 'saldo' => $this->input->post('currentSaldo') - $this->input->post('saldo') ];
    $this->model_saldo->updateSaldoFisik(array('id' => $this->input->post('saldoId')), $data);
    echo json_encode(array("status" => TRUE, "saldo" => $this->input->post('currentSaldo') - $this->input->post('saldo')));
	}
	
	function simpan_barang(){
		$this->_validate();
		$data =[
			'setatus_barang' 	=> $this->input->post('setatus_barang'),
			'nama_barang' 		=> $this->input->post('nama_barang'),
			'harga_beli' 		=> $this->input->post('harga_beli'),
			'harga_jual' 		=> $this->input->post('harga_jual'),
			'harga_jual_online' 		=> $this->input->post('harga_jual_online'),
			'harga_jual_reseller' 		=> $this->input->post('harga_jual_reseller'),
			'deskripsi' 		=> $this->input->post('deskripsi'),
			'laba' 				=> $this->input->post('harga_jual')-$this->input->post('harga_beli'),
			'laba_online' 				=> $this->input->post('harga_jual_online')-$this->input->post('harga_beli'),
			'laba_reseller' 				=> $this->input->post('harga_jual_reseller')-$this->input->post('harga_beli'),
			'satuan' 			=> $this->input->post('satuan'),
			'setok' 			=> $this->input->post('setok'),
		];
		$insert = $this->model_barang->save($data);
		echo json_encode(array("status" => TRUE));
	}

	function simpan_nomor(){
		$this->load->model('model_no_telp');
		$this->_validate_telp();
		$data =[
			'nama' 		=> $this->input->post('nama'),
			'nomor' 		=> $this->input->post('nomor')
		];
		$insert = $this->model_no_telp->save($data);
		echo json_encode(array("status" => TRUE));
	}

	function simpan_ppob(){
		$this->load->model('model_ppob');
		$this->_validate_ppob();
		$data =[
			'nama' 		=> $this->input->post('nama'),
			'nomor' 		=> $this->input->post('nomor'),
			'kategori_ppob' 		=> $this->input->post('jenis_ppob')
		];
		$insert = $this->model_ppob->save($data);
		echo json_encode(array("status" => TRUE));
	}

	function simpan_pemasukan(){
		$datestring = '%H:%i';
		$time 		= time();
		$waktu 		= mdate($datestring, $time);

		$this->load->model('model_io');
		$this->_validate_pemasukan();
		$data =[
			'nama' 		=> $this->input->post('nama_barang'),
			'nominal' 		=> $this->input->post('nominal'),
			'date' => date('Y-m-d'),
			'time' => $waktu
		];
		$insert = $this->model_io->save($data);
		$this->ubah_saldo_fisik('tambah', $this->input->post('nominal'));
		echo json_encode(array("status" => TRUE));
	}

	function simpan_pengeluaran(){
		$datestring = '%H:%i';
		$time 		= time();
		$waktu 		= mdate($datestring, $time);

		$this->load->model('model_io');
		$this->_validate_pemasukan();
		$data =[
			'nama' 		=> $this->input->post('nama_barang'),
			'nominal' 		=> $this->input->post('nominal'),
			'date' => date('Y-m-d'),
			'time' => $waktu
		];
		$insert = $this->model_io->save_pengeluaran($data);
		$this->ubah_saldo_fisik('kurang', $this->input->post('nominal'));
		echo json_encode(array("status" => TRUE));
	}

	private function ubah_saldo_fisik($status, $nominal){
		$this->load->model('model_saldo');
		$data_saldo_fisik = $this->model_saldo->getSaldoFisik();

		if ($status == 'tambah') {
			$data =[ 'saldo' => $data_saldo_fisik->saldo + $nominal ];
		} else {
			$data =[ 'saldo' => $data_saldo_fisik->saldo - $nominal ];
		}

		$this->model_saldo->updateSaldoFisik(array('id' => '1'), $data);
	}

	private function _validate_pemasukan(){
        $data = [];
        $data['error_string'] = [];
        $data['inputerror'] = [];
        $data['status'] = TRUE;
 
        if($this->input->post('nama_barang') == ''){
            $data['inputerror'][] = 'nama_barang';
            $data['error_string'][] = 'Nama barang harus di isi bung!';
            $data['status'] = FALSE;
        }
        
        if($this->input->post('nominal') == ''){
            $data['inputerror'][] = 'nominal';
            $data['error_string'][] = 'Nominal harus di isi bung!';
            $data['status'] = FALSE;
        }
 
        if($data['status'] === FALSE){
            echo json_encode($data);
            exit();
        }
    }
	
	private function _validate(){
        $data = [];
        $data['error_string'] = [];
        $data['inputerror'] = [];
        $data['status'] = TRUE;
 
        if($this->input->post('nama_barang') == ''){
            $data['inputerror'][] = 'nama_barang';
            $data['error_string'][] = 'Nama barang is required';
            $data['status'] = FALSE;
        }
        
        if($this->input->post('harga_beli') == ''){
            $data['inputerror'][] = 'harga_beli';
            $data['error_string'][] = 'Harga beli is required';
            $data['status'] = FALSE;
        }
 
        if($this->input->post('harga_jual') == ''){
            $data['inputerror'][] = 'harga_jual';
            $data['error_string'][] = 'Harga jual is required';
            $data['status'] = FALSE;
        }
        
        if($this->input->post('setok') == ''){
            $data['inputerror'][] = 'setok';
            $data['error_string'][] = 'Setok is required';
            $data['status'] = FALSE;
        }
        
        if($this->input->post('satuan') == ''){
            $data['inputerror'][] = 'satuan';
            $data['error_string'][] = 'Satuan is required';
            $data['status'] = FALSE;
        }
 
        if($data['status'] === FALSE){
            echo json_encode($data);
            exit();
        }
	}
	
	private function _validate_telp(){
        $data = [];
        $data['error_string'] = [];
        $data['inputerror'] = [];
        $data['status'] = TRUE;
 
        if($this->input->post('nama') == ''){
            $data['inputerror'][] = 'nama';
            $data['error_string'][] = 'Nama is required';
            $data['status'] = FALSE;
        }
        
        if($this->input->post('nomor') == ''){
            $data['inputerror'][] = 'nomor';
            $data['error_string'][] = 'Nomor is required';
            $data['status'] = FALSE;
        }
 
        if($data['status'] === FALSE){
            echo json_encode($data);
            exit();
        }
	}
	
	private function _validate_ppob(){
        $data = [];
        $data['error_string'] = [];
        $data['inputerror'] = [];
        $data['status'] = TRUE;
 
        if($this->input->post('nama') == ''){
            $data['inputerror'][] = 'nama';
            $data['error_string'][] = 'Nama is required';
            $data['status'] = FALSE;
        }
        
        if($this->input->post('nomor') == ''){
            $data['inputerror'][] = 'nomor';
            $data['error_string'][] = 'Nomor is required';
            $data['status'] = FALSE;
		}
		
		if($this->input->post('jenis_ppob') == ''){
            $data['inputerror'][] = 'jenis_ppob';
            $data['error_string'][] = 'jenis ppob is required';
            $data['status'] = FALSE;
        }
 
        if($data['status'] === FALSE){
            echo json_encode($data);
            exit();
        }
    }
    
    public function cari_barang(){
		$data = $this->model_barang->cari_barang($_REQUEST['keyword']);
		echo json_encode( $data);
	}
	
	public function cetak_nota(){
		$this->load->model('model_toko');
		$bayar = $this->input->post('bayar');
		$kembali = $this->input->post('kembali');
		$toko = $this->model_toko->get_data_toko();
		$no=1;
		$output = '';
		$output = '<p class="text-dark">'.$toko->nama_toko.'<br>
				                    	'.$toko->alamat_toko.'<br>
				                    tlp '.$toko->telephon_toko.'<br>
		no &nbsp; &nbsp; &nbsp; : '.$this->session->userdata('id').'<br>
                    	
						kasir &nbsp; : Siti Melinda Sari<br>
		tgl &nbsp; &nbsp; &nbsp; : '.date('Y-m-d  h:i:s').'<br>
					</p>
					<table>
					<thead>
						<tr style="border-top:1px dashed">
							<th width="50">No</th>
							<th width="100">Nama</th>
							<th width="50">qty</th>
							<th>harga</th>
						</tr>
					</thead>
					<tbody>';
					foreach($this->cart->contents() as $row){
		$output .= 		'<tr>
							<td>'.$no++.'</td>
							<td>'.$row["name"].'</td>
							<td>'.$row["qty"].'</td>
							<td>Rp.'.$row["price"] .'</td>
						</tr>';
						}
		$output .= 		'<tr style="border-top:1px dashed">
							<td colspan="3" style="text-align:right">Total :</td>
							<td>Rp.'.number_format($this->cart->total(),0,',','.').'</td>
						</tr>
						<tr>
							<td colspan="3" style="text-align:right">Bayar :</td>
							<td>Rp.'.number_format($bayar,0,',','.').'</td>
						</tr>
						<tr style="border-bottom:1px dashed">
							<td colspan="3" style="text-align:right">Kembali :</td>
							<td>Rp.'.$kembali.'</td>
						</tr>
					</tbody>
					</table>
            <div style="text-align:center">terimakasih atas kunjungan anda</div>';
        echo $output;
	}
	
	public function shoping(){
		$datestring = '%H:%i';
		$time 		= time();
		$waktu 		= mdate($datestring, $time);
		$harga = str_replace('.', '', $this->input->post('harga'));
		$quantity = $this->input->post('qty');
		
		$data = [
			'kode_brg' => $this->input->post('id'),
			'jumlah' => $quantity,
			'nama_brg' => $this->input->post('nama'),
			'harga_brg' => $harga,
			'total_harga' => $harga * $quantity,
			'tgl_transaksi' => date('Y-m-d'),
			'type_penjualan' => $this->input->post('type_penjualan'),
			'waktu' => $waktu
		];

		$insert =  $this->model_barang->insert_penjualan($data);
		
		if($insert){
			$hasil = $this->model_barang->get_setok($this->input->post('id'));
			$sisa =  $hasil->setok;
			$qty = $sisa-$quantity;
			$aksi = $this->model_barang->update_setok($this->input->post('id'),$qty);


			$brg = $this->model_barang->get_by_id($this->input->post('id'));
			
			// tambah saldo fisik
			$this->ubah_saldo_fisik('tambah', $quantity * $harga);

			// input brg ke pemasukan
			$this->load->model('model_io');
			$dataPemasukan =[
				'nama' 		=> 'PENJUALAN: '.$brg->nama_barang,
				'nominal' 		=> $quantity * $harga,
				'date' => date('Y-m-d'),
				'time' => $waktu
			];
			$this->model_io->save($dataPemasukan);

			redirect('/');
		}else{
			echo json_encode(["status" => FALSE]);
		}
	}
	
	public function deletebarang($rowid){
		$this->cart->update([
				'rowid'=>$rowid,
				'qty'=>0,]);
		echo json_encode(["status" => TRUE]);
	}
	
	public function data_penjualan(){
		$this->load->view('kasir/penjualan_view');
  }
  
  public function data_hutang(){
		$this->load->view('kasir/hutang_view');
	}

	public function menabung(){
		$this->load->view('kasir/menabung_view');
  }
  
  public function menabung_details($date){
		$this->load->view('kasir/menabung_detail', ['date' => $date]);
	}

	public function data_pemasukan(){
		$this->load->view('kasir/pemasukan_view');
	}

	public function data_nomor_telephone(){
		$this->load->view('kasir/nomor_telp_view');
	}

	public function data_ppob(){
		$this->load->view('kasir/ppob_view');
	}

	public function data_pengeluaran(){
		$this->load->view('kasir/pengeluaran_view');
	}
	
	public function get_penjualan(){
		$this->load->model('model_penjualan');
		$list = $this->model_penjualan->get_datatables();
		$data = [];
		$no = $_POST['start'];
		$n=0;

		foreach ($list as $barang) {
			$n++;
			$row = [];
			$row[] = $n;
			$row[] = $barang->nama_brg;
			$row[] = $barang->jumlah;
			$row[] = $barang->total_harga;
			$row[] = $barang->type_penjualan;
			$row[] = $barang->tgl_transaksi.' '.$barang->waktu;
			$data[] = $row;
		}
		
		$output = [
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->model_penjualan->count_all(),
			"recordsFiltered" => $this->model_penjualan->count_filtered(),
			"data" => $data,
		];
		echo json_encode($output);
  }
  
  public function get_hutang(){
    $this->load->model('model_hutang');
		$list = $this->model_hutang->get_datatables();
		$data = [];
		$no = $_POST['start'];
		$n=0;

		foreach ($list as $barang) {
			$n++;
			$row = [];
			$row[] = $n;
			$row[] = $barang->nama_brg;
			$row[] = $barang->harga_beli;
			$row[] = $barang->harga_jual;
      $row[] = $barang->date.' '.$barang->time;
      $row[] = $barang->status;

      if($barang->status == 'hutang'){
				$row[] = '<button class="btn btn-sm btn-warning" onclick="lunasi_hutang('."'".$barang->id_hutang_elektrik."'".')">Lunasi</button>';
			}else{
				$row[] = '<button class="btn btn-sm btn-info disabled">Sudah Lunas</button>';
			}

			$data[] = $row;
		}
		
		$output = [
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->model_hutang->count_all(),
			"recordsFiltered" => $this->model_hutang->count_filtered(),
			"data" => $data,
		];
		echo json_encode($output);
  }

  function date_to_month_name($d) {
    $yrdata = strtotime($d);
    return date('M-Y', $yrdata);
  }

  public function get_menabung(){
    $this->load->model('model_menabung');
		$list = $this->model_menabung->get_datatables();
		$data = [];
		$no = $_POST['start'];
		$n=0;

		foreach ($list as $barang) {
			$n++;
			$row = [];
			$row[] = $n;
      $row[] = date('M-Y', strtotime($barang->bulan));
			$row[] = '<a href="'.site_url().'option/menabung_details/'.$barang->bulan.'" class="btn btn-sm btn-success">Details</a>';
      
      $dataNowLength = count($data);
      if ($dataNowLength == 0) {
        $data[] = $row;
      } else {
        if ($data[$dataNowLength - 1][1] != date('M-Y', strtotime($barang->bulan))) {
          $data[] = $row;
        }
      }
		}
		
		$output = [
      "data" => $data,
      "draw" => $_POST['draw'],
			"recordsTotal" => $this->model_menabung->count_all(),
			"recordsFiltered" => $this->model_menabung->count_filtered(),
    ];
		echo json_encode($output);
  }

  public function get_menabung_by_date($date){
    $this->load->model('model_menabung');
		$data_by_date = $this->model_menabung->get_by_date($date);
		echo json_encode($data_by_date);
  }

  public function get_kontrakan_by_tahun($tahun){
    $this->load->model('model_menabung');
		$data = $this->model_menabung->get_kontrakan_by_tahun($tahun);
		echo json_encode($data);
  }

  public function get_no_telp(){
    $this->load->model('model_no_telp');
	$list = $this->model_no_telp->get_datatables();
	$data = [];
	$no = $_POST['start'];
	$n=0;

	foreach ($list as $barang) {
		$n++;
		$row = [];
		$row[] = $n;
		$row[] = $barang->nama;
		$row[] = $barang->nomor;

		if($this->session->userdata('level') == 1 ){
			$row[] = '<a class="btn btn-sm btn-warning" href="javascript:void(0)" title="Edit" onclick="edit_telp('."'".$barang->id."'".')"><i class="far fa-edit"></i></a>
					<a class="btn btn-sm btn-danger" href="javascript:void(0)" title="Hapus" onclick="delete_telp('."'".$barang->id."'".')"><i class="far fa-trash-alt"></i></a>';
		}else{
			$row[] = '<a class="btn btn-sm btn-warning disabled" href="javascript:void(0)" title="Edit" ><i class="far fa-edit"></i></a>
					<a class="btn btn-sm btn-danger disabled" href="javascript:void(0)" title="Hapus" ><i class="far fa-trash-alt"></i></a>';
		}

		$data[] = $row;
	}
	
	$output = [
		"draw" => $_POST['draw'],
		"recordsTotal" => $this->model_no_telp->count_all(),
		"recordsFiltered" => $this->model_no_telp->count_filtered(),
		"data" => $data,
	];
	echo json_encode($output);
  }

  public function get_ppob(){
    $this->load->model('model_ppob');
	$list = $this->model_ppob->get_datatables();
	$data = [];
	$no = $_POST['start'];
	$n=0;

	foreach ($list as $barang) {
		$n++;
		$row = [];
		$row[] = $n;
		$row[] = $barang->nama_ppob;
		$row[] = $barang->nama;
		$row[] = $barang->nomor;

		if($this->session->userdata('level') == 1 ){
			$row[] = '<a class="btn btn-sm btn-warning" href="javascript:void(0)" title="Edit" onclick="edit_ppob('."'".$barang->id_pelanggan."'".')"><i class="far fa-edit"></i></a>
					<a class="btn btn-sm btn-danger" href="javascript:void(0)" title="Hapus" onclick="delete_ppob('."'".$barang->id_pelanggan."'".')"><i class="far fa-trash-alt"></i></a>';
		}else{
			$row[] = '<a class="btn btn-sm btn-warning disabled" href="javascript:void(0)" title="Edit" ><i class="far fa-edit"></i></a>
					<a class="btn btn-sm btn-danger disabled" href="javascript:void(0)" title="Hapus" ><i class="far fa-trash-alt"></i></a>';
		}

		$data[] = $row;
	}
	
	$output = [
		"draw" => $_POST['draw'],
		"recordsTotal" => $this->model_ppob->count_all(),
		"recordsFiltered" => $this->model_ppob->count_filtered(),
		"data" => $data,
	];
	echo json_encode($output);
  }

  public function get_kategori_ppob(){
	$this->load->model('model_ppob');
	$all_kategori_ppob = $this->model_ppob->get_all_kategori_ppob();
	echo json_encode($all_kategori_ppob);
  }

	public function get_pemasukan(){
		$this->load->model('model_io');
		$list = $this->model_io->get_datatables();
		$data = [];
		$no = $_POST['start'];
		$n=0;

		foreach ($list as $barang) {
			$n++;
			$row = [];
			$row[] = $n;
			$row[] = $barang->nama;
			$row[] = 'Rp. '.$barang->nominal;
			$row[] = $barang->date.' '.$barang->time;
			$data[] = $row;
		}
		
		$output = [
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->model_io->count_all(),
			"recordsFiltered" => $this->model_io->count_filtered(),
			"data" => $data,
		];
		echo json_encode($output);
	}

	public function get_pengeluaran(){
		$this->load->model('model_io');
		$list = $this->model_io->get_datatables_pengeluaran();
		$data = [];
		$no = $_POST['start'];
		$n=0;

		foreach ($list as $barang) {
			$n++;
			$row = [];
			$row[] = $n;
			$row[] = $barang->nama;
			$row[] = 'Rp. '.$barang->nominal;
			$row[] = $barang->date.' '.$barang->time;
			$data[] = $row;
		}
		
		$output = [
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->model_io->count_all_pengeluaran(),
			"recordsFiltered" => $this->model_io->count_filtered_pengeluaran(),
			"data" => $data,
		];
		echo json_encode($output);
	}
	
	public function data_toko(){
		$this->load->view('profil/toko_view');
	}
	
	public function get_data_toko(){
		$this->load->model('model_toko');
		$data = $this->model_toko->get_data_toko();
		echo json_encode($data);
	}
	
	public function simpan_data_toko(){
		$this->load->model('model_toko');
		$data = [
			'nama_toko' => $this->input->post('nama_toko'),
			'alamat_toko' => $this->input->post('alamat_toko'),
			'telephon_toko' => $this->input->post('telephon_toko'),
			'moto_toko' => $this->input->post('moto_toko')
		];
		$data2 = $this->model_toko->get_data_toko();
		$id = $data2->id_toko;
		if($data2 == null){
			$insert = $this->model_toko->simpan_data_toko($data);
		}else{
			$insert = $this->model_toko->update_data_toko($data,$id);
		}
		
		echo json_encode($data);
	}
	
	public function edit_data_toko(){
		$this->load->model('model_toko');
		$data = $this->model_toko->get_data_toko();
		if($data == null){
			$data2 =[
				'nama_toko' => 'toko',
				'alamat_toko' => 'alamat',
				'telephon_toko' => '123',
				'moto_toko' => 'moto'
			];
			echo json_encode($data2);
		}else{
			echo json_encode($data);
		}
		
	}
	
	public function update_data_toko(){
		
	}
	
	public function laba(){
		$this->load->view('kasir/laba_view');
	}
	
	public function get_data_laba(){
		$this->load->model('model_laba');
		$list = $this->model_laba->get_data_laba();
		$data = [];
		$no = $_POST['start'];
		$n=0;
		foreach ($list as $barang) {
			$n++;
			$row = [];
			$row[] = $n;
			$row[] = $barang->nama_barang;
			$row[] = $barang->jumlah;
			$row[] = number_format($barang->total_harga);
			$row[] = number_format($barang->harga_beli);
			$row[] = number_format($barang->total_harga - ($barang->jumlah * $barang->harga_beli));
			$data[] = $row;
		}

		$output = [
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->model_laba->count_all(),
			"recordsFiltered" => $this->model_laba->count_filtered(),
			"data" => $data,
		];
		echo json_encode($output);
	}
	
	public function diagram(){
    	$this->load->model('model_laba');
		$list = $this->model_laba->get_data_laba_diagram();
    	echo json_encode($list);
	}

	public function diagram_perbulan(){
		$this->load->model('model_laba');
		$list = $this->model_laba->get_data_laba_diagram_perbulan();
		echo json_encode($list);
  }
  
  public function diagram_pertahun(){
		$this->load->model('model_laba');
		$list = $this->model_laba->get_data_laba_diagram_pertahun();
		echo json_encode($list);
	}

	public function laba_tabel(){
		$this->load->view('kasir/tabel_view');
	}

	public function laba_diagram(){
		$this->load->view('kasir/diagram_view');
	}

	public function laba_diagram_per_bulan(){
		$this->load->view('kasir/diagram_view_bulan');
  }

  public function laba_diagram_per_tahun(){
		$this->load->view('kasir/diagram_view_tahun');
  }
  
  public function cari_diagram_perbulan(){
    $this->load->model('model_laba');
    $tahun = $this->input->post('tahun');
    $list = $this->model_laba->get_data_laba_diagram_perbulan_cari($tahun);
    echo json_encode($list);
  }

	public function cari_diagram(){
    $this->load->model('model_laba');

    $bulan = $this->input->post('bulan')+1;
		$tahun = $this->input->post('tahun');
		$tw = 01;
		$th = 31;
		$min = $tahun.'-'.$bulan.'-'.$tw;
    $max = $tahun.'-'.$bulan.'-'.$th;

		$list = $this->model_laba->get_data_laba_diagram_cari($min, $max);
    echo json_encode($list);
	}

	public function logout(){
		$this->load->helper('cookie');
		delete_cookie('id');
		$this->session->sess_destroy();
		header('location:http://localhost/bordercell');
	}

	public function pengunjung(){
		$this->load->view('admin/pengunjung_view');
	}

	public function akun(){
		$this->load->model('model_member');
		$data['judul'] = 'profil';
		$data['akun'] = $this->model_member->get_profil();
		$this->load->view('profil/profil_view',$data);
	}

	public function edit_profil()
	{
		$this->load->model('model_member');
		$data = $this->model_member->get_profil();
		echo json_encode($data);
	}

	public function data_user(){
		$this->load->view('kasir/data_user_view');
	}

	public function get_data_user(){
		$this->load->model('model_member');
		$list = $this->model_member->get_datatables();
		$data = [];
		$no = $_POST['start'];
		$n=0;
		foreach ($list as $user) {
			$n++;
			$row = [];
			$row[] = $n;
			$row[] = $user->nama;
			$row[] = $user->email;
			$row[] = $user->jenis_kelamin;
			$row[] = $user->telephone;
			if($user->aktif == 1){
				$row[] = "aktif";
			}else {
				$row[] = "blokir";
			}
			$row[] = '<button class="btn btn-danger" roler="button" onClick="edit_user('."'".$user->id."'".')">edit</button>';
			$data[] = $row;
		}
		$output = [
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->model_member->count_all(),
			"recordsFiltered" => $this->model_member->count_filtered(),
			"data" => $data,
		];
		echo json_encode($output);
	}
}