object frutilla { }
object chocolate { }
object vainilla { }
object naranja { }
object limon { }

class Bombon {
  var peso = 15
  method precio() = 5
  method sabor() = frutilla
  method libreDeGluten() = true
  method mordisco() {peso = (peso * 0.8) - 1}
}

class Alfajor {
  var peso = 300
  method precio() = 12
  method sabor() = chocolate
  method libreDeGluten() = false
  method mordisco() = {peso = peso * 0.8}
}

class Caramelo {
  var peso = 5
  method precio() = 1
  method sabor() = frutilla
  method libreDeGluten() = true
  method mordisco() {peso = peso - 1 }
}

class Chupetin {
  var peso = 7
  method precio() = 2
  method sabor() = naranja
  method libreDeGluten() = true
  method mordisco() { 
		if (peso >= 2) {
			peso = peso * 0.9
		}
	}
}

class Oblea {
  var peso = 250
  method precio() = 5
  method sabor() = vainilla
  method libreDeGluten() = false
  method mordisco() {
		if (peso >= 70) {
			peso = peso * 0.5
		} else { 
			peso = peso - (peso * 0.25)
		}
	}	
}

class Chocolatin {
	var comido = 0
	var peso
	method peso() = (peso - comido).max(0)
	method precio() = peso * 0.50
  	method sabor() = chocolate
  	method libreDeGluten() = false
	method mordisco() { comido = comido + 2 }
}


class GolosinaBaniada {
	var golosinaInterior
	var pesoBaño = 4
	
	method golosinaInterior(unaGolosina) { golosinaInterior = unaGolosina }
	method peso() = golosinaInterior.peso() + pesoBaño 
	method precio() = golosinaInterior.precio() + 2 
	method sabor() = golosinaInterior.sabor() 
	method libreDeGluten() = golosinaInterior.libreDeGluten()	
	method mordisco() {
		golosinaInterior.mordisco()
		pesoBaño = (pesoBaño - 2).max(0) 
	}	
}


class TuttiFrutti {
	var libreDeGluten
	const sabores = [frutilla, chocolate, naranja]
	var saborActual = 0
	
	method mordisco() { saborActual += 1 }	
	method sabor() = sabores.get(saborActual % 3)

	method precio() = if(self.libreGluten()) 7 else 10
	method peso() = 5 
	method libreGluten() = libreDeGluten
	method libreGluten(valor) { libreDeGluten = valor }
}