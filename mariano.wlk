import golosinas.*

object mariano {
    const golosinas = []

    method comprar(unaGolosina) {golosinas.add(unaGolosina)}

    method desechar(unaGolosina) {golosinas.remove(unaGolosina)}

    method cantidadDeGolosinas() = golosinas.size()

    method tieneLaGolosina(unaGolosina) = golosinas.contains(unaGolosina)

    method probarGolosinas() { golosinas.forEach{g => g.mordisco()} }

    method hayGolosinasSinTACC() = golosinas.any{g=>g.libreDeGluten()}

    method preciosCuidados() = golosinas.all{g=>g.precio()<=10}

    method golosinasDeSabor(unSabor) = golosinas.find{g=>g.sabor() == unSabor}

    method golosinasDeSabor(unSabor) = golosinas.filter{g=>g.sabor() == unSabor}

    method sabores() = golosinas.map{g=>g.sabor()}.asSet()

    method golosinaMasCara() = golosinas.max{g=>g.precio()}

    method pesoGolosinas() = golosinas.sum{g=>g.peso()}
    
    method golosinasFaltantes(golosinasDeseadas) = golosinasDeseadas.difference(golosinas)

    method saboresFaltantes(saboresDeseados) = saboresDeseados.filter{saborDeseado => ! self.tieneGolosinaDeSabor(saborDeseado)}

    method tieneGolosinaDeSabor(sabor) = golosinas.any({g => g.sabor() == sabor})
	
}