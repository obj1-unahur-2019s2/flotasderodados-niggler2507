import rodados.*
import pedidos.*

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