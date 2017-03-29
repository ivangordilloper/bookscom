<html>
<head>
    <title> EDITAR LIBRO </title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src='https://www.google.com/recaptcha/api.js'></script>
    <g:external dir="css" file="main.css"/>
</head>
<body id="booksAdmin2">
<!-- Main -->

<section class="wrapper style5">
    <div class="inner">


        <section>
            <div class="box">

                <h4>Agregar Libro</h4>
                <form method="post" onSubmit="return validarPasswd()" action="#">

                    <div class="row uniform">
                        <div class="12u 12u$(xsmall)">
                            <input type="text" name="demo-name" id="demo-name1" value=""  placeholder="Titutlo" />
                        </div>
                        <div class="6u 12u$(xsmall)">
                            <input type="text" name="demo-name" id="demo-name2" value=""  placeholder="Editorial" />
                        </div>
                        <div class="6u 12u$(xsmall)">
                            <input type="text" name="demo-name" id="demo-name3" value=""  placeholder="País" />
                        </div>


                        <div class="12u ">
                            <div class="select-wrapper">
                                <select name="demo-category" id="demo-category">
                                    <option value="">- Autor -</option>
                                    <option value="1">AutorPrueba1</option>
                                    <option value="2">AutorPrueba2</option>

                                </select>
                            </div>

                        </div>
                        <div class="12u 12u$(xsmall)">
                            <input type="text" name="demo-email" id="email" required value="" placeholder="Resumen" />
                        </div>
                        <p><g:img dir="images" file="book.png"  class="image-book-add"/></p>
                        <div class="12u 12u$(medium)">
                            <ul class="actions vertical">
                                <li><a href="#" class="button special fit">Portada</a></li>
                            </ul>
                        </div>

                        <div class="12u 12u$(medium)">
                            <ul class="actions vertical">
                                <li><a href="#" class="button special fit">Enviar</a></li>

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