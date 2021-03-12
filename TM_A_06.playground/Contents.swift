import UIKit
/*:
# Playground - Actividad 6
* Operadores personalizados
* Subscripts
* Control de errores

*/


/*: 
### Operadores personalizados
A) Crear el operador para realizar la potencia de el valor "a" a la potencia "b" en valores enteros
*/
prefix operator ^^^
var a:Decimal = 4
var b = 4

prefix func ^^^ (valor:Int)
{
    let valor = pow(a, b)
    print ("El valor aumentado a la potencia es: ", valor)
    
}
^^^4
//: B) Crear el operador |> para ordenar la colección [2,5,3,4] de menor a mayor
infix operator |>
var coleccion  :[Int] = [2,5,3,4]

coleccion.sort()
print("Los valores han sido ordenados de la siguiente manera: ", coleccion)
/*:
### Subscripts
A) Del conjunto de datos en el Array [2,3,4,5], crear el subscript para modificar los valores multiplicados por el valor 2 y extraer al valor dado un índice.
*/
let numeros = [2,3,4,5]

class Multiplicacion
{
    var valores: [Int]
    init(v:[Int]) {
        self.valores = v
    }
    subscript (idx:Int)->Int{
        get{
            return valores[idx]
        }
        set(valorMultiplicado)
        {
        valores[idx] = valorMultiplicado * 2
        }
    }
    
}

var valor1 = Multiplicacion(v: numeros)

valor1[2] = valor1[2]
valor1.valores
print("El segundo valor posicionado multiplicado por 2 es: ", valor1[2])

//: B) Crear el Struct para definir u obtener la posición  para los personaje de tipo Enemigo donde cada posición es de tipo CGPoint aplicnado subscritps


/*:
### Control de Errores
A) Crear la función ExisteValor en la cual se reciba como parámetro el valor a buscar dentro de un colección ["A":1, "B":2,"C":3]
*/
let colecciones = ["A":1,"B":2,"C":3]

func ValorExiste (idx:String)
{
    guard let existe = colecciones [idx] else {
        print("El valor no existe")
        return
    }
    print("El valor existe \(existe) ")
}
ValorExiste(idx: "A")
colecciones["A"]






