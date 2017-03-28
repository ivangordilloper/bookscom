<html>
<head>
   <title> INICIAR SESIÓN </title>
</head>
<body>
<div id="inicio">

    <article id="main">
        <header>
            <h2>Iniciar Sesión </h2>
        </header>
        <section class="wrapper style5">
            <div class="inner">


                <section>
                    <div class="box">

                        <h4>Iniciar Sesión </h4>

                        <div id="login">
                        <form action="/login/authenticate" method="POST" id="loginForm" autocomplete="off">

                            <div class="row uniform">

                                <div class="12u 12u$(xsmall)">
                                    <input type="text" name="username" id="username" required value="" placeholder="Nombre de Usuario" />
                                </div>
                                <div class="12u 12u$(xsmall)">
                                    <input type="password" name="password" id="password" required value="" placeholder="Contraseña" />
                                </div>
                                <p id="remember_me_holder">
                                    <input type="checkbox" class="chk" name="remember-me" id="remember_me" />
                                    <label for="remember_me">Recuérdame</label>
                                </p>

                                <div class="12u$">
                                    <ul class="actions">
                                        <li ><input type="submit" id="submit" value="Iniciar Sesión " class="special" onclick="redirect()"/></li>
                                        <li><a href="resetpass.html">Has olvidado tu contraseña</a></li>
                                    </ul>
                                </div>
                            </div>
                        </form>
                        </div>
                        <script>
                            (function() {
                                document.forms['loginForm'].elements['username'].focus();
                            })();
                        </script>

                    </div>

                </section>

            </div>
        </section>
    </article>
<!-- Scripts -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.scrollex.min.js"></script>
<script src="assets/js/jquery.scrolly.min.js"></script>
<script src="assets/js/skel.min.js"></script>
<script src="assets/js/util.js"></script>
<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
<script src="assets/js/main.js"></script>
<script type="text/javascript">
    function redirect() {
        var p1 = document.getElementById("email").value;
        var p2 = document.getElementById("pass").value;
        if(p1=="raid@raid.com")
            window.open('usuario.html','_blank');
        else if(p1=="admin@admin.com")
        window.open('administrador.html','_blank');
        else
        window.open('login.html','_blank');
    }
</script>
</div>
</body>
</html>