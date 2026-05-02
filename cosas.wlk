

object heladera {
    method valor() = 200000 
    method esElectrodomestico() = true
  
}

object cama {
  method valor() = 80000
  method esElectrodomestico() = false
}

object asado {
  method valor() = 3500
  method esElectrodomestico() = false
}

object fideos {
    method valor() = 500
    method esElectrodomestico() = false
  
}

object plancha {
method valor() = 12000  
method esElectrodomestico() = true
}

object milanesas {
    method valor() = 2600
    method esElectrodomestico() = false
    method esComida() = true
}

object salsaDeTomate {
    method valor() = 900
    method esElectrodomestico() = false
    method esComida() = true
  
}

object cebollas {
    method valor() = 250
    method esElectrodomestico() = false
    method esComida() = true
  
}

object dolar {
    method precioDeVenta() = 500
    method esElectrodomestico() = false
    method esComida() = false
  
}

object computadora {
    method valor() = dolar.precioDeVenta() * 500
    method esElectrodomestico() = true  
  
}

object packComida {
    method valor() = asado.valor() + salsaDeTomate.valor()
    method esElectrodomestico() = false
    method esComida() = true
  
}

