object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var deuda = 0
	var dinero = 0
	
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	
	method gastar(cuanto){
		deuda += cuanto
		
		if ((dinero > 0) and (dinero < deuda)){
			deuda -= dinero
			dinero = 0
		}
		else {
			if  (dinero > deuda){
				deuda = 0
			}
		}
	}
	
	method totalDeuda(){
		return deuda
	}
	
	method cobrarSueldo(){ 
		if ((deuda < self.sueldo()) or (deuda == self.sueldo())){
			dinero = self.sueldo() - deuda
			deuda = 0
		}
		else {
			if (deuda > self.sueldo()){
				deuda = deuda - self.sueldo()
				dinero = 0
			}
		}
	}
	
	method totalDinero(){
		return dinero
	}
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var totalCobrado = 0
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() {
		return cantidadEmpanadasVendidas * montoPorEmpanada
	}
	
	method cobrarSueldo() {
		totalCobrado = self.totalCobrado() + self.sueldo()
	}
	
	method totalCobrado() {
		return totalCobrado
	}
}

object galvan {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA(empleado) {
    	dinero -= empleado.sueldo()
    	empleado.cobrarSueldo()
}
}
