import rangos.*
import armas.*


class Persona {
	
	var estado = "viva" 			// viva , muerta o herida
	var rango 
	const armas = []
	var lealtad
	
	method hacerSuTrabajo(otraPersona){
		rango.ensuciarseLasManos(armas,otraPersona)
	}
	
	method morir(){
		estado = "muerta"
	}
	
	method herir(){
		
		if (estado == "viva"){
			estado = "herida"
		}else if(estado == "herida"){
			estado = "muerta"
		}
		
	}
	
	method cantidadDeArmas(){
		return armas.size()
	}
	
	method estaMuerto(){
		return estado == "muerta"
	}
	
	method estaVivo(){
		return !self.estaMuerto()
	}
	
	
	method agregarArma(arma){
		armas.add(arma)
	}
	
	method sabeDespachar(){ // punto 4
		
		rango.cumpleRequerimientosDeDespache(armas)
		
	}
	
	method aumentarLealtadEnUn10(){
		lealtad  = lealtad * 1.10
	}
	
	method realizarLuto(){
		rango.reorganizarse()
	}
	
	method esDon(){
		return rango == Don
	}
	
	
	method promoverASubjefe(ultimoArma){
		rango = Subjefe
		
	}
	
	method lealtad(){
		return lealtad
	}
	
	method promoverADon(){
		rango = Don
		
	}
	
}
