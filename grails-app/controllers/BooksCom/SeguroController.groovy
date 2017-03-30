package BooksCom

import grails.plugin.springsecurity.annotation.Secured


class SeguroController {

    def springSecurityService

    @Secured(['permitAll'])
    def index() {
        def auth = springSecurityService.authentication
        def authorities = auth.authorities.toString()
        println(authorities)
        if (authorities == "[ROLE_ADMIN]")
            redirect(controller: 'administrador', action: "administrador")
        else if (authorities == "[ROLE_USER]")
            redirect(controller: 'usuario', action: "Usuarios")
        else
            redirect(controller: 'login', action: "auth")
    }

    @Secured('ROLE_ADMIN')
    def acceso_admin() {

    }

    @Secured('ROLE_USER')
    def acceso_user() {

    }
}