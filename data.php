<?php
// Include confi.php
include_once('config.php');
include_once('JWT/jwt.php');

$token = array();
$token['id'] = '5';
echo JWT::encode($token, 'cobaPassword');

if($_SERVER['REQUEST_METHOD'] == "POST"){
	// Get data
	$name = isset($_POST['name']) ? mysql_real_escape_string($_POST['name']) : "";
	$email = isset($_POST['email']) ? mysql_real_escape_string($_POST['email']) : "";
	$password = isset($_POST['pwd']) ? mysql_real_escape_string($_POST['pwd']) : "";
	$status = isset($_POST['status']) ? mysql_real_escape_string($_POST['status']) : "";

	// Insert data into data base
	$sql = "INSERT INTO `tuts_rest`.`users` (`ID`, `name`, `email`, `password`, `status`) VALUES (NULL, '$name', '$email', '$password', '$status');";
	$qur = mysql_query($sql);
	if($qur){
		$json = array("status" => 1, "msg" => "Done User added!");
	}else{
		$json = array("status" => 0, "msg" => "Error adding user!");
	}
}elseif($_SERVER['REQUEST_METHOD'] == "GET"){
	if(isset($_GET['tanggalUpdate'])){
	$result = $conn->query("SELECT * FROM layanan_kesehatan WHERE tanggal_update LIKE '%$_GET[tanggalUpdate]%'") or die($conn->error);
	$res = $result->fetch_assoc();
	$json = array("layanan_kesehatan" => array($res));
	}
}else{
	$json = array("status" => 0, "msg" => "Request method not accepted");
}

$conn->close();

/* Output header */
	header('Content-type: application/json');
	echo json_encode($json);