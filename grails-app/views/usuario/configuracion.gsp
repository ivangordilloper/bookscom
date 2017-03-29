<html>
<head>
    <title> CONFIGURAR PÉRFIL </title>
</head>
<body id="usuario">
<!-- Main -->
<article id="main">
    <header>
        <h2>Configuración</h2>
    </header>
    <section class="wrapper style5">
        <div class="inner">


            <section>
                <div class="box">


                    <form method="post" onSubmit="return validarPasswd()" action="#">

                        <div class="row uniform">
                            <div class="12u 12u$(xsmall)">
                                <input type="text" name="demo-name" id="demo-name1" value=""  placeholder="Nombre(s)" />
                            </div>
                            <div class="6u 12u$(xsmall)">
                                <input type="text" name="demo-name" id="demo-name2" value=""  placeholder="Apellido Paterno" />
                            </div>
                            <div class="6u 12u$(xsmall)">
                                <input type="text" name="demo-name" id="demo-name3" value=""  placeholder="Apellido Materno" />
                            </div>

                            <div class="12u 12u$(xsmall)">
                                <input type="text" name="number" id="number" value=""  placeholder="Teléfono" />
                            </div>
                            <div class="12u 12u$(xsmall)">
                                <div style="position: relative">
                                    <input type='text' id='datetimepicker9'  placeholder="Fecha de Nacimiento" />
                                </div>
                            </div>
                            <div class="12u">
                                <div class="select-wrapper">
                                    <select name="demo-category" id="demo-category">
                                        <option value="">- Sexo -</option>
                                        <option value="M">Masculino</option>
                                        <option value="F">Femenino</option>

                                    </select>
                                </div>
                            </div>
                            <div class="12u 12u$(xsmall)">
                                <input type="password" name="passwd" id="passwd" required value="" placeholder="Nueva contraseña" />
                            </div>
                            <div class="12u 12u$(xsmall)">
                                <input type="password" name="passwd2" id="passwd2" required value="" placeholder="Confirma Contraseña" />
                            </div>

                            <div class="6u 1u$(xsmall) g-recaptcha" data-sitekey="6Ld4sQoUAAAAAPZzWmOrDXOoHKsY64Hdf7a8rsHS"></div>






                            <div class="12u$">
                                <ul class="actions">
                                    <li ><input type="submit" value="Enviar" class="special" onClick="validarPasswd()" /></li>

                                </ul>
                            </div>
                        </div>
                    </form>

                </div>

            </section>

        </div>
    </section>
</article>
<!-- Scripts -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>

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

        else {
            alert("Todo esta correcto");
            return true;
        }


    }

</script>
<script>
    window.fbAsyncInit = function() {
        FB.init({
            appId      : '1246188562111122',
            xfbml      : true,
            version    : 'v2.8'
        });
    };

    (function(d, s, id){
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) {return;}
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/sdk.js";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
</script>
</body>
</html>