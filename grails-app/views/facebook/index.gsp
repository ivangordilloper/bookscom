<script>
    window.fbAsyncInit = function() {
        FB.init({
            appId      : '1246188562111122',
            xfbml      : true,
            version    : 'v2.6'
        });
    };

    (function(d, s, id){
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) {return;}
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/sdk.js";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));

    function validarUsuario() {
        FB.getLoginStatus(function(response) {
            if(response.status == 'connected') {
                FB.api('/me?fields=id,name,email', function(response){
                    alert('Hola ' + response.email);
                    console.log(response)
                });
            } else if(response.status == 'not_authorized') {
                alert('Debes autorizar la app!');
            } else {
                alert('Debes ingresar a tu cuenta de Facebook!');
            }
        });
    }

    function ingresar() {
        FB.login(function(response){
            validarUsuario();
        }, {scope: 'public_profile, email'});
    }
</script>

<a href="#" id="IngresaFacebook" onclick="ingresar()">Login Facebook</a>
