import wollok.game.*
import armado.*
import horno.*
import empanadas.*
import cruceta.*



class Seleccionable {
	var property position

	method image()
	method interactuar()
}

class Relleno inherits Seleccionable {
	var property id

	override method interactuar () {
        if(empanadaPreparacion.masa() != 0 && empanadaPreparacion.relleno() == 0){
            empanadaPreparacion.relleno(self.id())
            if(bandeja.espacioDisponible()){ empanadaPreparacion.moverABandeja(bandeja.menorEspacioVacio()) }
        }
    }
}

class Masa inherits Seleccionable {
	var property id 

	override method interactuar () {
        if(empanadaPreparacion.masa() == 0){
            empanadaPreparacion.masa(self.id())
        }
    }
}

class EspacioHorno inherits Seleccionable{
	var property ocupado = 0
    var property masa = 0
    var property relleno = 0
    var property coccion = 0

	override method interactuar() {
        if(self.ocupado() == 0){
            seleccionables.opcionesActuales().clear()
            seleccionables.opcionesActuales().addAll(bandeja.espaciosBandeja())
            cruceta.position(empanada1.position())
            horno.espacioSeleccionado(self)
        } else {
            if (bandeja.espacioDisponible()){
                bandeja.menorEspacioVacio().masa(self.masa())
                bandeja.menorEspacioVacio().relleno(self.relleno())
                bandeja.menorEspacioVacio().coccion(self.coccion())
            }
        }
    }
}

class Empanada inherits Seleccionable{
	var property masa = 0
    var property relleno = 0
    var property coccion = 0

	override method interactuar() {
        horno.espacioSeleccionado().masa(self.masa())
        horno.espacioSeleccionado().relleno(self.relleno())
        horno.espacioSeleccionado().coccion(self.coccion())
        horno.espacioSeleccionado().ocupado(1)
        self.masa(0)
        self.relleno(0)
        self.coccion(0)
        cruceta.position(horno.espacioSeleccionado().position())
        seleccionables.opcionesActuales().clear()
        seleccionables.opcionesActuales().addAll(seleccionables.opcionesStandard())
    }
}

object seleccionables {
	const property opcionesTotales = [opcionA, rellenoA, rellenoB, rellenoC, masaA, masaB, espacioHorno1, espacioHorno2, espacioHorno3, espacioHorno4, espacioHorno5, espacioHorno6, empanada1, empanada2, empanada3, empanada4, empanada5, empanada6]
	var property opcionesActuales = [opcionA, rellenoA, rellenoB, rellenoC, masaA, masaB, espacioHorno1, espacioHorno2, espacioHorno3, espacioHorno4, espacioHorno5, espacioHorno6]
	const property opcionesStandard = [opcionA, rellenoA, rellenoB, rellenoC, masaA, masaB, espacioHorno1, espacioHorno2, espacioHorno3, espacioHorno4, espacioHorno5, espacioHorno6]
}

object opcionA inherits Seleccionable (position = game.at(5, 5)) {
	override method image() {
		return "pepita-gris.png"
	}

	override method interactuar() {
		return 1
	}
}