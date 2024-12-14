<?php 

$producto = array();

if(isset($_GET["id"])){
 $id = $_GET["id"];
//todo bien, puedo seguir con el proceso!
if(!empty($id)){
//todo bien, puedo seguir con el proceso!
$conexion = mysqli_connect("127.0.0.1:3306", "root", "", "proyecto_backend");

$query = "SELECT * FROM productos WHERE id_producto = ".$id;
$resultado = mysqli_query($conexion, $query);

$producto = mysqli_fetch_assoc($resultado);

mysqli_close($conexion);
}
}
?>