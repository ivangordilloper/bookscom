package BooksCom

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@EqualsAndHashCode(includes='username')
@ToString(includes='username', includeNames=true, includePackage=false)
class Usuarios implements Serializable {

    private static final long serialVersionUID = 1

    transient springSecurityService


    String nombre
    String apellidoP
    String apellidoM
    //Date fechaNac
    String fechaNac
    int telefono
    String correo
    String genero
    String username
    String password
    boolean enabled = true
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired


    Usuarios(String username, String password) {
        this()
        this.username = username
        this.password = password
    }

    Set<Role> getAuthorities() {
        UsuariosRole.findAllByUsuario(this)*.role
    }

    def beforeInsert() {
        encodePassword()
    }

    def beforeUpdate() {
        if (isDirty('password')) {
            encodePassword()
        }
    }

    protected void encodePassword() {
        password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
    }

    static transients = ['springSecurityService']

    static constraints = {
        username blank: false, unique: true
        password blank: false
        nombre nullable: false
        apellidoP nullable: true
        apellidoM nullable: true
        fechaNac nullable: true
        telefono nullable: true
        correo nullable: true
        genero nullable: true
    }

    static mapping = {
        password column: '`password`'
    }
}
