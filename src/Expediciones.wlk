import Vikingo.*
import Ciudades.*

class Expedicion{
	var property vikingos = #{}
	var property ciudadesObjetivo = []
	
	method subirA(vikingo){
		if(vikingo.esProductivo() && vikingo.puedeSubir()){
			vikingos.add(vikingo)
		}
		else throw new NoPuedeSubirExpedicionException("El vikingo no es productivo, por lo tanto no puede subir a la expedicion")
	}
	
	method valeLaPena(){
		return ciudadesObjetivo.all({ciudad => ciudad.valeLaPena(self)})
	}
	
	method cantidadDeVikingos(){
		return vikingos.size()
	}
	
	method agregarCiudad(ciudad){
		ciudadesObjetivo.add(ciudad)
	}
}

class NoPuedeSubirExpedicionException inherits Exception{}

