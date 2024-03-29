<?php include 'server/server.php' ?>
<?php 
	if(isset($_SESSION['role'])){
		if($_SESSION['role'] =='staff'){
			$off_q = "SELECT *,tblofficials.id as id, tblposition.id as pos_id,tblchairmanship.id as chair_id FROM tblofficials JOIN tblposition ON tblposition.id=tblofficials.position JOIN tblchairmanship ON tblchairmanship.id=tblofficials.chairmanship WHERE `status`='Active' ORDER BY tblposition.order ASC ";
		}else{
			$off_q = "SELECT *,tblofficials.id as id, tblposition.id as pos_id,tblchairmanship.id as chair_id FROM tblofficials JOIN tblposition ON tblposition.id=tblofficials.position JOIN tblchairmanship ON tblchairmanship.id=tblofficials.chairmanship ORDER BY tblposition.order ASC, `status` ASC ";
		}
	}else{
		$off_q = "SELECT *,tblofficials.id as id, tblposition.id as pos_id,tblchairmanship.id as chair_id FROM tblofficials JOIN tblposition ON tblposition.id=tblofficials.position JOIN tblchairmanship ON tblchairmanship.id=tblofficials.chairmanship WHERE `status`='Active' ORDER BY tblposition.order ASC ";
	}
	
	$res_o = $conn->query($off_q);

	$official = array();
	while($row = $res_o->fetch_assoc()){
		$official[] = $row; 
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<?php include 'templates/header.php' ?>
	<title>Brg Officials and Staff -  Barangay Management System</title>
</head>
<body>
	<?php include 'templates/loading_screen.php' ?>

	<div class="wrapper">
		<!-- Main Header -->
		<?php include 'templates/main-header.php' ?>
		<!-- End Main Header -->

		<!-- Sidebar -->
		<?php include 'templates/sidebar.php' ?>
		<!-- End Sidebar -->
 
		<div class="main-panel">
			<div class="content">
				<div class="panel-header" style="background: linear-gradient(45deg,#cbbeb5,#3a3500);">
					<div class="page-inner">
						<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
							<div>
								<h2 class="text-white fw-bold" style="font-style: Century-gothic; color:white ;  text-shadow: 2px 2px 5px #354259;">BARANGAY OFFICIALS</h2>
							</div>
						</div>
					</div>
				</div>
				<div class="page-inner">
					<?php if(isset($_SESSION['message'])): ?>
							<div class="alert alert-<?php echo $_SESSION['success']; ?> <?= $_SESSION['success']=='danger' ? 'bg-danger text-light' : null ?>" role="alert">
								<?php echo $_SESSION['message']; ?>
							</div>
						<?php unset($_SESSION['message']); ?>
						<?php endif ?>
					<div class="row mt--2">
						
						<div class="col-md-12">
							<div class="card">
								<div class="card-body" style="background: linear-gradient(45deg,#cbbeb5,#3a3500);">
									<div class="d-flex flex-wrap pb-2 justify-content-between">
										<div class="px-2 pb-2 pb-md-0 text-center">
											<img src="assets/uploads/<?= $brgy_logo ?>" class="img-fluid" width="100">
										</div>
										<div class="px-2 pb-2 pb-md-0 text-center">
											<h2 style="font-style: Century-gothic; color:white ; text-shadow: 2px 2px 5px #354259;" class="fw-bold mt-3"><?= ucwords($brgy) ?></h2>
											<h4 style="font-style: Century-gothic; color:white ; text-shadow: 2px 2px 5px #354259;" class="fw-bold mt-3"><i><?= ucwords($town) ?></i></h4>
										</div>
										<div class="px-2 pb-2 pb-md-0 text-center">
											<img src="assets/img/brgy-logo.png" class="img-fluid" width="100" style="visibility:hidden;">
										</div>
									</div>
								</div>
							</div>
							<div class="card">
								<div class="card-header">
									<div class="card-head-row">
										<div class="card-title">Current Barangay Officials</div>
										<?php if(isset($_SESSION['username'])):?>
											<div class="card-tools">
												<a href="#add" data-toggle="modal" class="btn btn-info btn-border btn-round btn-sm">
													<i class="fa fa-plus"></i>
													Official
												</a>
											</div>
										<?php endif?>
									</div>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table table-striped">
											<thead>
												<tr>
													<th scope="col">Fullname</th>
													<th scope="col">Chairmanship</th>
													<th scope="col">Position</th>
													<?php if(isset($_SESSION['username'])):?>
														<?php if($_SESSION['role']=='administrator'):?>
															<th>Status</th>
														<?php endif ?>
														<th>Action</th>
													<?php endif?>
												</tr>
											</thead>
											<tbody>
												<?php if(!empty($official)): ?>
													<?php foreach($official as $row): ?>
														<tr>
															<td class="text-uppercase"><?= $row['name'] ?></td>
															<td><?= $row['title'] ?></td>
															<td><?= $row['position'] ?></td>
															<?php if(isset($_SESSION['username'])):?>
																<?php if($_SESSION['role']=='administrator'):?>
																	<td><?= $row['status']=='Active' ? '<span class="badge badge-primary">Active</span>' :'<span class="badge badge-danger">Inactive</span>' ?></td>
																<?php endif ?>



																<td>
																
  																<a type="button" href="#edit" data-toggle="modal" class="btn btn-link btn-primary" 
																		title="Edit Position" onclick="editOfficial(this)" data-id="<?= $row['id'] ?>" data-name="<?= $row['firstName'] ?>"
																		data-last="<?= $row['lastName'] ?>" data-middle="<?= $row['middleName'] ?>"
																		data-chair="<?= $row['chair_id'] ?>" data-pos="<?= $row['pos_id'] ?>" data-start="<?= $row['termstart'] ?>" 
																		data-end="<?= $row['termend'] ?>" data-status="<?= $row['status'] ?>">
																		<i class="fa fa-edit"></i>
																	</a>
																	<?php if($_SESSION['role']=='administrator'):?>
																	<a type="button" data-toggle="tooltip" href="model/remove_official.php?id=<?= $row['id'] ?>" onclick="return confirm('Are you sure you want to delete this official?');" class="btn btn-link btn-danger" data-original-title="Remove">
																		<i class="fa fa-times"></i>
																	</a>
																	<?php endif ?>
  
																	
																</td>
															<?php endif?>
														</tr>
													<?php endforeach ?>
												<?php else: ?>
													<tr>
														<td colspan="3" class="text-center">No Available Data</td>
													</tr>
												<?php endif ?>
											</tbody>
											<tfoot>
												
											</tfoot>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			 <!-- Modal -->
			 <div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Create Official</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form method="POST" action="model/save_official.php" >
                                <div class="form-group">
                                    <label>First Name</label>
                                    <input type="text" class="form-control" placeholder="Enter First Name" name="firstName" required>
                                </div>
                                <div class="form-group">
                                    <label>Last Name</label>
                                    <input type="text" class="form-control" placeholder="Enter Last Name" name="lastName" required>
                                </div>
                                <div class="form-group">
                                    <label>Middle Name</label>
                                    <input type="text" class="form-control" placeholder="Enter Middle Name" name="middleName" required>
                                </div>
								<div class="form-group">
                                    <label>Chairmanship</label>
                                    <select class="form-control" id="pillSelect" required name="chair">
                                        <option disabled selected>Select Official Chairmanship</option>
                                        <?php foreach($chair as $row): ?>
											<option value="<?= $row['id'] ?>"><?= $row['title'] ?></option>
										<?php endforeach ?>
                                    </select>
                                </div>
								<div class="form-group">
                                    <label>Position</label>
                                    <select class="form-control" id="pillSelect" required name="position">
                                        <option disabled selected>Select Official Position</option>
										<?php foreach($position as $row): ?>
											<option value="<?= $row['id'] ?>">Brgy. <?= $row['position'] ?></option>
										<?php endforeach ?>
                                    </select>
                                </div>
								<div class="form-group">
                                    <label>Term Start</label>
                                    <input type="date" class="form-control" id="addStart" name="start" onchange="addTermCalculator();" required>
                                </div>
								<div class="form-group">
                                    <label>Term End</label>
                                    <input type="date" class="form-control" id="addEnd" name="addEnd" readonly>
                                </div>
								<div class="form-group">
                                    <label>Status</label>
                                    <select class="form-control" id="pillSelect" required name="status">
                                        <option value="Active">Active</option>
                                        <option value="Inactive">Inactive</option>
                                    </select>
                                </div>
                            
                        </div>
                        <div class="modal-footer">
                            <input type="hidden" id="pos_id" name="id">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Create</button>
                        </div>
                        </form>
                    </div>
                </div>
            </div>

			<!-- Modal -->
			<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Edit Official</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form method="POST" action="model/edit_official.php" >
                                <div class="form-group">
                                    <label>First Name</label>
                                    <input type="text" class="form-control" placeholder="Enter First Name" name="name" id="name">
                                </div>
                                <div class="form-group">
                                    <label>Last Name</label>
                                    <input type="text" class="form-control" placeholder="Enter Last Name" name="last" id="last">
                                </div>
                                <div class="form-group">
                                    <label>Middle Name</label>
                                    <input type="text" class="form-control" placeholder="Enter Middle Name" name="middleName" id="middleName">
                                </div>
								<div class="form-group">
                                    <label>Chairmanship</label>
                                    <select class="form-control" id="chair" required name="chair">
                                        <option disabled selected>Select Official Chairmanship</option>
                                        <?php foreach($chair as $row): ?>
											<option value="<?= $row['id'] ?>"><?= $row['title'] ?></option>
										<?php endforeach ?>
                                    </select>
                                </div>
								<div class="form-group">
                                    <label>Position</label>
                                    <select class="form-control" id="position" required name="position">
                                        <option disabled selected>Select Official Position</option>
										<?php foreach($position as $row): ?>
											<option value="<?= $row['id'] ?>">Brgy. <?= $row['position'] ?></option>
										<?php endforeach ?>
                                    </select>
                                </div>
								<div class="form-group">
                                    <label>Term Start</label>
                                    <input type="date" class="form-control" id="start" name="start" onchange="termCalculator();" required>
                                </div>
								<div class="form-group">
                                    <label>Term End</label>
                                    <input type="date" class="form-control" id="end" name="end" readonly>
                                </div>
								<div class="form-group">
                                    <label>Status</label>
                                    <select class="form-control" id="status" required name="status">
                                        <option value="Active">Active</option>
                                        <option value="Inactive">Inactive</option>
                                    </select>
                                </div>
                            
                        </div>
                        <div class="modal-footer">
                            <input type="hidden" id="off_id" name="id">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Update</button>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
			<!-- Main Footer -->
			<?php include 'templates/main-footer.php' ?>
			<!-- End Main Footer -->
			
		</div>
		
	</div>
	<?php include 'templates/footer.php' ?>
</body>
<script>
	function addYears(date, years) {
		date.setFullYear(date.getFullYear() + years);
		return date;
	}
	function termCalculator() {
		let date = new Date(document.getElementById("start").value);
		let newDate = addYears(date, 3);
		document.getElementById("end").value = newDate.getFullYear() + "-" + ("0"+(newDate.getMonth()+1)).slice(-2) + "-" + ("0" + newDate.getDate()).slice(-2);
		document.getElementById("end").innerText = newDate.getFullYear() + "-" + ("0"+(newDate.getMonth()+1)).slice(-2) + "-" + ("0" + newDate.getDate()).slice(-2);
	}
	function addTermCalculator() {
		let date = new Date(document.getElementById("addStart").value);
		let newDate = addYears(date, 3);
		document.getElementById("addEnd").value = newDate.getFullYear() + "-" + ("0"+(newDate.getMonth()+1)).slice(-2) + "-" + ("0" + newDate.getDate()).slice(-2);
		document.getElementById("addEnd").innerText = newDate.getFullYear() + "-" + ("0"+(newDate.getMonth()+1)).slice(-2) + "-" + ("0" + newDate.getDate()).slice(-2);
	}
</script>
</html>