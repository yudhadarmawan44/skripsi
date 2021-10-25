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
						<center><h5><b>PENAMBAHAN DATA RUMAH SAKIT</b><h5></center>
					</div>
					<div class="card-body">

						<form action="<?php base_url('admin/datark/add') ?>" method="post" enctype="multipart/form-data" >
							
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
								<input class="form-control <?php echo form_error('name') ? 'is-invalid':'' ?>"
								 type="string" name="tahun" placeholder="Tulis Yang Lengkap" required  />
								<div class="invalid-feedback">
									<?php echo form_error('name') ?>
								</div>
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
							<div class="form-group">
								<label for="name">Nama Rumah Sakit</label>
								<input class="form-control <?php echo form_error('name') ? 'is-invalid':'' ?>"
								 type="text" name="namars" placeholder="Tulis Nama Rumah Sakit" required  />
								<div class="invalid-feedback">
									<?php echo form_error('name') ?>
								</div>
							</div>
							<div class="form-group">
								<label for="name">Jumlah Darah*</label>
								<input class="form-control <?php echo form_error('name') ? 'is-invalid':'' ?>"
								 type="string" name="jumlah_darah" placeholder="Tulis Jumlah Darah" required  />
								<div class="invalid-feedback">
									<?php echo form_error('name') ?>
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
	<?php $this->load->view("admin/_partials/modal.php") ?>

    <?php $this->load->view("admin/_partials/js.php") ?>
    
    <script>
function deleteConfirm(url){
	$('#btn-delete').attr('href', url);
	$('#deleteModal').modal();
}

<!-- jquery -->
		<script src="<?php echo base_url('assets/js/jquery.min.js'); ?>"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.3/moment.min.js"></script>
		<!-- ajax -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		
		<script type="text/javascript">
			$(document).ready(function());

		</script>
		<script type="text/javascript">

		 $("input").on("change", function() {
   			 this.setAttribute(
     	   "data-date",
        	moment(this.value, "YYYY-MM-DD")
        	.format( this.getAttribute("data-date-format") )
    		)
		}).trigger("change")
		</script>
</body>
</html>