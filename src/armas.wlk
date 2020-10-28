import Persona.*

class Revolver {
	var balas 
	
	method usarArma(persona){
		if(balas>0){
			persona.morir()
			balas -= 1
			}
		
		
	}
	
	method esSutil(){
		return balas == 1
	}
}

object escopeta{
	
	method usarArma(persona){
			persona.herir()
	}
	
	method esSutil(){ // puse false para que devuelva algo en las pruebas
		return false
	}
}

object cuerdaDePiano{
	
	var calidad
	
	method usarArma(persona){
		
		if (calidad == "buena"){
			
			persona.morir()
			
		}
	}
	
	method esSutil(){
		return true
	}
}