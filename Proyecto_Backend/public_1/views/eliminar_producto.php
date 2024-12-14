<?php 

if(isset($_GET["id"])){
    echo "Salio todo bien!";
    echo "<br>";
    $id_producto = $_GET["id"];
    if(!empty($id_producto)){
        echo "Salio otra vez todo bien!";
        echo "<br>";
        $conexion = mysqli_connect("127.0.0.1:3306", "root", "", "proyecto_backend");

        $query = "DELETE FROM productos WHERE id_producto =".$id_producto;
        $resultado = mysqli_query($conexion, $query);

        mysqli_close($conexion);

        if($resultado === true){
            echo "Salio todooooooooo bien!!! se elimino con exito!";
            echo "<br>";
            header('Location: lista_producto.php');
        }
        else{
            echo "El proceso salio mal!";
            echo "<br>";
        }
    }
    else{            
        echo "El proceso salio mal!";
        echo "<br>";
    }
}
else{
    echo "El proceso salio mal!";
    echo "<br>";
}


?>