import extras.*
object pepita {
	var energia = 500
	var position = game.at(0, 3)

	method position(){
		return game.at(self.posX(), self.posY())
	}

	method posX(){
		const posX = position.x().max(0)
		return posX.min(game.width()-1)
	}

	method posY(){
		const posY = position.y().max(0)
		return posY.min(game.height()-1)
	}

	method image(){
		if (self.position() == silvestre.position()){
			return "pepita-gris.png"
		}
		else if (self.position() == nido.position()){
			return "pepita-grande.png"
		}
		else if (energia == 0){
			return "pepita-gris.png"
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

	method mover(direccion){
		self.validarMover()
		self.validarSiHayObstaculo()
		position = direccion.siguiente(position)
		energia = 0.max(energia - 9)
	}

	method validarMover(){
		if (energia == 0){
			self.error("No tengo más energia!")
		}
	}

	method gravedad(){
		position = position.down(1)
	}


}


