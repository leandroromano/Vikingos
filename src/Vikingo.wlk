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
	
	method gananciaKarl()
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
	
	override method gananciaKarl(){
		cantArmas += 10
	}
}

class Granjero inherits Vikingo{
	var property cantHijos
	var property cantHectareas
	
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
	
	override method gananciaKarl(){
		cantHijos += 2
		cantHectareas += 2
	}
}

object jarl{
	method puedeSubir(vikingo){
		return !vikingo.tieneArmas()
	}
	
	method ascender(vikingo){
		vikingo.castaSocial(karl)
		vikingo.gananciaKarl()
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