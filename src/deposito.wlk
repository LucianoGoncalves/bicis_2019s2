import bicis.*
import accesorios.*
class Deposito {
	const lote = []
	method agregar(unaBici){lote.add(unaBici)}
    method bicisRapidas(){return lote.all( {bici => bici.velocidadDeCrucero() > 25 } )}
    method marca(){return lote.map( {bici => bici.marca() } ) .asSet()}
    method esNocturno(){return lote.all( {bici => bici.tieneLuz()} )}
    method hayBicicletaParaLlevar(kg){return lote.any( {bici => bici.carga() > kg} )}
    method marcaMasRapida(){return lote.max( {bici => bici.velocidadDeCrucero()} ).marca() }
    method cargaTotalDeBicisLargas(){return lote.filter( {bici => bici.largo() > 170 } ) .sum( {bici => bici.carga()} )}
    method cantBicisSinAcce(){return lote.count( {bici => bici.cantidadDeAccesorios() == 0} )}
    method biciCompaniera(unaBici){return  lote.filter( {bici => bici.marca() == unaBici.marca() and (bici.largo() - unaBici.largo()).abs() <= 10 and bici != unaBici } ) }
    //method hayCompanieras(){return  lote. self.biciCompaniera(unaBici) }
    //method parejasDeCompanieras(){}
    /*method seHizoLaLuz(){
        const copiaLote = lote  
            return copiaLote.forEach({
                if (copiaLote.first( {bici => not bici.tieneLuz()} )){
                    copiaLote.drop(1)
                }else{
                    self.esNocturno()
                }})    
    }*/
}
