<html>
<head>
    <title> REGÍSTRATE </title>
    <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src='https://www.google.com/recaptcha/api.js'></script>
    <g:external dir="css" file="main.css"/>
</head>

<body>
<div id="books">
    <!-- Main -->
    <article id="main">
        <header>
            <h2>Regístrate</h2>
        </header>
        <section class="wrapper style5">
            <div class="inner">


                <section>
                    <div class="box">

                        <h4>Regístrate</h4>
                        <g:form action="crear" method="post">

                            <div class="row uniform">
                                <div class="12u 12u$(xsmall)">
                                    <g:field type="text" name="nombre" id="nombre" value=""  placeholder="Nombre(s)" />
                                </div>
                                <div class="6u 12u$(xsmall)">
                                    <g:field type="text" name="apellidoP" id="apellidoP" value=""  placeholder="Apellido Paterno" />
                                </div>
                                <div class="6u 12u$(xsmall)">
                                    <g:field type="text" name="apellidoM" id="apellidoM" value=""  placeholder="Apellido Materno" />
                                </div>
                                <div class="12u 12u$(xsmall)">
                                    <g:field type="text" name="nombreUsuario" id="nombreUsuario" value=""  placeholder="Nombre de Usuario" />
                                </div>
                                <div class="12u 12u$(xsmall)">
                                    <g:field type="text" name="telefono" id="number" value=""  placeholder="Teléfono" />
                                </div>
                                <div class="12u 12u$(xsmall)">
                                    <g:field type='text' name= "fechaNac" id='datetimepicker9'  placeholder="Fecha de Nacimiento" />
                                </div>
                                <div class="12u 12u$(xsmall)">
                                    <g:field type='text' name= "genero" id='demo-category'  placeholder="Género" />
                                </div>
                                <div class="12u 12u$(xsmall)">
                                    <g:field type="email" name="correo" id="email" requiredvalue="" placeholder="Correo Electrónico" />
                                </div>
                                <div class="12u 12u$(xsmall)">
                                    <g:field type="email" name="correo2" id="email2" requiredvalue="" placeholder="Confirma Correo Electrónico" />
                                </div>
                                <div class="12u 12u$(xsmall)">
                                    <g:field type="password" name="contrasenia" id="passwd" requiredvalue="" placeholder="Contraseña" />
                                </div>
                                <div class="12u 12u$(xsmall)">
                                    <g:field type="password" name="contrasenia2" id="passwd2" requiredvalue="" placeholder="Confirma Contraseña" />
                                </div>
                                <div class="6u 1u$(xsmall) g-recaptcha" data-sitekey="6Ld4sQoUAAAAAPZzWmOrDXOoHKsY64Hdf7a8rsHS"></div>
                                <div class="12u$">
                                    <ul class="actions">
                                        <li ><g:submitButton name="submit" value="Regístrate" class="special" onClick="validarPasswd()" /></li>
                                    </ul>

                            </div>
                        </g:form>
                    </div>
                </section>
            </div>
        </section>
    </article>
    </div>
</div>
<!-- Scripts -->

<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.scrollex.min.js"></script>
<script src="assets/js/jquery.scrolly.min.js"></script>
<script src="assets/js/skel.min.js"></script>
<script src="assets/js/util.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.13.0/moment.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>
<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
<script src="assets/js/main.js"></script>
<script type="text/javascript">
    $(function () {
        $('#datetimepicker9').datetimepicker({
            viewMode: 'years',
            format: 'DD/MM/YYYY'
        });
    });


</script>
<script type="text/javascript">
    function validarPasswd() {


        var p1 = document.getElementById("passwd").value;
        var p2 = document.getElementById("passwd2").value;
        var p3 = document.getElementById("email").value;
        var p4 = document.getElementById("email2").value;
        var espacios = false;
        var cont = 0;

        while (!espacios && (cont < p1.length)) {
            if (p1.charAt(cont) == " ")
                espacios = true;
            cont++;
        }

        if (espacios) {
            alert ("La contraseña no puede contener espacios en blanco");
            return false;
        }
        if (p1 != p2) {
            alert("Las contraseñas deben de coincidir");
            return false;
        }

        if (p3 != p4) {
            alert("Los correos electrónicos deben de coincidir");
            return false;

        } else {
            alert("Todo esta correcto");
            return true;
        }


    }
</script>
</body>
</html>
