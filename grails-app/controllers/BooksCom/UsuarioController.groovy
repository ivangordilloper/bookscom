package BooksCom

import grails.plugin.springsecurity.annotation.Secured

class UsuarioController {

    @Secured('ROLE_USER')
    def usuario(){

    }
    @Secured('ROLE_USER')
    def configuracion(){

    }

    @Secured('ROLE_USER')
    def libro(){

    }

    @Secured('ROLE_USER')
    def verListas(){

    }

    @Secured('ROLE_USER')
    def configurarLista(){

    }

    @Secured('ROLE_USER')
    def NuevaListaLibro(){

    }

    @Secured('ROLE_USER')
    def NuevaListaAutor(){

    }
}
