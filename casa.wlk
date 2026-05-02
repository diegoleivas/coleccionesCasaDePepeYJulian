import  cosas.*



object casa {
    const cosas=[]

    method comprar(unaCosa) {
        cosas.add(unaCosa)
      
    }
method cantidadDeCosas() = cosas.size()
method tieneComida()= cosas.any({cosa => cosa.esComida()})
method vieneDeEquiparse()= 
    if (!cosas.isEmpty())
        cosas.last().esElectrodomestico() || cosas.last().valor() > 50000
    else 
        false
        
method esDerrochona()= cosas.sum({cosa => cosa.valor()}) >= 90000
method compraMasCara()= cosas.max({cosa => cosa.valor()})   
method electrodomesticosComprados()= cosas.filter({cosa => cosa.esElectrodomestico()})
method malaEpoca()= cosas.all({cosa => cosa.esComida()})
method queFaltaComprar(unaLista) = unaLista.filter({c => !cosas.contains(c)})
method faltaComida()= cosas.count({cosa => cosa.esComida()}) < 2

  
}
