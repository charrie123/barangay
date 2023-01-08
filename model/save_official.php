<?php 
	include('../server/server.php');

    if(!isset($_SESSION['username'])){
        if (isset($_SERVER["HTTP_REFERER"])) {
            header("Location: " . $_SERVER["HTTP_REFERER"]);
        }
    }
    
	$name 	= $conn->real_escape_string($_POST['firstName'] . " " . $_POST['middleName'] . " " . $_POST['lastName']);
	$fname 	= $conn->real_escape_string($_POST['firstName']);
    $lname 	= $conn->real_escape_string($_POST['lastName']);
    $mname 	= $conn->real_escape_string($_POST['middleName']);
	$chair 	= $conn->real_escape_string($_POST['chair']);
    $pos 	= $conn->real_escape_string($_POST['position']);
	$start 	= $conn->real_escape_string($_POST['start']);
    $end 	= $conn->real_escape_string($_POST['addEnd']);
	$status 	= $conn->real_escape_string($_POST['status']);

    if(!empty($name) && !empty($chair) && !empty($pos) && !empty($start) && !empty($end) && !empty($status)){

        $insert  = "INSERT INTO tblofficials (`name`, `chairmanship`,`firstName`, `middleName`, `lastName`, `position`, termstart, termend, `status`) VALUES ('$name', '$chair', '$fname', '$mname', '$lname', '$pos', '$start','$end', '$status')";
        $result  = $conn->query($insert);

        if($result === true){
            $_SESSION['message'] = 'Official added!';
            $_SESSION['success'] = 'success';

        }else{
            $_SESSION['message'] = 'Something went wrong!';
            $_SESSION['success'] = 'danger';
        }

    }else{

        $_SESSION['message'] = 'Please fill up the form completely!';
        $_SESSION['success'] = 'danger';
    }

    header("Location: ../officials.php");

	$conn->close();