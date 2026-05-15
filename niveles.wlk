import cruceta.*
import opciones.*
import wollok.game.*

object estacionA {
	method iniciar() {
		game.boardGround("fondo2.jpg")
		game.addVisual(cruceta)
		config.configurarTeclas()
		seleccionables.opcionesTotales().forEach({opcion => game.addVisual(opcion)})
	}
}

object config {

	method configurarTeclas() {
		keyboard.left().onPressDo({ cruceta.position(cruceta.moverCruceta(cruceta.opcionesIzquierda(seleccionables.opcionesActuales())))})
		keyboard.right().onPressDo({ cruceta.position(cruceta.moverCruceta(cruceta.opcionesDerecha(seleccionables.opcionesActuales()))) })
		keyboard.up().onPressDo({ cruceta.position(cruceta.moverCruceta(cruceta.opcionesArriba(seleccionables.opcionesActuales()))) })
		keyboard.down().onPressDo({ cruceta.position(cruceta.moverCruceta(cruceta.opcionesDebajo(seleccionables.opcionesActuales()))) })
		keyboard.c().onPressDo({ cruceta.interactuar() })
	}
}