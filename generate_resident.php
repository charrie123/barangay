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
                                        <table class="w-100 h2 font-weight-boldg">
                                            <tr>
                                                <td>National ID:</td>
                                                <td><?= $resident['national_id'] ?></td>
                                            </tr>
                                            <tr>
                                                <td>Name:</td>
                                                <td><?= ucwords($resident['firstname'].' '.$resident['middlename'].' '.$resident['lastname']) ?></td>
                                            </tr>
                                            <tr>
                                                <td>Status:</td>
                                                <td><?= $resident['resident_type']==1 ? 'Alive' : 'Deceased' ?></td>
                                            </tr>
                                            <tr>
                                                <td>Alias:</td>
                                                <td><?= $resident['alias'] ?></td>
                                            </tr>
                                            <tr>
                                                <td>Birthdate:</td>
                                                <td><?= date('F d, Y', strtotime($resident['birthdate'])) ?></td>
                                            </tr>
                                            <tr>
                                                <td>Age:</td>
                                                <td><?= $resident['age'] ?></td>
                                            </tr>
                                            <tr>
                                                <td>Civil Status:</td>
                                                <td><?= $resident['civilstatus'] ?></td>
                                            </tr>
                                            <tr>
                                                <td>Gender:</td>
                                                <td><?= $resident['gender'] ?></td>
                                            </tr>
                                            <tr>
                                                <td>Purok:</td>
                                                <td><?= $resident['purok'] ?></td>
                                            </tr>
                                            <tr>
                                                <td>Voters Status:</td>
                                                <td><?= $resident['voterstatus'] ?></td>
                                            </tr>
                                            <tr>
                                                <td>Identified as:</td>
                                                <td><?= $resident['identified_as'] === "Positive" ? "Registered" : "Non-registered" ?></td>
                                            </tr>
                                            <tr>
                                                <td>Phone number:</td>
                                                <td>+63 <?= $resident['phone'] ?></td>
                                            </tr>
                                            <tr>
                                                <td>Email Address:</td>
                                                <td><?= $resident['email'] ?></td>
                                            </tr>
                                            <tr>
                                                <td>Occupation:</td>
                                                <td><?= ucwords(trim($resident['occupation'] ? $resident['occupation'] : "")) ?></td>
                                            </tr>
                                            <tr>
                                                <td>Address:</td>
                                                <td>+63 <?= ucwords(trim($resident['address'] ? $resident['address'] : "")) ?></td>
                                            </tr>
                                            <tr>
                                                <td>Remarks:</td>
                                                <td><?= ucwords(trim($resident['remarks'] ? $resident['remarks'] : "")) ?></td>
                                            </tr>
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