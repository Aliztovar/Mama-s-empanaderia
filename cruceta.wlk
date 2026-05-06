import opciones.*
import wollok.game.*

object cruceta {
	var property position = game.origin()

	method image() {
		return "cruceta.png"
	}

	method moverCrucetaAbajo (){
		if (self.opcionesDebajo().size() != 0){
			return self.opcionesDebajo().min({each => self.calcularDistanciaCruceta(each)}).position()
		} else {
			return self.position()
		}
	}

	method moverCrucetaDerecha (){
		if (self.opcionesDerecha().size() != 0){
			return self.opcionesDerecha().min({each => self.calcularDistanciaCruceta(each)}).position()
		} else {
			return self.position()
		}
	}

	method moverCrucetaArriba (){
		if (self.opcionesArriba().size() != 0){
			return self.opcionesArriba().min({each => self.calcularDistanciaCruceta(each)}).position()
		} else {
			return self.position()
		}
	}

	method moverCrucetaIzquierda (){
		if (self.opcionesIzquierda().size() != 0){
			return self.opcionesIzquierda().min({each => self.calcularDistanciaCruceta(each)}).position()
		} else {
			return self.position()
		}
	}

	method calcularDistanciaCruceta(objeto) {
		return (((objeto.position().x() - self.position().x()).abs().square()) + ((objeto.position().y() - self.position().y()).abs().square())).squareRoot()
	}

	method opcionesDebajo() {
		return seleccionables.opcionesEstacion().filter({opcion => opcion.position().y() < self.position().y()})
	}

	method opcionesArriba() {
		return seleccionables.opcionesEstacion().filter({opcion => opcion.position().y() > self.position().y()})
	}

	method opcionesDerecha() {
		return seleccionables.opcionesEstacion().filter({opcion => opcion.position().x() > self.position().x()})
	}

	method opcionesIzquierda() {
		return seleccionables.opcionesEstacion().filter({opcion => opcion.position().x() < self.position().x()})
	}
}