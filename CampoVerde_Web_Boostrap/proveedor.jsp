<%-- 
    Document   : proveedor
    Created on : 18 may. 2024, 16:48:58
    Author     : alons
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Campo Verde</title>
        <link href="css/index.css" rel="stylesheet" type="text/css" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
              integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="icon" href="img/logo-icono.png" type="image/x-icon">
    </head>

    <body>
        <header>
            <section>
                <div class="top-header">
                    <a href="index.jsp"><img src="img/logo.jpg" alt="Campo Verde"></a>
                    <nav class="navbar">
                        <ul>
                            <li><a href="index.jsp">Inicio</a></li>
                            <li><a href="nosotros.jsp">Nosotros</a></li>
                            <li><a href="productos.jsp">Productos</a></li>
                            <li><a href="contacto.jsp">Contacto</a></li>
                            <li><a href="vistaForo.jsp">Foro</a></li>
                        </ul><br>
                        <div class="login-icon">
                            <a href="login.jsp"><i class="fas fa-user"></i></a>
                        </div>
                    </nav>
                </div>
            </section>
        </header>

        <section class="main-content">
            <h1>Trabaja con Nosotros​​</h1>

            <div class="supplier">
                <img src="img/certificacion1.png" alt="Imagen contrato">
            </div>

            <div>
                <h2>¿Cómo ser proveedor o contratista de Campo Verde?</h2>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore, minima quisquam accusantium suscipit
                    voluptatem illo rem aspernatur quibusdam optio eum commodi. Saepe beatae magni officiis dolorum.
                    Optio maiores rem consequuntur.</p>
            </div>
        </section>

        <section class="main-content">
            <h2>Envianos tus datos</h2>
            <form action="registroProveedor" method="post">

                <label for="nombre">Nombres y Apellidos:</label>
                <input type="text" id="nombre" name="nombre" required>

                <label for="nombreEmpresa">Nombre de tu Empresa:</label>
                <input type="text" id="nombreEmpresa" name="nombreEmpresa" required>

                <label for="ruc">RUC:</label>
                <input type="text" id="ruc" name="ruc" required pattern="\d{11}" title="El RUC debe contener 11 dígitos">

                <label for="telefono">Telefono:</label>
                <input type="tel" id="telefono" name="telefono" required pattern="\d{9}" title="El teléfono debe contener 9 dígitos">

                <button type="submit">Enviar solicitud</button>
            </form>
        </section>
        <section>


        </section>

        <footer>
            <h2>Campo Verde</h2>
            <p>Ubicación</p>
            <nav class="navbar navbar-expand-lg">
                <ul>
                    <li><a href="index.jsp">Inicio</a></li>
                    <li><a href="nosotros.jsp">Nosotros</a></li>
                    <li><a href="productos.jsp">Productos</a></li>
                    <li><a href="contacto.jsp">Contacto</a></li>
                    <li><a href="#">Blog</a></li>
                </ul>
                <div class="social-media">
                    <a href="https://www.facebook.com/" target="_blank"><i class="fa-brands fa-facebook"></i></a>
                    <a href="Twitter.com" target="_blank"><i class="fa-brands fa-twitter"></i></a>
                    <a href="https://www.instagram.com/" target="_blank"><i class="fa-brands fa-instagram"></i></a>
                    <a href="https://www.tiktok.com/explore" target="_blank"><i class="fa-brands fa-tiktok"></i></a>
                </div>
            </nav>
            <p>Todos los derechos reservados 2024</p>
        </footer>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
                integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
                integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V"
        crossorigin="anonymous"></script>
    </body>

</html>