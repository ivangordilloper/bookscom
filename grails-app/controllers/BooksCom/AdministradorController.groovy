package BooksCom

import grails.plugin.springsecurity.annotation.Secured

class AdministradorController {

    @Secured('ROLE_ADMIN')
    def administrador() {

    }
    @Secured('ROLE_ADMIN')
    def agregarAutor(){

    }
    @Secured('ROLE_ADMIN')
    def agregarTienda(){

    }
    @Secured('ROLE_ADMIN')
    def editarAutor(){

    }
    @Secured('ROLE_ADMIN')
    def editarTienda(){

    }
}
