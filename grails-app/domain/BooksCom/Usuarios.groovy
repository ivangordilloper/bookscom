package BooksCom

class Usuarios {



    String nombre
    String apellidoP
    String apellidoM
    Date fechaNac
    int telefono
    String nombreUsuario
    String correo
    String contrasenia
    Boolean permiso


    static constraints = {
        nombre size:2..50, blank: false
        apellidoP size:2..50, blank: false
        apellidoM size:2..50, blank: false
        telefono size:8..20
        nombreUsuario unique: true, size:5..15
        correo email: true, blank:false
        contrasenia  size: 8..20, blank: false

    }

}
