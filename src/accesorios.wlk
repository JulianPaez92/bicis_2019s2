object farolito {
	
	method peso() = 0.5
	method carga() = 0
	method esLuminoso() = true
}

class Canasto {
	var property volumen = null
	
	method peso() = volumen / 10
	method carga() = volumen * 2
	method esLuminoso() = false
}

class MorralDeBici {
	var property largo = null
	var property ojoDeGato = null
	
	method peso() = 1.2
	method carga() = largo / 3
	method esLuminoso() = self.ojoDeGato()
}

/*Para agregar nuevos tipos de accesorios deberiamos implementar una nueva clase
 *en la que incorporaremos los metodos "peso(),carga() y esLuminoso()" y las correspondientes
 *variables necesarias para cada clase para mantener el polimorfismo que hemos generado anteriormente.
 */