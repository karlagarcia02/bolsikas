<?php
mysql_connect("localhost","root","");
mysql_select_db("tiendavirtual");
mysql_query("SET NAMES 'UTF8'");  

$conexion = mysqli_connect("localhost","root","","tiendavirtual");   
mysql_query("SET NAMES 'UTF8'");

  if (!$conexion) {
die("Fallo en la Conexión: " . mysqli_connect_error());
}
echo "Conexión exitosa";


 //if($conexion){
 //	echo "conexion exitosa";
 //}
 //else{
 //	echo"conexion no exitosa";
 //}

?>