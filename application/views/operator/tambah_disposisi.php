<section id="basic-examples">
	<div class="row">
		<div class="col-xs-12 mt-1 mb-3">
			<h4 class="">
				Disposisi Surat
			</h4>
			
			<hr>
		</div>
		<div class="col-xs-12">
			<?php 
			if ($this->session->flashdata('error')!==null) {
				?>
				<div class="alert alert-danger">
					<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
					<?php echo $this->session->flashdata('error') ?>
				</div>
				<?php
			}

			if ($this->session->flashdata('success')!==null) {
				?>
				<div class="alert alert-success">
					<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
					<?php echo $this->session->flashdata('success') ?>
				</div>
				<?php
			}
			?>
		</div>
	</div>
	<br>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/style.css') ?>">
	<div class="row" style="margin-top: -30px;">
		<div class="col-12">
			<div class="card">
				<div class="modal-header">
					<form class="form-horizontal" method="post"  action="<?php echo site_url('operator/daftardisposisi');?>">
							<button type="submit"  class="btn btn-success" ><i class="glyphicon glyphicon-search"></i> Lihat Daftar Disposisi</button>
					</form>
					<br>
					<form class="form-horizontal" method="post"  action="<?php echo site_url('operator/monitoring_disposisi');?>">
							<button type="submit"  class="btn btn-success" ><i class="glyphicon glyphicon-search"></i> Monitoring Disposisi</button>
					</form>
              
                    </div>
			
				<div class="card-body " style="padding: 20px;">
					
						<div class="table-responsive m-t-40" style="margin-bottom: 15px;">
					<div class="row">
						<form action="<?php echo base_url('operator/add_disposisi') ?>" method="post">

							
							<div class="col-md-6">
								<div class="form-group">
									<label for="">No Surat</label> <span>*(Ketikan nomer surat disini!)</span>
									<input type="text" class="form-control" required="" name="no_surat" id="no_surat" onkeyup="autofill()">
									<div class="alert alert-warning mb-2" id="alert" role="alert" style="display: none;">
										<strong>Warning!</strong> Nomer surat sudah didisposisikan.
									</div>
								</div>
 
								<div class="form-group">
									<label for="">Surat Dari</label>
									<input type="text" class="form-control" required="" name="dari" id="dari">
								</div>

								<div class="form-group">
									<label for="timesheetinput1">Tanggal Surat</label>
									<div class="position-relative has-icon-right">
										<input type="text"autocomplete="off" class="form-control mydatepicker" placeholder="yyyy/mm/dd" name="tgl_surat" required="" id="tgl_surat">
										<div class="form-control-position">
											<i class="icon-android-calendar" style="font-size: 2em;margin-top: 5px;position: absolute;right: 0px"></i>
										</div>
									</div>
								</div>
								
								<div class="form-group">
									<label for="timesheetinput1">Diterima Tanggal</label>
									<div class="position-relative has-icon-right">
										<input type="text"autocomplete="off" class="form-control mydatepicker" placeholder="yyyy/mm/dd" name="tgl_diterima" required="" id="tgl_diterima">
										<div class="form-control-position">
											<i class="icon-android-calendar" style="font-size: 2em;margin-top: 5px;position: absolute;right: 0px"></i>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label for="">Perihal</label>
									<textarea name="perihal" id="perihal" required="" class="form-control" style="height: 150px"></textarea>
								</div>
								</div>

								<div class="col-md-6">

								<div class="form-group">
									<label for="">Ditujukan Kepada</label>
									<select name="tujuan" id="tujuan" required="" class="form-control">
										<option value="" hidden="">Kepada</option>
										<option value="KepalaKantorKesyahbandarandanOtoritasPelabuhanGresikII"> Kepala Kantor Kesyahbandaran dan Otoritas Pelabuhan Gresik II</option>
									</select>
								</div>

								<div class="form-group">
									<label for="">Sifat</label>
									<select name="sifat" id="sifat" readonly="readonly" required="" class="form-control">
										<option value="" hidden="">Pilih Sifat</option>
										<option value="Sangat Segera">Sangat Segera</option>
										<option value="Segera">Segera</option>
										<option value="Biasa">Biasa</option>
										<option value="Rahasia">Rahasia</option>
									</select>
								</div>

								<div class="form-group">
									<label for="">Kepada Yth</label>
									<select name="teruntuk" id="teruntuk" required="" readonly="readonly" class="form-control">
											<option value="">----</option>
											<option value="Kasubag Tata Usaha">xxxxxxxxxxxxxxxx</option>
											<option value="Kepala Seksi Status Hukum dan Sertifikasi Kapal">xxxxxxxxxxxxxxxxxxxx</option>
											<option value="Kasie Keselamatan Berlayar Penjegaan dan Patrol">xxxxxxxxxxxxxxxxxxxxxx</option>
											<option value="Kasie LALA dan Usaha Kepelabuhanan">xxxxxxxxxxxxxxxxxxxxxxxxxx</option>
										</select>
								</div>
								<div class="form-group">
									<label for="">Diteruskan Kepada</label>
									<select name="diteruskan" id="diteruskan" required="" class="form-control">
									<option value="">Pilih Kepada</option>
												<option value="Kasubag">Kasubag</option>
												<option value="Kepala">Kepala Kantor</option>
												<option value="Staff">Staff</option>
											</select>
								</div>
							

								<div class="form-group">
									<label for="">Dengan Hormat Harap</label>
									<select name="dgn_hormat" id="dgn_hormat" readonly="readonly" required="" class="form-control">
										<option value="" hidden="">Pilih Opsi</option>
										<option value="Tanggapan dan saran">Tanggapan dan saran</option>
										<option value="Proses lebih lanjut">Proses lebih lanjut</option>
										<option value="Koordinasi dan konfirmasi">Koordinasi dan konfirmasi</option>
									</select>
								</div>
								<div class="form-group">
									<label for="">Catatan</label>
									<textarea id="catatan" name="catatan" required="" class="form-control" style="height: 150px" readonly="readonly"></textarea>
								</div>
								<div class="form-group">
									<button class="btn btn-outline-success" onclick="return confirm('Apakah data yang dimasukan telah benar?')">Simpan Data Disposisi</button>
									<a href="<?php echo base_url('operator/disposisi') ?>" class="btn btn-outline-danger">Batal</a>
								</div>
							</div>
						



						</form>
					</div>
				</div>
			</div>
		</div>

	</div>
</section>


	<!-- /advanced login -->
<script src="<?php echo base_url('assets/js/jquery-1.11.2.min.js') ?>"></script>
<script src="<?php echo base_url('assets/datatables/jquery.dataTables.js') ?>"></script>
<script src="<?php echo base_url('assets/datatables/dataTables.bootstrap.js') ?>"></script>

<script type="text/javascript">

	function autofill(){
		$.ajax({
			url : "<?php echo site_url('operator/getsuratmasuk');?>",
			type : "POST",
			dataType : "json",
			data : {
				nomer : $("#no_surat").val()
			}, 
			success:function(hasil){
				if (hasil.hasil == "ada") {
					$("#alert").css({"display":"block"});
				}else{
					$("#dari").val(hasil.surat_dari);
					$("#tgl_diterima").val(hasil.tgl_diterima);
					$("#perihal").val(hasil.perihal);
					$("#tgl_surat").val(hasil.tgl_surat);
				}
			}
		});
	}

	
</script>