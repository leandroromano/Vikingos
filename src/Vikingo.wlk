class Vikingo {
	var castaSocial
	var vidasCobradas
	
	constructor(_castaSocial, _vidasCobradas){
		castaSocial = _castaSocial
		vidasCobradas = _vidasCobradas
	}
	
	method esProductivo()
	
	method puedeSubir(){
		return castaSocial.puedeSubir(self)
	}
}

class Soldado inherits Vikingo{
	
	var cantArmas
	
	constructor(_castaSocial, _vidasCobradas, _cantArmas) = super(_castaSocial, _vidasCobradas){
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
	
	constructor(_castaSocial, _vidasCobradas, _cantHijos, _cantHectareas) = super(_castaSocial, _vidasCobradas){
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
}

object karl{
	method puedeSubir(vikingo){
		return true
	}
}

object thrall{
	method puedeSubir(vikingo){
		return true
	}
}