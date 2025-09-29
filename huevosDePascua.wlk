/*Huevo repostero: Está hecho de chocolate blanco y aporta 750 calorías.
- Huevo mixto: Tiene 400 calorías de chocolate con leche y 500 calorías de
 chocolate blanco.
- Conejo de chocolate: Es de chocolate amargo y tiene diez veces su peso 
por cada gramo en calorías.
- Blister de huevitos: Trae un número arbitrario de huevos de chocolate 
con leche, que dan 100 calorías cada uno. Por cada 5 huevos de chocolate
 con leche se agrega de regalo uno de chocolate blanco que tiene 150 calorías.
  (ayuda: los números entienden el mensaje div(n) para realizar la división entera)
- Matrioshka: De base, tiene 3000 calorías y es chocolate amargo
 pero se debe considerar también que viene otro huevo (de los descritos antes)
  en su interior y además, tiene dos decoraciones posibles en chocolate
   con leche: árbol o flor. El árbol tiene 150 calorías adicionales
    mientras que la flor viene en diferentes tamaños y tiene 100 calorías por
     cada pétalo.*/



object huevoRepostero {
    method calorias() = 750
    method esDeChocolateAmargo() = false
    method esDeChocolateBlanco() = true

}

object huevoMixto {
    method caloriaschocolateBlanco() = 500
    method caloriaschocolateConLeche() = 400
    method calorias() = self.caloriaschocolateBlanco() + self.caloriaschocolateConLeche()
    method esDeChocolateAmargo() = false
    method esDeChocolateBlanco() = true
  
}

object conejo {
    var property peso = 10
    method calorias () = peso * 10
    method esDeChocolateAmargo() = true
    method esDeChocolateBlanco() = false



}
object ningunHuevo {
    method calorias() = 0
    method esDeChocolateAmargo() = false
    method esDeChocolateBlanco() = false
}

object blisterHuevitos {
    var property cantidadHuevitos = 3

    method calorias() = cantidadHuevitos * 100 + cantidadHuevitos.div(5) * 150
    method esDeChocolateBlanco() = cantidadHuevitos >= 5
    method esDeChocolateAmargo() = false

}

object matrioshka {
    var  huevoInterior = huevoMixto
    var property decoracion = flor
    method cambiarHuevoInterior(unHuevo){

     huevoInterior = unHuevo

    }
    method calorias() = 3000 + huevoInterior.calorias() + flor.caloriasDecoracion()
    method esDeChocolateAmargo() = true
    method esDeChocolateBlanco() = huevoInterior.esDeChocolateBlanco()
   
}
object arbol {
    method caloriasDecoracion() = 150
}
object flor {
    var property cantidadPetalos = 7
    method caloriasDecoracion() = cantidadPetalos * 100
}
