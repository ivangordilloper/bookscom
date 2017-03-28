package BooksCom

import grails.plugin.springsecurity.annotation.Secured

class UsuarioController {

    @Secured(['permitAll'])
    def usuario(){

    }
    @Secured(['permitAll'])
    def configuracion(){

    }

    @Secured(['permitAll'])
    def libro(){

    }
}
