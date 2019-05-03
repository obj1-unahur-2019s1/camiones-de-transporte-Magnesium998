object knightRider {
	method peso() { return 500 }
	method nivelPeligrosidad() { return 10 }
}

object bumblebee {
	var transformadoEnAuto = true
	
	method peso() { return 800 }
	method nivelPeligrosidad() { return if (transformadoEnAuto) { 15 } else { 30 }  }
	method transformar() { transformadoEnAuto = not transformadoEnAuto }
}

object paqueteDeLadrillos {
	const peso = 2
	var cantidad = 0
	
	method cantidad(cuantos) {cantidad += cuantos}
	method peso() {return cantidad * peso}
	method nivelPeligrosidad() {return 2}
}

object arenaDeGranel { 
	var peso = 0
	
	method peso() {return peso}
	method nivelPeligrosidad() {return 1}
}

object bateriaAntiaerea {
	
}