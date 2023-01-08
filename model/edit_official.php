<?php 
	include '../server/server.php';

	if(!isset($_SESSION['username'])){
		if (isset($_SERVER["HTTP_REFERER"])) {
			header("Location: " . $_SERVER["HTTP_REFERER"]);
		}
	}
	
    $id 	= $conn->real_escape_string($_POST['id']);
	$name 	= $conn->real_escape_string($_POST['name']) . " " . $conn->real_escape_string($_POST['last']) . " " . $conn->real_escape_string($_POST['middleName']);
	$fname 	= $conn->real_escape_string($_POST['name']);
	$lname 	= $conn->real_escape_string($_POST['last']);
	$mname 	= $conn->real_escape_string($_POST['middleName']);
	$chair 	= $conn->real_escape_string($_POST['chair']);
    $pos 	= $conn->real_escape_string($_POST['position']);
	$start 	= $conn->real_escape_string($_POST['start']);
    $end 	= $conn->real_escape_string($_POST['end']);
	$status = $conn->real_escape_string($_POST['status']);

	if(!empty($id)){

		$query 		= "UPDATE tblofficials SET `name`='$name', `chairmanship`='$chair', `position`='$pos', `firstName`='$fname', `lastName`='$lname', `middleName`='$mname', `termstart`='$start', `termend`='$end', `status`='$status' WHERE id=$id;";
		$result 	= $conn->query($query);

		if($result === true){
            
			$_SESSION['message'] = 'Brgy Official has been updated!';
			$_SESSION['success'] = 'success';

		}else{

			$_SESSION['message'] = $result;
			$_SESSION['success'] = 'danger';
		}

	}else{
		$_SESSION['message'] = 'No Brgy Official ID found!';
		$_SESSION['success'] = 'danger';
	}

    header("Location: ../officials.php");

	$conn->close();