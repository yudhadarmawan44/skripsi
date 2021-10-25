<!DOCTYPE html>
<html lang="en">



<head>
	<?php $this->load->view("admin/_partials/head.php") ?>
</head>

</style>
<body id="page-top">

<?php
$tanggal = 'Day: %d Month: %m Year: %Y ';
?>

	<?php $this->load->view("admin/_partials/navbar.php") ?>
	<div id="wrapper">

		<?php $this->load->view("admin/_partials/sidebar.php") ?>

		<div id="content-wrapper">

			<div class="container-fluid">
	
				<!-- DataTables -->
				<div class="card mb-3">

					<div class="card-header">
						   
					<form action="<?php echo site_url('admin/datauji/uploadData') ?>" method="post" enctype="multipart/form-data" name="form1" id="form1">
                            <table> 
                            	<tr>
                            		<td> <a href="<?php echo site_url('admin/datauji/add')?>"><i class="fas fa-plus-circle"></i> Tambah Data Baru </a>
                            		</td>
                            	</tr>
                                <tr>
                                    <td style="color:green"><i class="fas fa-file-csv"></i> Upload File (.csv)</td>
                                    <td>
                                        <input type="file" class="form-control" name="userfile" id="userfile" align="center" />
                                    </td>
                                    <td>
                                        <div class="col-lg-offset-3 col-lg-9">
                                            <button type="submit" name="submit" class="btn btn-success">Upload</button>
                                        </div>
                                    </td>
                                </tr>
                 
                                <tr>
									
                                    <td><a style="color:red;cursor:pointer" onclick="deleteConfirm('<?php echo site_url('admin/datauji/truncate') ?>' )"><i class="fas fa-trash-alt"></i> Hapus Semua Data</a></td>
                                    
                                </tr>
                               
                            </table>
                        </form>
					<br>
						
					</div>
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
										<th>Prediksi Single</th>
										<th>Error Single</th>
										<th>prediksi Double</th>
										<th>Error Double</th>	
										

									</tr>
								</thead>
								<tbody>
									<?php $predikSingle = $predikSingle==null ? [] : $predikSingle;?>
									<?php for($i = 0; $i < count($predikSingle); ++$i):?>
									<?php $data = $dataujis[$i] ?? null;?>
									<?php $dataDouble = $predikDouble[$i];?>
									<?php $datSingle = $predikSingle[$i];?>
									<tr>
										<td width="150">
											<?php echo $i+1 ?? '' ?>
										</td>
										<td width="150">
											<?php echo $data->bulan ?? '-' ?>
										</td>
										<td width="150">
											<?php echo $data->tahun ?? '-' ?>
										</td>
										
										<td width="150">
											<?php echo $data->golongan_darah ?? '-' ?>
										</td>
										<td width="300">
											<?php echo $data->namars ?? '-' ?>
										</td>
										<td width="150">
											<?php echo $data->jumlah_darah ?? '-' ?>
										</td>								
										<td width="400">
											<?php if($data != null): ?> 
										<a href="<?php 
												echo site_url('admin/datauji/detail/').$data->id  ?>"
										class="btn btn-small text-success"> <i class="fa fa-info"></i><font color=green> Detail</color></a>
											
											<a href="<?php   echo site_url('admin/datauji/edit/').$data->id ?>"
											 class="btn btn-small"><i class="fas fa-edit"></i> Edit</a>
											<a onclick="deleteConfirm('<?php  echo site_url('admin/datauji/delete/').$data->id ?>')"
											 href="#!" class="btn btn-small text-danger"><i class="fas fa-trash"></i> Hapus</a>
											 <?php endif;?>
										</td>
										
										<td> <?php echo sprintf("%.3f", $datSingle['hasil_prediksi'])?></td>
										<td> <?php echo sprintf("%.3f", $datSingle['error'])?></td>
										<td> <?php echo sprintf("%.3f", $dataDouble['hasil_prediksi'])?></td>
										<td> <?php echo sprintf("%.3f", $dataDouble['error'])?></td>
										
										<?php endfor; ?>
									</tr>
						
								</tbody>
							</table>
						
											<td style="color:red"><i class="fas fa-file-csv"></i> Keterangan: Hasil Peramalan Berada Di Tabel Sebelah Kanan Dengan Label Prediksi Single Untuk Metode Pertama, Prediksi Double Untuk Metode Kedua, Hasil Error Berada Di Sebelah Kanan Pada Masing-Masing Metode, Peramalan Urut ke Bulan dan Tahun Selanjutnya Dari Terakhir Input Bulan dan Tahun Tersebut.</td>
                                  	
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
