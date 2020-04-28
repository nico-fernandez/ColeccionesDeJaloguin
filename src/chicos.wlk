object legionDelTerror {
	var chicos = []
	var lider
	
	method lider() {
		return chicos.max({unChico => unChico.capacidadDeAsustar()})
	}
	
	method agregarA(masChicos) {
		chicos.add(masChicos)
	}
	
	method capacidadDeAsustar() {
		return chicos.sum({unChico => unChico.capacidadDeAsustar()})
	}
	
	method asustar(adulto) {
		adulto.darCaramelos(self.lider())
	}
}

object macaria{
	var nivelDeIra = 10
	var caramelos = 0
	var disfraces = []
		
	
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
	
	method recibirCaramelos(cantidad) {
		caramelos += (cantidad - cantidad * 0.25)
	}
}

object pancracio {
	var grito = "buuuuuu"
	var disfraz = mascaraDeDracula
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












