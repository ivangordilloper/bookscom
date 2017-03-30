<html>
<head>
    <title> Nueva Tienda </title>
</head>
<body id="booksAdmin2">
<!-- Main -->


<section class="wrapper style5">
    <div class="inner">


        <section>
            <div class="box">

                <h4>Nueva Tienda</h4>
                <form method="post" onSubmit="return validarPasswd()" action="#">

                    <div class="row uniform">
                        <div class="12u 12u$(xsmall)">
                            <input type="text" name="demo-name" id="demo-name1" value=""  placeholder="Nombre" />
                        </div>
                        <div class="6u 12u$(xsmall)">
                            <input type="text" name="demo-name" id="demo-name2" value=""  placeholder="Latitud" />
                        </div>
                        <div class="6u 12u$(xsmall)">
                            <input type="text" name="demo-name" id="demo-name3" value=""  placeholder="Longitud" />
                        </div>
                        <div class="12u 12u$(xsmall)">
                            <input type="text" name="demo-name" id="demo-name4" value=""  placeholder="Horario" />
                        </div>
                        <div class="12u$">
                            <ul class="actions">
                                <li ><input type="submit" value="Enviar" class="special"  /></li>

                            </ul>
                        </div>
                    </div>
                </form>

            </div>

        </section>

    </div>
</section>
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
</body>
</html>
