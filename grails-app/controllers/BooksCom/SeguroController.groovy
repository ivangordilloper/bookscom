package BooksCom

import grails.plugin.springsecurity.annotation.Secured


class SeguroController {

    def springSecurityService

    @Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def index() {
        def auth = springSecurityService.authentication
        def authorities = auth.authorities.toString()
        println(authorities)
        if (authorities == "[ROLE_ADMIN]")
            redirect(controller: 'inicio', action: "home")
        else if (authorities == "[ROLE_USER]")
            redirect(controller: 'usuarios', action: "index")
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