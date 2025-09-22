import silvestre.*
import nido.*
object pepita {
	var energia = 500
	var property position = game.at(0,3)

	method image(){
		if (self.position() == silvestre.position()){
			return "pepita-gris.png"
		}
		else if (self.position() == nido.position()){
			return "pepita-grande.png"
		}
		else{
			return "pepita.png"
		}
	}

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method volar(kms) {
		energia = energia - 10 - kms 
	}
	
	method energia() {
		return energia
	}

	method mover(){
		energia = 0.max(energia - 9)
	}

}


