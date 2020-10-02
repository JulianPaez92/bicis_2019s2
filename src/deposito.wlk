import bicicletas.*
import accesorios.*

class Depositos  {
	var property bicis = []
	
	method bicisRapidas() = bicis.filter({bici => bici.velocidadDeCrucero() > 25})
	method marca() = bicis.map({ bici => bici.marca() }).asSet()
	method nocturno() = bicis.all({ bici => bici.tieneLuz() })
	method biciParaLlevar(carga) = bicis.any({ bici => bici.carga() > carga })
	method marcaBiciMasRapida() = bicis.max({ bici => bici.velocidadDeCrucero() }).marca()
	method cargaTotalBicisLargas() = bicis.filter({ bici => bici.largo() > 170 }).sum({ bici => bici.carga()})
	method cantidadBicisSinAccesorios() = bicis.count({ bici => bici.accesorios() == [] })
	method bicisCompanieras(companiera) = bicis.filter({ bici => bici.marca() == companiera.marca() and (bici.largo() - companiera.largo()).between(-10,10) and (bici != companiera) })
}
