<!doctype html>
<html lang="en">
  <head>
  	<title>Arte y Pan</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="../css/style.css">
    <link rel="icon" href="../img/pan.png" type="Arte_y_pan">
    </head>
	<body>
    <!--Header-->
                <header>
                    <div>
                        <h1>Arte y pan</h1>
                        <h2>Panaderia artesanal</h2>
                    </div>
                </header>

    <!--navbar-->
                <nav class="navbar">
                    <a href="../../index_p.html">Salir</a>
					<a href="../views/form_agregar_producto.html">Agregar</a>
                </nav>
	<!--parte principal-->
	<div class="Principal">
		<div class="container">
			<div class="row justify-content-center">
					<div class="table-wrap">
						<table class="table">
						  <thead class="thead-primary">
						    <tr>								
						    	<th>&nbsp;</th>
						    	<th>Producto</th>
						        <th>Precio</th>
						        <th>Stock</th>      
					            <th>&nbsp;</th>
								<th>&nbsp;</th>
						    </tr>
						  </thead>
						  <tbody>

                            <?php

							//Conexion a la base de datos//
							$conexion= mysqli_connect("127.0.0.1:3306","root","","proyecto_backend");
							$query="SELECT * FROM productos";
							$resultado= mysqli_query($conexion, $query);

							while($unafila=mysqli_fetch_assoc($resultado)){
								echo '<tr class="alert" role="alert">
							
							<td>
								<img src="'.$unafila["imagen_producto"].'">
								
							</td>
						  <td>
							  <div class="email">
								  <span>'.$unafila["nombre_producto"].'</span>
								  <span></span>
							  </div>
						  </td>
						  	<td>'.$unafila["precio_producto"].'</td>
						  	<td>'.$unafila["stock_producto"].'</td>
						  <td>
							  <a href= "../views/eliminar_producto.php?id='.$unafila["id_producto"].'" class="close" data-dismiss="alert" aria-label="Close">
							<span aria-hidden="true"><i class="fa fa-close"></i></span>
						</td>
						</tr>';
					}

							//Desconexion de la base de datos
							mysqli_close($conexion);
                            ?>					    
						  </tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</body>
	
 <script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>
</html>