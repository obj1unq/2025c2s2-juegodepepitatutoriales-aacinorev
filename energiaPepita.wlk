import pepita.*
import wollok.game.*
object energiaPepita {
	var property position = game.at(8,8)
	method text() = "energia de pepita" + pepita.energia()
}