import accesorios.*

class Bicicleta {
	var property rodado
	var property largo
	var property marca
	var property accesorios = []
	
	method altura() = rodado * 2.5 + 15
	method velocidadDeCrucero() = 
		if (largo > 120) (rodado + 6)
		else (rodado + 2)
	
	method carga() = accesorios.sum({ v => v.carga() })
	method peso() = rodado / 2 + accesorios.sum({ v => v.peso() })
	method tieneLuz() = accesorios.any({ v => v.esLuminoso() })
	
	method accesoriosLivianos() = accesorios.count({ v => v.peso() < 1 })
}