package BooksCom

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: "Inicio",view:"inicio")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
