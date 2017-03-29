package BooksCom

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['permitAll'])
class ListaPreferenciasLibrosController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ListaPreferenciasLibros.list(params), model:[listaPreferenciasLibrosCount: ListaPreferenciasLibros.count()]
    }

    def show(ListaPreferenciasLibros listaPreferenciasLibros) {
        respond listaPreferenciasLibros
    }

    def create() {
        respond new ListaPreferenciasLibros(params)
    }

    @Transactional
    def save(ListaPreferenciasLibros listaPreferenciasLibros) {
        if (listaPreferenciasLibros == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (listaPreferenciasLibros.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond listaPreferenciasLibros.errors, view:'create'
            return
        }

        listaPreferenciasLibros.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'listaPreferenciasLibros.label', default: 'ListaPreferenciasLibros'), listaPreferenciasLibros.id])
                redirect listaPreferenciasLibros
            }
            '*' { respond listaPreferenciasLibros, [status: CREATED] }
        }
    }

    def edit(ListaPreferenciasLibros listaPreferenciasLibros) {
        respond listaPreferenciasLibros
    }

    @Transactional
    def update(ListaPreferenciasLibros listaPreferenciasLibros) {
        if (listaPreferenciasLibros == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (listaPreferenciasLibros.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond listaPreferenciasLibros.errors, view:'edit'
            return
        }

        listaPreferenciasLibros.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'listaPreferenciasLibros.label', default: 'ListaPreferenciasLibros'), listaPreferenciasLibros.id])
                redirect listaPreferenciasLibros
            }
            '*'{ respond listaPreferenciasLibros, [status: OK] }
        }
    }

    @Transactional
    def delete(ListaPreferenciasLibros listaPreferenciasLibros) {

        if (listaPreferenciasLibros == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        listaPreferenciasLibros.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'listaPreferenciasLibros.label', default: 'ListaPreferenciasLibros'), listaPreferenciasLibros.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'listaPreferenciasLibros.label', default: 'ListaPreferenciasLibros'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
