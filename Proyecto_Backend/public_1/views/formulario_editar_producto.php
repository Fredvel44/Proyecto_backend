

            <form action="editar_producto.php" method="post" enctype="multipart/form-data">
            <input type="hidden" id="id_producto" name="id_producto" value="<?php echo ((isset($producto["id_producto"])) ? ($producto["id_producto"]) : ("")) ?>">
            <label>Nombre:</label><input type="text" value="<?php echo ((isset($producto["nombre_producto"])) ? ($producto["nombre_producto"]) : ("")) ?>" id="nombre_producto" name="nombre_producto" autocomplete="off">
            <br>
            <label>Precio:</label><input type="text" value="<?php echo ((isset($producto["precio_producto"])) ? ($producto["precio_producto"]) : ("")) ?>" id="precio_producto" name="precio_producto" autocomplete="off">
            <br>
            <label>Stock:</label><input type="text" value="<?php echo ((isset($producto["stock_producto"])) ? ($producto["stock_producto"]) : ("")) ?>" id="stock_producto" name="stock_producto" autocomplete="off">
            <br>
            <img style="max-width: 150px;" class="imagen-preview" src="<?php echo ((isset($producto["imagen_producto"])) ? ($producto["imagen_producto"]) : ("")) ?>">
            <br>
            <label>Imagen:</label><input type="file" id="imagen_producto" name="imagen_producto">
            <br>
            <button>Editar</button><a href="./lista_producto.php">Volver</a>
        </form>
