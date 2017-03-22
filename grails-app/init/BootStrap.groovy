import BooksCom.Usuarios;
import BooksCom.Role;
import BooksCom.UsuariosRole;


class BootStrap {

    def init = { servletContext ->
        //    Usuarios(String username, String password, String nombre, String apellidoP, String apellidoM, String correo) {
        Usuarios ivan = new Usuarios(username: "ivan1",password:"56ivgope").save()
        Role admin = new Role(authority: "ROLE_ADMIN").save()
        Usuarios ivan2 = new Usuarios(username: "ivan2",password:"56ivgope").save()
        Role user = new Role(authority: "ROLE_USER").save()
        UsuariosRole.create(ivan2,user);


    }
    def destroy = {
    }
}
