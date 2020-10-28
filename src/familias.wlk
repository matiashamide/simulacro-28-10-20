import Personas.*
import armas.*

class Familia {
	const integrantes = []
	
	method don(){
		return integrantes.filter({persona => persona.esDon()})
	}
	
	method alguienDuermeConLosPeces(){ // punto 1
		return integrantes.any({persona => persona.estaMuerto()})
	}

	
	method elMasPeligroso(){ //punto 2
		return integrantes.filter({persona => persona.estaVivo()}).max({persona => persona.cantidadDeArmas()})
	}
	
	method protegerFamilia(){ //punto 3
	
		const revolver = new Revolver(balas = 6)
		
		integrantes.forEach({persona => persona.agregarArma(revolver)})	
	}
	

	
	method ataqueSopresa(otraFamilia){ // punto 5 
		integrantes.forEach({persona => persona.hacerSuTrabajo(otraFamilia.esMasPeligroso())})
	}
	
		method subordiandoMasLealDelDon(){
		return self.don().subordinadoMasLeal()
	}
	
	method muereDon(){ // punto 6
		integrantes.forEach({persona => persona.realizarLuto()
										persona.aumentarLealtadEnUn10()})
		
		self.subordiandoMasLealDelDon().promoverADon()
		integrantes.remove(self.don())
	}
	
}