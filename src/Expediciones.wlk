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
	
	method realizarExpedicion(){
		var botinTotal = ciudadesObjetivo.sum({ciudad => ciudad.botin(self)})
		ciudadesObjetivo.forEach({ciudad => ciudad.serAtacada(self)})
		self.repartirBotin(botinTotal/self.cantidadDeVikingos())
	}
	
	method repartirBotin(botin){
		vikingos.forEach({vikingo => vikingo.monedas(botin)})
	}
	
	method cantidadDeVikingos(){
		return vikingos.size()
	}
	
	method agregarCiudad(ciudad){
		ciudadesObjetivo.add(ciudad)
	}
	
	method agregarVikingo(vikingo){
		vikingos.add(vikingo)
	}
}

class NoPuedeSubirExpedicionException inherits Exception{}

