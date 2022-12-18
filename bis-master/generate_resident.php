<?php include 'server/server.php' ?>
<?php 
    $id = $_GET['id'];
	$query = "SELECT * FROM tblresident WHERE id='$id'";
    $result = $conn->query($query);
    $resident = $result->fetch_assoc();
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<?php include 'templates/header.php' ?>
	<title>Generate Resident Profile -  Barangay Management System</title>
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
				<div class="panel-header bg-primary-gradient">
					<div class="page-inner">
						<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
							<div>
								<h2 class="text-white fw-bold">Generate Resident Profile</h2>
							</div>
						</div>
					</div>
				</div>
				<div class="page-inner">
					<div class="row mt--2">
						<div class="col-md-12">

                            <?php if(isset($_SESSION['message'])): ?>
                                <div class="alert alert-<?php echo $_SESSION['success']; ?> <?= $_SESSION['success']=='danger' ? 'bg-danger text-light' : null ?>" role="alert">
                                    <?php echo $_SESSION['message']; ?>
                                </div>
                            <?php unset($_SESSION['message']); ?>
                            <?php endif ?>

                            <div class="card">
								<div class="card-header">
									<div class="card-head-row">
										<div class="card-title">Resident Profile</div>
										<div class="card-tools">
											<button class="btn btn-info btn-border btn-round btn-sm" onclick="printDiv('printThis')">
												<i class="fa fa-print"></i>
												Print Report
											</button>
										</div>
									</div>
								</div>
								<div class="card-body m-5" id="printThis">
                                    <div class="d-flex flex-wrap justify-content-center" style="border-bottom:1px solid red">
										<div class="text-center">
                                            <h3 class="mb-0">Republic of the Philippines</h3>
                                            <h3 class="mb-0">Province of <?= ucwords($province) ?></h3>
											<h3 class="mb-0"><?= ucwords($town) ?></h3>
											<h1 class="fw-bold mb-0"><?= ucwords($brgy) ?></i></h1>
                                            <p><i>Mobile No. <?= $number ?></i></p>
                                            <h1 class="fw-bold mb-3">Resident Profile</h2>
										</div>
									</div>
                                    <div class="row mt-2">
                                        <div class="col-md-3">
                                            <div class="text-center p-1" style="border:1px solid red">
                                                <img src="<?= preg_match('/data:image/i', $resident['picture']) ? $resident['picture'] : 'assets/uploads/resident_profile/'.$resident['picture'] ?>" alt="Resident Profile" class="img-fluid">
                                            </div>
                                        </div>
                                        <div class="col-md-9">
	                                        <table style="width: 100%;">
			                                    <tbody>
				                                    <tr>
				                                        <td style="font-size:20px">National ID:</td>
				                                        <td style="font-size:20px; font-weight: 700;"><?= $resident['national_id'] ?></td>
			                                        </tr>
			                                        <tr>
				                                        <td style="font-size:20px">Name:</td>
				                                        <td style="font-size:20px; font-weight: 700;"><?= $resident['firstname'] . ", " . $resident['middlename'] . ' ' . $resident['lastname'] ?></td>
			                                        </tr>
			                                        <tr>
				                                        <td style="font-size:20px">Status:</td>
				                                        <td style="font-size:20px; font-weight: 700;"><?= $resident['resident_type']==1 ? 'Alive' : 'Deceased' ?></td>
			                                        </tr>
			                                        <tr>
				                                        <td style="font-size:20px">Nickname:</td>
				                                        <td style="font-size:20px; font-weight: 700;"><?= $resident['alias'] ?></td>
			                                        </tr>
			                                        <tr>
				                                        <td style="font-size:20px">Birthdate:</td>
				                                        <td style="font-size:20px; font-weight: 700;"><?= date('F d, Y', strtotime($resident['birthdate'])) ?></td>
			                                        </tr>
			                                        <tr>
				                                        <td style="font-size:20px">Age:</td>
				                                        <td style="font-size:20px; font-weight: 700;"><?= $resident['age'] . " yrs. old" ?></td>
				                                    </tr>
			                                        <tr>
				                                        <td style="font-size:20px">Civil Status:</td>
				                                        <td style="font-size:20px; font-weight: 700;"><?= $resident['civilstatus'] ?></td>
				                                    </tr>
			                                        <tr>
				                                        <td style="font-size:20px">Gender:</td>
				                                        <td style="font-size:20px; font-weight: 700;"><?= $resident['gender'] ?></td>
				                                    </tr>
			                                        <tr>
				                                        <td style="font-size:20px">Purok:</td>
				                                        <td style="font-size:20px; font-weight: 700;"><?= $resident['purok'] ?></td>
				                                    </tr>
			                                        <tr>
				                                        <td style="font-size:20px">Identified as:</td>
				                                        <td style="font-size:20px; font-weight: 700;"><?= $resident['identified_as'] ?></td>
				                                    </tr>
			                                        <tr>
				                                        <td style="font-size:20px">Phone number:</td>
				                                        <td style="font-size:20px; font-weight: 700;"><?= $resident['phone'] ?></td>
				                                    </tr>
			                                        <tr>
				                                        <td style="font-size:20px">Email Address:</td>
				                                        <td style="font-size:20px; font-weight: 700;"><?= $resident['email'] ?></td>
				                                    </tr>
			                                        <tr>
				                                        <td style="font-size:20px">Occupation:</td>
				                                        <td style="font-size:20px; font-weight: 700;"><?= $resident['occupation'] ?></td>
				                                    </tr>
			                                        <tr>
				                                        <td style="font-size:20px">Address:</td>
				                                        <td style="font-size:20px; font-weight: 700;"><?= ucwords(trim($resident['address'])) ?></td>
				                                    </tr>
			                                        <tr>
				                                        <td style="font-size:20px">Remarks:</td>
				                                        <td style="font-size:20px; font-weight: 700;"><?= ucwords(trim($resident['remarks'])) ?></td>
				                                    </tr>
			                                    </tbody>
	                                        </table>
                                        </div>
                                    </div>
                                            
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Main Footer -->
			<?php include 'templates/main-footer.php' ?>
			<!-- End Main Footer -->
			
		</div>
		
	</div>
	<?php include 'templates/footer.php' ?>
    <script>
            function printDiv(divName) {
            var printContents = document.getElementById(divName).innerHTML;
            var originalContents = document.body.innerHTML;

            document.body.innerHTML = printContents;

            window.print();

            document.body.innerHTML = originalContents;
        }
    </script>
</body>
</html>