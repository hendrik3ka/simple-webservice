<?php
include_once('JWT/jwt.php');
$token = array();
$token['id'] = '5';
$token = JWT::encode($token, 'cobaPassword');

?>
<form action="" method="POST">
	<input type="hidden" name="token" value="<?php echo $token; ?>">
	<input type="text" name="tahun" >
	<input type="text" name="bulan" >
	<input type="text" name="kelas" >
	<input type="text" name="jumlah_pasien" >
	<input type="text" name="jumlah_hari" >
	<input type="submit" name="submit" value="Submit" >
</form>