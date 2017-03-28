package BooksCom

import grails.plugin.springsecurity.annotation.Secured

class LibroController {
    @Secured(['permitAll'])
    def libro() {

    }
    @Secured(['permitAll'])
    def agregarLibro(){

    }
    @Secured(['permitAll'])
    def editarLibro(){

    }
    @Secured(['permitAll'])
    def borrarLibro(){

    }
}
