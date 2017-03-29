import BooksCom.Role
import BooksCom.Usuarios
import BooksCom.UsuariosRole;


class BootStrap {

    def init = { servletContext ->
        //def p = new Persona(apellidoM: apellidoM, apellidoP: apellidoP, contrasenia: contrasenia, correo: correo,  fechaNac: fechaNac, nombre: nombre, nombreUsuario: nombreUsuario, telefono: telefono, genero: genero)
        Usuarios ivan = new Usuarios(apellidoM: "Perez", apellidoP: "Gordillo", correo: "ivan@ivan.com", fechaNac: "13-06-1994", nombre: "Ivan", telefono: "5555555555", genero: "Masculino", username: "ivan1",password:"56ivgope",).save()
        Role admin = new Role(authority: "ROLE_ADMIN").save()
        Usuarios ivan2 = new Usuarios(apellidoM: "Perez", apellidoP: "Gordillo", correo: "ivan@ivan.com", fechaNac: "13-06-1994", nombre: "Ivan", telefono: "5555555555", genero: "Masculino", username: "ivan2",password:"56ivgope",).save()
        Role user = new Role(authority: "ROLE_USER").save()
        UsuariosRole.create(ivan2,user);
        UsuariosRole.create(ivan,admin);




    }
    def destroy = {
    }
}
