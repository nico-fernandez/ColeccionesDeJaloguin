object legionDelTerror {
	var chicos = []
	var lider
	
	method chicos() {
		return chicos
	}
	
	method lider() {
		return chicos.max({unChico => unChico.capacidadDeAsustar()})
	}
	
	method agregarA(masChicos) {
		chicos.add(masChicos)
	}
	
	method capacidadDeSusto() {
		return chicos.sum({unChico => unChico.capacidadDeAsustar()})
	}
	
	method asustar(adulto) {
		adulto.darCaramelos(self.lider())
	}
}

object macaria{
	var nivelDeIra = 10
	var caramelos = 0
	const disfraces = []
		
	method disfraces() {
		return disfraces
	}
	
	method loHacenEnojar() {
		nivelDeIra += 1
	}
	
	method capacidadDeSusto() {
		return nivelDeIra + disfraces.sum({unDisfraz => unDisfraz.capacidadDeSusto()})
	}
	
	method usarDisfraz(unDisfraz) {
		disfraces.add(unDisfraz)
	}
	
	method quitarDisfraz(unDisfraz) {
		disfraces.remove(unDisfraz)
	}
	
	method disfrazQueAsustaMenos() {
		return disfraces.min({unDisfraz => unDisfraz.capacidadDeSusto()})
	}
	
	method dejarDeUsarDisfrazMenosEfectivo() {
		self.quitarDisfraz(self.disfrazQueAsustaMenos())
	}
	
	method recibirCaramelos(cantidad) {
		caramelos += (cantidad - cantidad * 0.25)
	}
}

object pancracio {
	var grito = "buuuuuu"
	var disfraz
	var caramelos = 0
	
	method loHacenEnojar() {
		grito += "uu"
	}
	
	method capacidadDeSusto() {
		return (grito.size() - 1) + disfraz.capacidadDeSusto()
	}
	
	method cambiaDeDisfraz(nuevoDisfraz) {
		disfraz = nuevoDisfraz
	}
	
	method recibirCaramelos(cantidad) {
		caramelos += cantidad
	}
}

// Agrego a fulanito que su capacidad de asustar se basa en el promedio de la capacidad de asustar del grupo
// menos su nivel de irritabilidad, el cual aumenta cuando lo hacen enojar. El siempre se come la mitad de 
// sus caramelos. Y tiene un solo disfraz
object fulanito {
	var nivelDeIrritabilidad = 23
	var disfraz
	var caramelos = 0
	
	method loHacenEnojar() {
		nivelDeIrritabilidad += 1
	}
	
	method cambiarDisfraz(nuevoDisfraz) {
		disfraz = nuevoDisfraz	
	} 
	
	method capacidadDeSusto() {
		return legionDelTerror.capacidadDeSusto() / legionDelTerror.chicos().size() - nivelDeIrritabilidad
	}
	
	method recibirCaramelos(cantidad) {
		caramelos += cantidad / 2
	}
}

object trajeDeBruja {
	
	method capacidadDeSusto() {
		return 10
	}
}

object barba {
	var longitud = 12
	
	method pierdePelo() {
		longitud -= 3
	}
	
	method mamaAgregaPelo() {
		longitud += 5
	}
	
	method capacidadDeSusto() {
		return 5 * longitud
	}
}

object mascaraDeDracula {
	const tamanio = 23
	
	method capacidadDeSusto() {
		return 3 * tamanio
	}
}

object mascaraDeFrankenstein {
	method capacidadDeSusto(){
		return 22
	}
}

object mascaraDePolitico {
	const cantidadDePromesas = 4
	
	method capacidadDeSusto() {
		return cantidadDePromesas
	}
}












