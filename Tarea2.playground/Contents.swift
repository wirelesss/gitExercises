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




