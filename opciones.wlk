import wollok.game.*

object seleccionables {
	const property opcionesTotales = [opcionA, opcionB, opcionC, opcionD, opcionE, opcionF] //lista de todos los objetos que pueden ser seleccionados, tienen que tener position()
	var property opcionesEstacion = [opcionD, opcionE, opcionF, opcionA, opcionB] //lista de objetos que pueden ser seleccionados POR ESTACION, tienen que tener position()
}

object opcionA {
	var property position = game.at(1, 8)
	var property estacion = 0

	method image() {
		return 	"alpiste.png"
	}
}

object opcionB {
	var property position = game.at(5, 3)
	var property estacion = 0

	method image() {
		return 	"nido.png"
	}
}

object opcionC {
	var property position = game.at(14, 13)
	var property estacion = 0

	method image() {
		return 	"pepita-gris.png"
	}
}

object opcionD {
	var property position = game.at(2, 2)
	var property estacion = 1

	method image() {
		return 	"pepita-grande.png"
	}
}

object opcionE {
	var property position = game.at(5, 12)
	var property estacion = 1

	method image() {
		return 	"manzana.png"
	}
}

object opcionF {
	var property position = game.at(12, 6)
	var property estacion = 1

	method image() {
		return 	"silvestre.png"
	}
}