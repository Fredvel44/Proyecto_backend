<?php 

$nombre_producto = $_POST["nombre_producto"];
$precio_producto = $_POST["precio_producto"];
$stock_producto = $_POST["stock_producto"];

//TRABAJO CON IMAGENES
$imagen_producto = $_FILES["imagen_producto"];

//OBTENER LA EXTENSION DEL ARCHIVO (IMAGEN)
//$type = pathinfo($_FILES["imagen_producto"]["name"], PATHINFO_EXTENSION);
$type = pathinfo($imagen_producto["name"], PATHINFO_EXTENSION);

//OBTENER EL CONTENIDO DEL ARCHIVO (IMAGEN)
$data = file_get_contents($imagen_producto["tmp_name"]);

//GENERAR EL CODIGO BASE64 PARA PODER ALMACENARLO
$imagen_base64 = "data:image/".$type.";base64,".base64_encode($data);

$conexion = mysqli_connect("127.0.0.1:3306", "root", "", "proyecto_backend");

$query = "INSERT INTO productos (nombre_producto, precio_producto, stock_producto, imagen_producto) 
VALUES ('".$nombre_producto."', '".$precio_producto."', '".$stock_producto."', '".$imagen_base64."')";
$resultado = mysqli_query($conexion, $query);

if($resultado){
    //salio todo bien
    header('Location: lista_producto.php');
}
else{
    //salio todo mal
}

mysqli_close($conexion);

?>