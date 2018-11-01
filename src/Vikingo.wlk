class Vikingo {
	var property castaSocial
	var vidasCobradas
	var property monedas
	
	constructor(_castaSocial, _vidasCobradas, _monedas){
		castaSocial = _castaSocial
		vidasCobradas = _vidasCobradas
		monedas = _monedas
	}
	
	method esProductivo()
	
	method puedeSubir(){
		return castaSocial.puedeSubir(self)
	}
	
	method ascenderSocialmente(){
		castaSocial.ascender(self)
	}
}

class Soldado inherits Vikingo{
	
	var cantArmas
	
	constructor(_castaSocial, _vidasCobradas, _monedas,_cantArmas) = super(_castaSocial, _vidasCobradas, _monedas){
		cantArmas = _cantArmas
	}
	
	override method esProductivo(){
		return vidasCobradas > 20 && cantArmas > 0
	}
	
	method tieneArmas(){
		return cantArmas > 0
	}
}

class Granjero inherits Vikingo{
	var cantHijos
	var cantHectareas
	
	constructor(_castaSocial, _vidasCobradas, _monedas,_cantHijos, _cantHectareas) = super(_castaSocial, _vidasCobradas, _monedas){
		cantHijos = _cantHijos
		cantHectareas = _cantHectareas
	}
	
	override method esProductivo(){
		return cantHectareas >= cantHijos*2
	}
	
	method tieneArmas(){
		return false
	}
}

object jarl{
	method puedeSubir(vikingo){
		return !vikingo.tieneArmas()
	}
	
	method ascender(vikingo){
		
	}
}

object karl{
	method puedeSubir(vikingo){
		return true
	}
	
	method ascender(vikingo){
		vikingo.castaSocial(thrall)
	}
}

object thrall{
	method puedeSubir(vikingo){
		return true
	}
	
	method ascender(vikingo){
		
	}
}