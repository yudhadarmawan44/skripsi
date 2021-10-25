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

				<!-- Card  -->
				<div class="card mb-3">
					<div class="card-header">

						<a href="<?php echo site_url('admin/datauji/') ?>"><i class="fas fa-arrow-left"></i>
							Back</a>
					</div>
					<div class="card-body">

						<form action="<?php base_url('admin/datauji/edit') ?>" method="post" enctype="multipart/form-data">

							<input type="hidden" name="id" value="<?php echo $datauji->id?>" />

							<div class="form-group">
								<label for="name">Id*</label>
								<input class="form-control <?php echo form_error('name') ? 'is-invalid':'' ?>"
								 type="text" name="name" placeholder="Nomor Datauji" value="<?php echo $datauji->id ?>" disabled="disabled" />
								<div class="invalid-feedback">
									<?php echo form_error('name') ?>
								</div>
							</div>
				
							<div class="form-group">
									<label>Bulan</label>
									<select id="select_bulan" name="bulan" class="form-control">
										<option selected disabled>Pilih Bulan</option>
										<option <?php if($datauji->bulan=='Januari'){echo "selected"; } ?> value='Januari'> Januari</option>
										<option <?php if($datauji->bulan=='Februari'){echo "selected"; } ?> value='Februari'> Februari</option>
										<option <?php if($datauji->bulan=='Maret'){echo "selected"; } ?> value='Maret'> Maret</option>
										<option <?php if($datauji->bulan=='April'){echo "selected"; } ?> value='April'> April</option>
										<option <?php if($datauji->bulan=='Mei'){echo "selected"; } ?> value='Mei'> Mei</option>
										<option <?php if($datauji->bulan=='Juni'){echo "selected"; } ?> value='Juni'> Juni</option>
										<option <?php if($datauji->bulan=='Juli'){echo "selected"; } ?> value='Juli'> Juli</option>
										<option <?php if($datauji->bulan=='Agustus'){echo "selected"; } ?> value='Agustus'> Agustus</option>
										<option <?php if($datauji->bulan=='September'){echo "selected"; } ?> value='September'> September</option>
										<option <?php if($datauji->bulan=='Oktober'){echo "selected"; } ?> value='Oktober'> Oktober</option>
										<option <?php if($datauji->bulan=='November'){echo "selected"; } ?> value='November'> November</option>
										<option <?php if($datauji->bulan=='Desember'){echo "selected"; } ?> value='Desember'> Desember</option>
										
									</select>
								</div>
							<div class="form-group">
								<label for="name">Tahun</label>
								<input class="form-control <?php echo form_error('name') ? 'is-invalid':'' ?>"
								 type="string" name="tahun" placeholder="Tulis Tahun" value="<?php echo $datauji->tahun ?>" />
								<div class="invalid-feedback">
									<?php echo form_error('name') ?>
								</div>
							</div>

							<div class="form-group">
									<label>Golongan Darah</label>
									<select id="select_golongan_darah" name="golongan_darah" class="form-control">
										<option selected disabled>Pilih Golongan Darah</option>
										<option <?php if($datauji->golongan_darah=='A'){echo "selected"; } ?> value='A'> A</option>
										<option <?php if($datauji->golongan_darah=='B'){echo "selected"; } ?> value='B'> B</option>
										<option <?php if($datauji->golongan_darah=='O'){echo "selected"; } ?> value='O'> O</option>
										<option <?php if($datauji->golongan_darah=='AB'){echo "selected"; } ?> value='AB'> AB</option>
										
									</select>
								</div>							
							<div class="form-group">
								<label for="name">Nama Rumah Sakit</label>
								<input class="form-control <?php echo form_error('name') ? 'is-invalid':'' ?>"
								 type="text" name="namars" placeholder="Tulis Nama Rumah Sakit" value="<?php echo $datauji->namars ?>" />
								<div class="invalid-feedback">
									<?php echo form_error('name') ?>
								</div>
							</div>
							<div class="form-group">
								<label for="name">Jumlah Darah*</label>
								<input class="form-control <?php echo form_error('name') ? 'is-invalid':'' ?>"
								 type="string" name="jumlah_darah" placeholder="Tulis Jumlah Darah" value="<?php echo $datauji->jumlah_darah ?>" />
								<div class="invalid-feedback">
									<?php echo form_error('name') ?>
								</div>
							</div>
								<div class="invalid-feedback">
									<?php echo form_error('description') ?>
								</div>
							</div>

							<input class="btn btn-success" type="submit" name="btn" value="Save" />
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

		<?php $this->load->view("admin/_partials/js.php") ?>

		<!-- jquery -->
		<script src="<?php echo base_url('assets/js/jquery.min.js'); ?>"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.3/moment.min.js"></script>
		<!-- ajax -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		

</body>

</html>
