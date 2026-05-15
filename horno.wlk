import wollok.game.*
import opciones.*
import cruceta.*
import empanadas.*

object horno {
    const property espaciosHorno = [espacioHorno1, espacioHorno2, espacioHorno3, espacioHorno4, espacioHorno5, espacioHorno6]
    var property espacioSeleccionado = 0
}

object espacioHorno1 inherits EspacioHorno (position = game.at(1, 6)) {
    override method image() {
        return 1
    }
}

object espacioHorno2 inherits EspacioHorno (position = game.at(2, 6)) {
    override method image() {
        return 1
    }
}

object espacioHorno3 inherits EspacioHorno (position = game.at(3, 6)) {
    override method image() {
        return 1
    }
}

object espacioHorno4 inherits EspacioHorno (position = game.at(4, 6)) {
    override method image() {
        return 1
    }
}

object espacioHorno5 inherits EspacioHorno (position = game.at(5, 6)) {
    override method image() {
        return 1
    }
}

object espacioHorno6 inherits EspacioHorno (position = game.at(6, 6)) {
    override method image() {
        return 1
    }
}