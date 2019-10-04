import pedidos.*

class Registros {
	const registro = []
	
	method agregarPedidos(unPedido) {
		registro.add(unPedido)
	}	
	method quitarPedidos(unPedido) {
		registro.remove(unPedido)
	}
	method verPedido(unPedido){
		return registro.contains(unPedido)
	}
	method totalPasajeros() {
		return registro.sum({c => c.capacidad()})
	}
}
