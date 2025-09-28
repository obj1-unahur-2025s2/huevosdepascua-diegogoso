/*Ana aguanta hasta 5000 calorías, contemplando todos los huevos que comió
 pero el chocolate blanco le cae mal, con que haya uno de los huevos que comió
  que tenga chocolate blanco, ya se enferma. 
    - José no tiene acumulativo, cada nuevo huevo que se come le hace olvidar
     los que se comió antes. Pero si el último que se comió tiene chocolate amargo
      le hace mal y está enfermo.
    - Tito nunca se enferma, puede comer de todo y le cae siempre bien. */

import huevosDePascua.*

object ana{
    const huevosComidos =[]
    method huevosComidos() = huevosComidos
    method comer(huevo) = huevosComidos.add(huevo)
    method estaEnfermo() {
        return
        self.consumioMasDe5000Calorias() || self.consumioChocolateBlanco()
    }
    method consumioChocolateBlanco() = huevosComidos.any({h => h.esDeChocolateBlanco()})
    method consumioMasDe5000Calorias() = huevosComidos.sum({h => h.calorias()}) > 5000
}

object jose{
    var huevosComidos = [] 
    method huevosComidos() = huevosComidos
    method comer(unHuevo) {

        huevosComidos = unHuevo
    }
    method estaEnfermo() = huevosComidos.esDeChocolateAmargo()
}
object tito{
    const huevosComidos =[]
    method comer(unHuevo) = huevosComidos.add(unHuevo)
    method estaEnfermo() = false
}


