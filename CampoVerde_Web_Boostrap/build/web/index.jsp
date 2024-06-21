<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/index.css" rel="stylesheet" type="text/css"/>
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
            <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    </head>
        


    <body>
        <header style="background-image: url(img/fondoLogin.jpg)">
            <section>
                <div class="top-header">
                    <a href="index.jsp"><img class="form-group mb-4" src="img/logo-text-green.png" alt="70" width="330"/></a>
                    <nav class="navbar">
                        <ul>
                            <li><a style="text-decoration: none; color: white;" href="index.jsp">Inicio</a></li>
                            <li><a style="text-decoration: none; color: white;" href="nosotros.jsp">Nosotros</a></li>
                            <li><a style="text-decoration: none; color: white;" href="controllerProducto?accion=Producto">Productos</a></li>
                            <li><a style="text-decoration: none; color: white;" href="contacto.jsp">Contacto</a></li>
                            <li><a style="text-decoration: none; color: white;" href="#">Blog</a></li>
                        </ul><br>
                        <div class="login-icon">
                            <a href="login.jsp"><i class="fas fa-user"></i></a>
                        </div>
                    </nav>
                </div>
            </section>
        </header>

        <section class="main-content1" style="background-position: center">
            <h1>Nuestros productos</h1>
            <div class="product">
                <img src="img/soja-920x550.jpg" alt="Producto Agrícola">
                <p>Nos dedicamos a la producción agropecuaria, y estamos comprometidos con la responsabilidad social y ambiental que aspira lograr la excelencia por medio de la innovación y la calidad de nuestros productos.</p>
            </div>
            <div class="product1">
                <img src="img/ternero-677x900.png" alt="Producto Ganadería">
                <p>Amor por la raza Nelore, pasión por la calidad y búsqueda permanente de la excelencia, es la trinidad de la Agropecuaria Campo Verde. Para obtener resultados óptimos nos enfocamos en el Manejo Adecuado, Genética y la Nutrición</p>
            </div>
        </section>

        <section class="main-content2" style="background-color: #ccc">
            <h2>Acerca de Nosotros</h2>
            <div class="video-player">
                <video width="320" height="240" controls>
                    <source src="img/Agropecuaria campo verde.mp4" type="video/mp4">
                </video>
                <div class="buttons">
                    <a href="nosotros.jsp"><button>Conoce más</button></a>
                </div>
            </div>
        </section>

        <section class="main-content3">
            <div class="producto">
                <h2>Nuestras Certificaciones</h2>
                <div class="images">
                    <img src="img/certificacion4.jpg" class="rounded float-start" alt="Imagen1">
                    <img src="img/certificacion5.jpg" class="rounded mx-auto d-block" alt="Imagen2">
                    <img src="img/certificacion6.jpg" class="rounded float-end" alt="Imagen3">
                </div>
                <div class="buttons">
                    <a href="nosotros.jsp"><button>Ver más</button></a>
                </div>
            </div>
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
