

object cuentaCorriente {
    var saldo = 0

    method depositar(importe) {
        saldo = saldo + importe
    }

    method extraer(importe) {
        saldo = saldo - importe
    }

    method saldo() = saldo

   

}

object cuentaCombinada {
    const cuentaPrimaria = cuentaCorriente
    const cuentaSecundaria = cuentaConGastos

    method depositar(importe) {
        cuentaPrimaria.depositar(importe)
    }

    method extraer(importe) {
        if (cuentaPrimaria.saldo() >= importe) {
            cuentaPrimaria.extraer(importe)
        } else {
            const restante = importe - cuentaPrimaria.saldo()
            cuentaPrimaria.extraer(cuentaPrimaria.saldo())
            cuentaSecundaria.extraer(restante)
        }
    }

    method saldo() = cuentaPrimaria.saldo() + cuentaSecundaria.saldo()
    
  
}

object cuentaConGastos {
    var saldo = 0

    method depositar(importe) {
        saldo = saldo + (importe - 200)
    }

    method extraer(importe) {
        if (importe <= 10000) {
            saldo = saldo - (importe + 200)
        } else {
            saldo = saldo - (importe + (importe * 0.02))
        }
    }

    method saldo() = saldo


}