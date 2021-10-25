<!DOCTYPE html>

<html lang="en">

<head>
	<?php $this->load->view("admin/_partials/head.php") ?>
</head>

<body id="page-top">

	<?php $this->load->view("admin/_partials/navbar.php") ?>
	<div id="wrapper">

		<?php $this->load->view("admin/_partials/sidebar.php") ?>

		<div id="content-wrapper">

			<div class="container-fluid">

				<?php if ($this->session->flashdata('success')): ?>
				<div class="alert alert-success" role="alert">
					<?php echo $this->session->flashdata('success'); ?>
				</div>
				<?php endif; ?>

				<div class="card mb-3">
					<div class="card-header">
						<center><h5><b>LIST DATA RUMAH SAKIT</b><h5></center>
					</div>
					<div class="card-body">

						<form >
							
								<div class="form-group">
									<label>Bulan</label>
									<select id="select_bulan" name="bulan" class="form-control" required >
										<option selected disabled>Pilih Bulan</option>
										<option name="bulan" value="Januari"> Januari</option>
										<option name="bulan" value="Februari"> Februari</option>
										<option name="bulan" value="Maret"> Maret</option>
										<option name="bulan" value="April"> April</option>
										<option name="bulan" value="Mei"> Mei</option>
										<option name="bulan" value="Juni"> Juni</option>
										<option name="bulan" value="Juli"> Juli</option>
										<option name="bulan" value="Agustus"> Agustus</option>
										<option name="bulan" value="September"> September</option>
										<option name="bulan" value="Oktober"> Oktober</option>
										<option name="bulan" value="November"> November</option>
										<option name="bulan" value="Desember"> Desember</option>
									</select>
								</div>
								<div class="form-group">
								<label for="name">Tahun</label>
								<input class="form-control" id="select_tahun" 
								 type="string" name="tahun" placeholder="Tulis Yang Lengkap" required  />
					
							</div>	
							
								<div class="form-group">
									<label>Golongan Darah</label>
									<select id="select_golongan_darah" name="golongan_darah" class="form-control" required >
										<option selected disabled>Pilih Golongan Darah</option>
										<option name="golongan_darah" value="A"> A</option>
										<option name="golongan_darah" value="B"> B</option>
										<option name="golongan_darah" value="O"> O</option>
										<option name="golongan_darah" value="AB"> AB</option>
									</select>
								</div>
							
							
							<input class="btn btn-success"  id="btnSubmit" value="Filter"/>
						</form>
					</div>

					<div class="card-footer small text-muted">
						* required fields
					</div>

				</div>
				<!-- /.container-fluid -->

				<!-- Sticky Footer -->
				<?php $this->load->view("admin/_partials/footer.php") ?>

			</div>
			<!-- /.content-wrapper -->

		</div>
		<!-- /#wrapper -->

		<?php $this->load->view("admin/_partials/scrolltop.php") ?>
	<?php $this->load->view("admin/_partials/modal.php") ?>

    <?php $this->load->view("admin/_partials/js.php") ?>
    
    <script>

btnSubmit.addEventListener("click", function() {
		tahun = select_tahun.value
		bulan = select_bulan.value
		golongan = select_golongan_darah.value
		window.location = "http://localhost/ci_test/index.php/admin/datarks/filter/"+golongan+"/"+bulan+"/"+tahun
	//	
}, false);

		</script>
</body>
</html>