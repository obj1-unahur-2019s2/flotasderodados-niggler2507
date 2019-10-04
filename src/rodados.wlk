//hecho en clase el mar.1 de Oct.

class Corsa {
	var property color
	method velocidadMax() = 150
	method peso() = 1300
	method capacidad() = 4
}

class Kwid {
	var property tieneGas = true 
	method velocidadMax() {
		if (not tieneGas) return 110
		else return 120}
	method peso() {
		if (not tieneGas) return 1200
		else return 1200+150}
	method capacidad() {
		if (not tieneGas) return 3
		else return 4}
	method color() = "azul" 
}

object interiorComodo {
	method capacidad() = 5
	method peso() = 700
}

object interiorPopular {
	method capacidad() = 12
	method peso() = 1000
}

object motorPulenta {
	method peso() = 800
	method velocidadMax() = 130
}

object motorBataton {
	method peso() = 500
	method velocidadMax() = 80
}

object trafic {
	var property interior
	var property motor
	method capacidad() = interior.capacidad()
	method peso() = 4000+motor.peso()+interior.peso()
	method velocidadMax() = motor.velocidadMax()
	method color() = "blanco"
}

class AutoEspecial {
	var property color
	var property tieneGas = true
	var property interior = interiorComodo
	var property motor = motorPulenta
}


//////////////////////////////////////////////////////////////////////////////////
class Dependencia {
	var flota = []
	var property cantidadDeEmpleador
	method agregarAFlota(rodados) {flota.add(rodados)}
	method quitarAFlota(rodados) {flota.remove(rodados)}
	method pesoTotalFlota() {return flota.sum({r=>r.peso()})}
	method estaBienEquipada() {return flota.size()>=3 and self.alMenosA100()}
	method alMenosA100() {return flota.any({rodados=>rodados.velocidadMax()<=100})}
//	method capacidadTotalEnColor(unColor) {
//		return self.rodadosEnColor(unColor).sum({rodados=>rodados.capacidad()})}
//	method rodadosEnColor(unColor) {return flota.all({rodados=>rodados.color(unColor)})}
//	method colorDelRodadoMasRapido() { return flota.find({color=>color.velocidadMax().max()}) }
//	method capacidadFaltante() { return 0.max(cantidadDeEmpleador - self.capacidadFlota()) }
//	method esGrande() {  }
}

//////////////////////////////////////////////////////////////////////////////////

class Pedidos {
	var property distanciaARecorer
	var property tiempoMax
	var property cantidadPasajeros
	var colores = []
	method velocidadRequerida() {
	}
}