<?php 
	include '../server/server.php';

	if(!isset($_SESSION['username']) && $_SESSION['role']!='administrator'){
		if (isset($_SERVER["HTTP_REFERER"])) {
			header("Location: " . $_SERVER["HTTP_REFERER"]);
		}
	}
	
	$id 	= $conn->real_escape_string($_GET['id']);
	$name 	= $conn->real_escape_string($_GET['name']);

	if($id != ''){
		$query 		= "DELETE FROM tblpurok WHERE id = '$id'";
		
		$result 	= $conn->query($query);

		$resultQuery 	= "UPDATE tblresident SET purok = '' WHERE purok = '$name'";
		$result 	= $conn->query($resultQuery);
		
		if($result === true){
            $_SESSION['message'] = 'Purok has been removed!';
            $_SESSION['success'] = 'danger';
            
        }else{
            $_SESSION['message'] = 'Something went wrong!';
            $_SESSION['success'] = 'danger';
        }
	}else{

		$_SESSION['message'] = 'Missing Purok ID!';
		$_SESSION['success'] = 'danger';
	}

	header("Location: ../purok.php");
	$conn->close();

