<!DOCTYPE html>
<html lang="en">



<head>
	<?php $this->load->view("admin/_partials/head.php") ?>
</head>

</style>
<body id="page-top">

	<?php $this->load->view("admin/_partials/navbar.php") ?>
	<div id="wrapper">

		<?php $this->load->view("admin/_partials/sidebar.php") ?>

		<div id="content-wrapper">

			<div class="container-fluid">

				
			
				<!-- DataTables -->
				<div class="card mb-3">
					
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
								<thead>
									<tr>
										<th>Nomor</th>
										<th>Bulan</th>
										<th>Tahun</th>
										<th>Golongan darah</th>
										<th>Nama Rumah Sakit</th>
										<th>Jumlah Darah</th>
										<th>Aksi</th>
										<th>Jumlah Total Perbulan</th>
									</tr>
								</thead>
								<tbody>
									<?php $jumlahtot = $jumlahtot==null ? [] : $jumlahtot;?>
								<?php for($i = 0; $i < count($jumlahtot); ++$i):?>
									<?php $datark = $datarss[$i] ?? null;?>
									<?php $dattotal = $jumlahtot[$i];?>

									<tr>
										<td width="150">
											<?php echo $i+1 ?? '' ?>
										</td>
										<td width="150">
											<?php echo $datark->bulan ?? '' ?>
										</td>
										<td width="150">
											<?php echo $datark->tahun ?? '' ?>
										</td>
										
										<td width="150">
											<?php echo $datark->golongan_darah ?? '' ?>
										</td>
										<td width="300">
											<?php echo $datark->namars ?? ''  ?>
										</td>
										<td width="150">
											<?php echo $datark->jumlah_darah ?? ''?>
										</td>				
								
										<td width="300">
											<?php if($datark != null): ?>
										<a href="<?php echo site_url('admin/datarks/detail/'.$datark->id_rs) ?>"
										class="btn btn-small text-success"> <i class="fa fa-info"></i><font color=green> Detail</color></a>
											<a href="<?php echo site_url('admin/datarks/edit/'.$datark->id_rs) ?>" class="btn btn-small"><i class="fas fa-edit"></i> Edit</a>
											<a onclick="deleteConfirm('<?php echo site_url('admin/datarks/delete/'.$datark->id_rs) ?>')"
											 href="#!" class="btn btn-small text-danger"><i class="fas fa-trash"></i> Hapus</a>
											 <?php endif;?>
										</td>
										<td> <?php echo sprintf($dattotal['total'])?></td>
									</tr>
									<?php endfor; ?>

								</tbody>
							</table>
						</div>
					</div>
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
</script>


</body>

</html>
