import extras.*
object pepita {
	var energia = 500
	var property position = game.at(0, 5)

	
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
		self.validarSiTengoEnergia()
		self.moverSiPuedeA(direccion)
	}

	method validarSiTengoEnergia(){
		if (energia == 0){
			self.error("No tengo más energia!")
		}
	}

	method moverSiPuedeA(direccion){
		const otrosObjetos = game.getObjectsIn(direccion.siguiente(position))
		if (otrosObjetos.isEmpty() and direccion.hayTablero(position,10,10)){
			position = direccion.siguiente(position)
			energia = 0.max(energia - 9)
		}
	}

	method gravedad(){
		self.moverSiPuedeA(abajo)
	}

	method validarSiHayObstaculo(){
		position.getObjectsIn(position)
	}

}


