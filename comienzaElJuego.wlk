import huevosDePascua.*
import chicos.*
/*Requerimientos: 
1) Averiguar cuántos huevos en total falta encontrar. Tambien poder saber cuantos
 quedan con chocolate blanco
2) Averiguar si un determinado huevo aún no fue encontrado
3) Hacer que un/a chico/a encuentre un huevo en particular
4) Hacer que un/a chico/a encuentre el primero de los huevos escondidos
5) Hacer que un/a chico/a encuentre todos los huevos restantes
6) Averiguar si un/a chico/a está enfermo: 
7) De los huevos que falta encontrar: 
 ¿Cuales son con chocolate blanco?
- El huevo de mayor cantidad de calorías*/
object comienzaElJuego {
     const huevosEscondidos = [matrioshka, huevoRepostero, conejo, huevoMixto]
    //const chicos = [ana, jose, tito]
    const huevosEncontrados = []
   
    method huevosRestantes() = huevosEscondidos.size()
    method huevosEncontrados() = huevosEncontrados
    method huevosEscondidos() = huevosEscondidos
    method huevosConChocolateBlanco() = huevosEscondidos.count({h => h.esDeChocolateBlanco()})
    method huevoNoEncontrado(huevo) = !huevosEncontrados.contains(huevo)
    method encontrarHuevo(chico, huevo) = if (!huevosEncontrados.contains(huevo)) {
        chico.comer(huevo)
        huevosEncontrados.add(huevo)
        huevosEscondidos.remove(huevo)
    }
    method encontrarPrimerHuevo(chico) = if (!huevosEscondidos.isEmpty()) {
        self.encontrarHuevo(chico, huevosEscondidos.first())
        
    }
    method encontrarTodosLosHuevos(chico) = if (!huevosEscondidos.isEmpty()){
        const huevosPendientes = huevosEscondidos.copy()
        huevosPendientes.forEach({ huevo => self.encontrarHuevo(chico, huevo) })
       // huevosEncontrados.clear()
        huevosEncontrados.addAll(huevosEscondidos)
    }
    method estaEnfermo(chico) = chico.estaEnfermo()
    method huevoMayorCalorias() = huevosEscondidos.max({h => h.calorias()})
    method cualesConChocolateBlanco() = huevosEscondidos.filter({h => h.esDeChocolateBlanco()})
    
} 