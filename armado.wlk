import wollok.game.*
import opciones.*
import empanadas.*
import horno.*


object rellenoA inherits Relleno (position = game.at(2, 12), id =1) {
    override method image() {
      return 1
    }
}

object rellenoB inherits Relleno (position = game.at(3, 12), id = 2) {
    override method image() {
      return 1
    }
}

object rellenoC inherits Relleno (position = game.at(4, 12), id = 3) {
    override method image() {
      return 1
    }
}

object masaA inherits Masa (position = game.at(2, 11), id = 4) {
    override method image() {
      return 1
    }
}

object masaB inherits Masa (position = game.at(3, 11), id = 5) {
    override method image() {
      return 1
    }
}