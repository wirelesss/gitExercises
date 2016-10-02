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
        var mensajeVelocidadActual : String
        if(velocidad == Velocidades.Apagado){
            mensajeVelocidadActual = "Apagado"
            velocidad = Velocidades.VelocidadBaja
        }
        else if(velocidad == Velocidades.VelocidadBaja){
            mensajeVelocidadActual = "Velocidad baja"
            velocidad = Velocidades.VelocidadMedia
        }
        else if(velocidad == Velocidades.VelocidadMedia){
            mensajeVelocidadActual = "Velocidad media"
            velocidad = Velocidades.VelocidadAlta
        }
        else{ // Si actual Velocidad es VelocidadAlta
            mensajeVelocidadActual = "Velocidad alta"
            velocidad = Velocidades.VelocidadMedia
        }
        return (velocidadActual.rawValue,"\(mensajeVelocidadActual)")
    }
    
}

var auto1 = Auto()
print("Velocidad inicial: \(auto1.velocidad.rawValue), estado: \(auto1.velocidad)")
for iterador in 1...20 {
    print(auto1.cambioDeVelocidad())
}

/* SALIDA EN CONSOLA:
Velocidad inicial: 0, estado: Apagado
(0, "Apagado")
(20, "Velocidad baja")
(50, "Velocidad media")
(120, "Velocidad alta")
(50, "Velocidad media")
(120, "Velocidad alta")
(50, "Velocidad media")
(120, "Velocidad alta")
(50, "Velocidad media")
(120, "Velocidad alta")
(50, "Velocidad media")
(120, "Velocidad alta")
(50, "Velocidad media")
(120, "Velocidad alta")
(50, "Velocidad media")
(120, "Velocidad alta")
(50, "Velocidad media")
(120, "Velocidad alta")
(50, "Velocidad media")
(120, "Velocidad alta")
*/



