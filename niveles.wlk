import cruceta.*
import opciones.*
import wollok.game.*

object estacionA {
	const property id = 0

	method iniciar() {
		seleccionables.opcionesEstacion().forEach({opcion => game.addVisual(opcion)})
	}
}
object estacionB {
	const property id = 1

	method iniciar() {
		seleccionables.opcionesEstacion().forEach({opcion => game.addVisual(opcion)})
		game.addVisual(opcionA)
	}
}

object config {
	const property listaEstaciones = [estacionA, estacionB] 
	var property indice = 0

	method configurarTeclas() {
		keyboard.left().onPressDo({ cruceta.position(cruceta.moverCrucetaIzquierda())})
		keyboard.right().onPressDo({ cruceta.position(cruceta.moverCrucetaDerecha()) })
		keyboard.up().onPressDo({ cruceta.position(cruceta.moverCrucetaArriba()) })
		keyboard.down().onPressDo({ cruceta.position(cruceta.moverCrucetaAbajo()) })
		keyboard.q().onPressDo({ self.cambiarIndice(-1) })
		keyboard.e().onPressDo({ self.cambiarIndice(1) })
	}

	method cambiarIndice(cambio) {
		if ((self.indice() + cambio > 0) && (self.indice() + cambio < 3)){
			seleccionables.opcionesEstacion().forEach({opcion => game.removeVisual(opcion)})
			self.indice(self.indice() + cambio)
			seleccionables.opcionesEstacion.clear()
			
		}
	}
}