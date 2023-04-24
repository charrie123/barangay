<?php include 'server/server.php' ?>
<?php 
	$sql = "SELECT * FROM tblpayments ORDER BY `date` DESC";
    $result = $conn->query($sql);

    $revenue = array();
	while($row = $result->fetch_assoc()){
		$revenue[] = $row; 
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<?php include 'templates/header.php' ?>
	<link rel="stylesheet" href="assets/js/plugin/dataTables.dateTime.min.css">
	<link rel="stylesheet" href="assets/js/plugin/datatables/Buttons-1.6.1/css/buttons.dataTables.min.css">
	<title class="d-flex justify-content-center">Barangay Revenues -  Barangay Management System</title>
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
								<h2 class="text-white fw-bold" style="font-style: Century-gothic; color:white ;  text-shadow: 2px 2px 5px #354259;">BARANGAY REVENUES</h2>
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
										<div class="card-title">Revenue Informations</div>
									</div>
								</div>
								<div class="card-body">
									<div class="row mb-3 w-50">
										<div class="col">
											<label>Minimum Date</label>
											<input type="text" class="form-control" placeholder="Enter date" id="min">
										</div>
										<div class="col">
											<label>Maximum Date</label>
											<input type="text" class="form-control" placeholder="Enter date" id="max">
										</div>
									</div>
									<div class="table-responsive">
										<table id="revenuetable" class="display table table-striped">
											<thead>
												<tr>
													<th scope="col">Date</th>
													<th scope="col">Recipient</th>
													<th scope="col">Details</th>
													<th scope="col">Amount</th>
													<th scope="col">Username</th>
												</tr>
											</thead>
											<tbody>
												<?php if(!empty($revenue)):
											        $no=1;
											        $price=0;
											        foreach($revenue as $row):
														$date=date_create($row['date']);
														$price+=$row['amounts'];
												?>
													<tr>
														<td><?= date_format($date,"M d, Y") ?></td>
														<td><?= $row['name'] ?></td>
														<td><?= $row['details'] ?></td>
														<td>P <?= number_format($row['amounts'],2) ?></td>
														<td><?= $row['user'] ?></td>
													</tr>
													<?php $no++; endforeach ?>
												<?php endif ?>
											</tbody>
											<tfoot>
												<tr>
                                                    <th scope="col">TOTAL:</th>
													<th scope="col"></th>
													<th scope="col"></th>
													<th scope="col" id="total">P <?= number_format($price,2) ?></th>
													<th scope="col"></th>
												</tr>
											</tfoot>
										</table>
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
    <script src="assets/js/plugin/datatables/datatables.min.js"></script>
	<script src="assets/js/plugin/moment/moment.min.js"></script>
	<script src="assets/js/plugin/dataTables.dateTime.min.js"></script>
	<script src="assets/js/plugin/datatables/Buttons-1.6.1/js/dataTables.buttons.min.js"></script>
	<script src="assets/js/plugin/datatables/Buttons-1.6.1/js/buttons.print.min.js"></script>
    <script>
		var minDate, maxDate, total = 0;
 
		// Custom filtering function which will search data in column four between two values
		$.fn.dataTable.ext.search.push(
			function( settings, data, dataIndex ) {
				var min = minDate.val();
				var max = maxDate.val();
				var date = new Date( data[0] );
				if (min) {
					min = new Date(min.toUTCString('en-US', {timeZone: 'UTC',}).toString().slice(0, 16));
				}
				if (max) {
					max = new Date(max.toUTCString('en-US', {timeZone: 'UTC',}).toString().slice(0, 16));
				}

				if (
					( min === null && max === null ) ||
					( min === null && date <= max ) ||
					( min <= date   && max === null ) ||
					( min <= date   && date <= max )
				) {
					total += parseInt(data[3].slice(2).replace(/,/g, ''), 10);
					document.getElementById("total").innerHTML = "P " + total.toLocaleString("en-US", {minimumFractionDigits: 2, maximumFractionDigits: 2});
					return true;
				}
				return false;
			}
		);
        $(document).ready(function() {
			 // Create date inputs
			 minDate = new DateTime($('#min'), {
				format: 'MMMM Do YYYY',
			});
			maxDate = new DateTime($('#max'), {
				format: 'MMMM Do YYYY'
			});
// 			maxDate->setTime(0, 0, 0);

            var table = $('#revenuetable').DataTable({
				"order": [[ 0, "desc" ]],
				dom: 'Bfrtip',
				buttons: [
                {
                    extend: 'print',
                    className: 'green glyphicon glyphicon-print',
                    title: `Report ` +  ((new Date).getUTCMonth() + 1) + "/" + (new Date).getUTCDate() + "/" + (new Date).getUTCFullYear(),
                    messageTop: `
	                            <div class="container">
	                              <div class="row">
									<div class="col-sm-2">
			                            <div class="d-flex justify-content-center">
			                                <img src="assets/uploads/<?= $brgy_logo ?>" style="margin-bottom: 40px; margin-left: 55px;" width="200" />
			                            </div>
									</div>
									<div class="col-sm">
			                            <div class="flex">
			                                <div class="text-center" style="margin-left: 40px;">
			                                    <h3 class="mb-0">Republic of the Philippines</h3>
			                                    <h3 class="mb-0">Province of <?= ucwords($province) ?></h3>
			                                    <h3 class="mb-0"><?= ucwords($town) ?></h3>
			                                    <h1 class="fw-bold mb-0"><?= ucwords($brgy) ?></i></h2>
			                                    <p><i>Mobile No. <?= $number ?></i></p>
			                                    <p><i>fbaccount: barangay_bonbon@yahoo.com</i></p>
			                                </div>
			                            </div>
									</div>
								</div>
							</div>`,
                    text: 'Print',
                    footer: true,
                    exportOptions: {
                        modifier: {
                            page: 'current'
                        }
                    }
                }
				],
			});

			// Refilter the table
			$('#min, #max').on('change', function () {
				total = 0;
				document.getElementById("total").innerHTML = "P 0.00";
				table.draw();
			});
        });
    </script>
</body>
</html>