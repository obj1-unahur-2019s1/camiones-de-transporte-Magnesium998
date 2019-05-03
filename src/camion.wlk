import cosas.*

object camion {
	const property cosas = [knightRider,bumblebee]
	const tara = 1000
	
	method cargar(unaCosa) {
		cosas.add(unaCosa)
	}
	
	method descargar(unaCosa) {
		cosas.remove(unaCosa)
	}
	
	method pesoTotal() {
		return tara + cosas.sum{cosa => cosa.peso()}
	}
	
	method excedidoDePeso() {
		return cosas.sum{cosa => cosa.peso()} > 2500}
		
		method objetosPeligrosos(nivel) {
			return cosas.filter{cosa => cosa.nivelPeligrosidad() > nivel}
	}
	
	method objetosMasPeligrosos(cosa) {return cosas.filter{coso => coso.nivelPeligrosidad() > cosa.nivelPeligrosidad()}
	}
	
	method puedeCircularEnRuta(nivelMaximoPeligrosidad) {
		return cosas.any{cosa => cosa.nivelPeligrosidad() > nivelMaximoPeligrosidad}
	}
	
	method tieneAlgoQuePesaEntre(min,max) {return cosas.any{cosa => cosa.peso().between(min,max)}}

	method cosaMasPesada() {
		return cosas.max{cosa => cosa.peso()}
	}
	
	method totalBultos() {}
}