<html>
<head>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title> <g:layoutTitle/></title>
    <g:external dir="css" file="main.css"/>
    <g:external dir="css" file="style-user.css"/>

    <g:layoutHead />

</head>

<body class = "landing">
<!-- Page Wrapper -->
<div id="page-wrapper">
    <!-- Header -->
    <header id="header">
        <h1><a href="Home">BooksCom</a></h1>
        <nav id="nav">
            <ul>
                <li class="special">
                    <g:img dir="images" file="profile.png" alt="profile" style = "height: 31px;  width: auto; margin-bottom: -9px;"/>
                </li>
                <li class="special">
                    <a href="#menu" class="menuToggle"><span>Menú</span></a>
                    <div id="menu">
                        <ul>
                            <li><a href="/Inicio/Home">Inicio</a></li>
                            <li><a href="/Inicio/Registrar">Regístrate</a></li>
                            <li><a href="/Inicio/IniciarSesion">Iniciar Sesión </a></li>
                            <li><a href="/Inicio/Contacto">Contacto</a></li>
                            <li><a href="/Inicio/Nosotros">Nosotros</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </nav>
    </header>
    <g:layoutBody/>
<!-- Footer -->
<footer id="footer">
    <ul class="icons">
        <li><a href="#" class="icon fa-twitter"></a></li>
        <li><a href="https://www.facebook.com/BooksCom-227500564389966" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
        <li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
        <li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
        <li><a href="#" class="icon fa-envelope-o"><span class="label">Correo Electrónico</span></a></li>
    </ul>
    <ul class="copyright">
    </ul>
</footer>
</div>


<!-- Scripts -->
<script src="${resource(dir: '/assets/js/',file:"jquery-2.2.0.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrollex.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"jquery.scrolly.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"skel.min.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"util.js")}"></script>
<script src="${resource(dir: '/assets/js/',file:"main.js")}"></script>

</body>


</html>