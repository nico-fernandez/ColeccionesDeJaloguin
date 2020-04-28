object mirca {
	var nivelDeTolerancia = 21
	
	method nivelDeTolerancia() {
		return nivelDeTolerancia
	}
	
	// Retorna si se asusta o no con un determinado chico
	method seAustaCon(chico) {
		return self.nivelDeTolerancia() < chico.capacidadDeSusto()

	}
	
	// Mirca le da tantos caramelos como sea la diferencia entre su tolerancia y el nivel de susto de quien lo asuste. Su nivel de tolerancia disminuye
	method darCaramelosA(chico) {
		nivelDeTolerancia -= 1
		chico.recibirCaramelos(0.max(self.nivelDeTolerancia() - chico.capacidadDeSusto()))
	}
}
