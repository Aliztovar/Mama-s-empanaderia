import opciones.*
import wollok.game.*
import empanadas.*
import horno.*
import armado.*

object cruceta {
	var property position = espacioHorno1.position()

	method image() {
		return "cruceta.png"
	}

	method moverCruceta (opcionesValidas){
		if (opcionesValidas.size() != 0){
			return opcionesValidas.min({each => self.calcularDistanciaCruceta(each)}).position()
		} else {
			return self.position()
		}
	}

	method calcularDistanciaCruceta(objeto) {
		return (((objeto.position().x() - self.position().x()).abs().square()) + ((objeto.position().y() - self.position().y()).abs().square())).squareRoot()
	}

	method opcionesDebajo(listaOpciones) {
		return listaOpciones.filter({opcion => opcion.position().y() < self.position().y()})
	}

	method opcionesArriba(listaOpciones) {
		return listaOpciones.filter({opcion => opcion.position().y() > self.position().y()})
	}

	method opcionesDerecha(listaOpciones) {
		return listaOpciones.filter({opcion => opcion.position().x() > self.position().x()})
	}

	method opcionesIzquierda(listaOpciones) {
		return listaOpciones.filter({opcion => opcion.position().x() < self.position().x()})
	}

	method interactuar() {
		game.colliders(self).first().interactuar()
	}
}