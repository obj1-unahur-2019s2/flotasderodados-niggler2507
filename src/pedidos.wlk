class Pedidos {
	const property distanciaARecorrer
	const property tiempoMaximo 
	const property cantidadPasajeros
	const property coloresIncompatibles
	
	method velocidadRequerida() {
		return distanciaARecorrer / tiempoMaximo
	}
	method puedeSerSatisfecho(auto) {
		return self.velocidadRequerida() 
		and self.satisfaceVelocidad(auto)
		and self.satisfaceCapacidad(auto)
		and self.satisfaceColor(auto)
	}
	method satisfaceVelocidad(auto) {
		return auto.velocidadMax() => self.velocidadRequerida() + 10
	}
	method satisfaceCapacidad(auto) {
		return auto.capacidad() => cantidadPasajeros()
	}
	method satisfaceColor(auto) {
		return not coloresIncompatibles.any {c => c == auto.color()}
		//return not coloresIncompatibles.contains(auto.color())
	}
}
