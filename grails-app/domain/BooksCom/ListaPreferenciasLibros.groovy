package BooksCom

class ListaPreferenciasLibros {

    String nombre
    Usuarios usuario
    static hasMany = [usuario:Usuarios]
    static constraints = {
    }
}
