class Capital{
	var cantDefensores 
	var factorRiqueza 
	
	constructor(_cantDefensores, _factorRiqueza){
		cantDefensores = _cantDefensores
		factorRiqueza = _factorRiqueza
	}
	
	method valeLaPena(expedicion){
		return self.botin(expedicion) >= expedicion.cantidadDeVikingos()*3
	}
	
	method botin(expedicion){
		return expedicion.cantidadDeVikingos()*factorRiqueza
	}
	
	method serAtacada(expedicion){
		cantDefensores -= expedicion.cantidadDeVikingos()
	}
}

class Aldea{
	
	var cantCrucifijos
	
	constructor(_cantCrucifijos){
		cantCrucifijos = _cantCrucifijos
	}
	
	method valeLaPena(expedicion){
		return self.botin(expedicion) >= 15
	}
	
	method botin(expedicion){
		return cantCrucifijos
	}
	
	method serAtacada(expedicion){
		cantCrucifijos = 0 
	}
}

class AldeaAmurallada inherits Aldea{
	var property cantMinimaVikingos
	
	constructor(_cantCrucifijos,_cantMinimaVikingos) = super(_cantCrucifijos){
		cantMinimaVikingos = _cantMinimaVikingos
	}
	
	override method valeLaPena(expedicion){
		return super(expedicion) && expedicion.cantidadDeVikingos() >= cantMinimaVikingos 
	}
}