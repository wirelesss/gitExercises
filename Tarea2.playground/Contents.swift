//: Tarea 2 - Velocimetro
// Autor: Rodrigo Hernandez
import UIKit

enum Velocidades:Int {
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades){
        self = velocidadInicial
    }
    
}

class Auto{
    
    var velocidad : Velocidades
    init(){
         velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    func cambioDeVelocidad()->(actual: Int, velocidadEnCadena: String){
        var velocidadActual = velocidad
        if(velocidad == Velocidades.Apagado){
            velocidad = Velocidades.VelocidadBaja
        }
        else if(velocidad == Velocidades.VelocidadBaja){
            velocidad = Velocidades.VelocidadMedia
        }
        else if(velocidad == Velocidades.VelocidadMedia){
            velocidad = Velocidades.VelocidadAlta
        }
        else{ // Si actual Velocidad es VelocidadAlta
            velocidad = Velocidades.VelocidadMedia
        }
        return (velocidadActual.rawValue,"La velocidad actual es: \(velocidadActual.rawValue), estado: \(velocidadActual)")
    }
    
}

var auto1 = Auto()
print("Velocidad inicial: \(auto1.velocidad.rawValue), estado: \(auto1.velocidad)")
for iterador in 1...20 {
    print("Cambio de Velocidad #\(iterador) : \(auto1.cambioDeVelocidad().velocidadEnCadena)")
}

/* SALIDA EN CONSOLA:
Velocidad inicial: 0, estado: Apagado
Cambio de Velocidad #1 : La velocidad actual es: 0, estado: Apagado
Cambio de Velocidad #2 : La velocidad actual es: 20, estado: VelocidadBaja
Cambio de Velocidad #3 : La velocidad actual es: 50, estado: VelocidadMedia
Cambio de Velocidad #4 : La velocidad actual es: 120, estado: VelocidadAlta
Cambio de Velocidad #5 : La velocidad actual es: 50, estado: VelocidadMedia
Cambio de Velocidad #6 : La velocidad actual es: 120, estado: VelocidadAlta
Cambio de Velocidad #7 : La velocidad actual es: 50, estado: VelocidadMedia
Cambio de Velocidad #8 : La velocidad actual es: 120, estado: VelocidadAlta
Cambio de Velocidad #9 : La velocidad actual es: 50, estado: VelocidadMedia
Cambio de Velocidad #10 : La velocidad actual es: 120, estado: VelocidadAlta
Cambio de Velocidad #11 : La velocidad actual es: 50, estado: VelocidadMedia
Cambio de Velocidad #12 : La velocidad actual es: 120, estado: VelocidadAlta
Cambio de Velocidad #13 : La velocidad actual es: 50, estado: VelocidadMedia
Cambio de Velocidad #14 : La velocidad actual es: 120, estado: VelocidadAlta
Cambio de Velocidad #15 : La velocidad actual es: 50, estado: VelocidadMedia
Cambio de Velocidad #16 : La velocidad actual es: 120, estado: VelocidadAlta
Cambio de Velocidad #17 : La velocidad actual es: 50, estado: VelocidadMedia
Cambio de Velocidad #18 : La velocidad actual es: 120, estado: VelocidadAlta
Cambio de Velocidad #19 : La velocidad actual es: 50, estado: VelocidadMedia
Cambio de Velocidad #20 : La velocidad actual es: 120, estado: VelocidadAlta
*/



