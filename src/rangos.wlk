import Personas.*
import armas.*

class Don inherits Persona{
	
	const subordinados = #{}

	method subordinadoMasLeal(){
		return subordinados.max({persona => persona.lealtad()})	
	}
	
	method ensuciarseLasManos(armas,persona){
		subordinados.head().hacerSuTrabajo(persona) // elija a ALGUNO de sus subordinados, use head para elegir el primero sin mucha vuelta
	}

	method cumpleRequerimientosDeDespache(armas){
		return true
	}
	
	method reorganizarse(){
		
	}
}

class Subjefe inherits Persona{
	
	
	var ultimaArmaUsada
	const subordinados = #{}
	
	method ensuciarseLasManos(armas,persona){
		
		armas.filter({arma => arma != ultimaArmaUsada}).head().usarArma(persona)
		ultimaArmaUsada = armas.filter({arma => arma != ultimaArmaUsada}).head()
	}
	
	
	method cumpleRequerimientosDeDespache(armas){
		subordinados.any({persona => persona.cumpleRequerimientosDeDespache(armas)})
	}
	
	
	
}

class Soldado inherits Persona{
	
 var ultimaArmaUsada
	
	method escopetaDeRegalo(armas){
		if(!armas.any({arma => arma == escopeta})){armas.add(escopeta)}
	}
	
	method ensuciarseLasManos(armas,persona){
		ultimaArmaUsada = armas.head()
		armas.head().usarArma(persona)
		self.escopetaDeRegalo(armas)
	}
	
	
	
	method cumpleRequerimientosDeDespache(armas){
		armas.any({arma => arma.esSutil()})
	}
	
	method reorganizarse(unaPersona){
		if( unaPersona.cantidadDeArmas() > 5){
			unaPersona.promoverASubjefe(ultimaArmaUsada)
			}
		}
	
	
}