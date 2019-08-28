<?PHP
if (!isset($_SERVER['PHP_AUTH_USER'])) { 
header('WWW-Authenticate: Basic realm="JDIH"'); 
header('HTTP/1.0 401 Unauthorized'); 
 echo 'Fail To Authenticating'; 
exit; 
} else {
if ($_SERVER['PHP_AUTH_USER'] == 'bagianhukumsetdatjt@gmail.com' && md5($_SERVER['PHP_AUTH_PW']) == 'be5cb2877c4bab6d71771d44c8f0ceea') { 
$DBHOST= "localhost" ;
$DBUSER= "c0jdih" ;
$DBPASSWORD= "jyQdW8@2" ;
$DBNAME= "c0jdih";
$con=mysqli_connect($DBHOST,$DBUSER,$DBPASSWORD,$DBNAME);
$query='select * from produkhukum left join katprodukhukum on katprodukhukum.id_katprodukhukum = produkhukum.id_katprodukhukum';
$res=mysqli_query($con,$query);
$response=array();
$date = new DateTime();
while($result=mysqli_fetch_array($res)){
if ($result['metode_link']==1) {
	if ($result['tanggal_modif']=='2018-05-15') {
		$links="http://jdih.tanjabtimkab.go.id/file/".$result['nama_file'];   
	} else {
		$links="http://jdih.tanjabtimkab.go.id/file/".$photopath."/".$result['nama_file'];  
	} 
} else { 
	$links=$result['link_file']; 
} 

$row_array['tanggalData']=$result['tanggal_modif'];
$row_array['idData']=$result['id_produkhukum'];
$row_array['jenis']=$result['nama_katprodukhukum'];
$row_array['urlDownload']=$links;
$row_array['urlDetailPeraturan']="http://jdih.tanjabtimkab.go.id/peraturan/detail/".$result['id_produkhukum'];
$row_array['tanggal']=$date->format('Y-m-d'); 
$row_array['tahun']=$result['tahun']; 
$row_array['operasi']=4; 
$row_array['noPeraturan']=$result['nomor']; 
$row_array['judul']=$result['tentang']; 
$row_array['fileDownload']=$result[''];
$row_array['hasilUjiMateriMk']=$result['']; 
$row_array['abstrak']=$result['abstrak'];
$row_array['katalog']=$result[''];
$row_array['status']=$result['status'];
$row_array['idkategori']=11386; 
$row_array['display']=1; 
array_push($response,$row_array);} 
header('Content-Type: application/json');
echo json_encode($response);}else{ 
header('WWW-Authenticate: Basic realm="JDIH"'); 
header('HTTP/1.0 401 Unauthorized'); 
 echo 'Fail To Authenticating'; 
exit; 
} } 
?>