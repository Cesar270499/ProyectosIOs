import UIKit
/*:
# Playground - Actividad 5
* Class y Struct
* Extension
* Optional
*/


/*: 
### Actividad Class y Struct
A) Diseñar la clase Persona que contenga dos metodos, el primero "Saludar" que reciba el parámetro nombre y regrese el mensaje el nombre mas el texto "mucho gusto", el segundo metodo "Caminar" que reciba como parámetro un tipo de dato Int y regrese un tipo de dato String indicando el numero de pasos caminados.
*/
class Persona {
    var nombre : String = ""
    var saludar:String = ""
    var caminar : Int = 0
    
    init(nombre:String, caminar:Int ) {
        self.nombre = nombre
        self.caminar = caminar
    }
    func Saludar(mensaje:String) {
        self.saludar = mensaje
    }
    func Caminar(pasos:Int) {
        self.caminar = pasos
    }
    
}

var cesar = Persona(nombre: "Cesar", caminar: 1999)
print(cesar.nombre, "Mucho Gusto", "El numero de pasos caminados son: ", cesar.caminar)
//: B) Diseñar el struct "Pantalla" la cual recibirá como como parametros el ancho y alto de una pantalla como tipo de datos Int con un constructor, para inicializar la estructura.
struct Pantalla {
    var alto  : Int
    var ancho : Int
    init(alto:Int, ancho:Int) {
        self.alto = alto
        self.ancho = ancho
    }
}

var televisor = Pantalla(alto: 2160, ancho: 3840)
print("La resolucion de la pantalla es: ", televisor.ancho, "x", televisor.alto)
/*:
### Extensions
A) Diseñar un extensión del tipo de dato Int que represente las horas y que pueda regresar los segundos correspondientes (puedes utilizar una función o una variable computada)
*/
extension Int {
    func horas() -> Int {
       return self*24*60
    }
}
3.horas()

//: B) Diseñar una extensión del tipo de dato String que represente un día de la semana y regrese el numero correspondiente iniciando con Domingo = 1 y finalizando Sábado = 7
extension String {
    func dias() -> String {
        return self
    }
    
}



/*:
### Optionals
A) Diseñar una variable optional para recibir el tipo de dato Int en caso de que exista.
*/
let optional = ["1":1,"2":2,"3":3,"4":4,"6":6,"7":7,"8":8,"9":9]
var existe:Int?

existe = optional ["1"]

if let temp = optional ["1"]{
    print("Si existe ")
}else {
    print("No existe el numero 5")
}





//Para la colección - let dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200], diseña una variable opcional para recibir el valor de dias["DF"].

let dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200]
var existe1:Int?

existe1 = dias ["DF"]

if let temp = dias ["DF"]{
    print("Si existe ")
}else {
    print("No existe el DF")
}

