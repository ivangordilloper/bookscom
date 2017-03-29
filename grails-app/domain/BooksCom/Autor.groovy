package BooksCom

class Autor {

    String nombre
    String apellidoP
    String apellidoM
    String biografia
    boolean publicable
    static hasMany = [libros: Libro]

    static constraints = {
    }
}
