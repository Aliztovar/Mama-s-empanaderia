import cruceta.*
import horno.*
import wollok.game.*
import opciones.*

object empanadaPreparacion inherits Empanada (position = game.at(5, 9)){
    override method image() {
        return 1
    }

    method moverABandeja(espacio) {
        espacio.masa(self.masa())
        espacio.relleno(self.relleno())
        self.masa(0)
        self.relleno(0)
    }

    override method interactuar() {
        if(bandeja.espacioDisponible()){
            self.moverABandeja(bandeja.menorEspacioVacio())
        }
    }
}

object bandeja {
   	const property espaciosBandeja = [empanada1, empanada2, empanada3, empanada4, empanada5, empanada6]

    method espacioDisponible() {
        return espaciosBandeja.any({empanda => empanda.relleno() == 0})
    }

    method menorEspacioVacio() {
        return espaciosBandeja.find({empanda => empanda.relleno() == 0})
    }
}

object empanada1 inherits Empanada (position = game.at(7, 10)){
    override method image() {
        return 1
    }
}

object empanada2 inherits Empanada(position = game.at(7, 9)){
    override method image() {
        return 1
    }
}

object empanada3 inherits Empanada(position = game.at(7, 8)){
    override method image() {
        return 1
    }
}

object empanada4 inherits Empanada(position = game.at(7, 7)){
    override method image() {
        return 1
    }
}

object empanada5 inherits Empanada(position = game.at(7, 6)){
    override method image() {
        return 1
    }
}

object empanada6 inherits Empanada(position = game.at(7, 5)){
    override method image() {
        return 1
    }
}