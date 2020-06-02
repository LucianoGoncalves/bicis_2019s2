import accesorios.*
class Bici{
    var property rodado
    var property largo
    var property marca
    const accesorio = []
    method altura(){return rodado * 2.5 + 15}
    method velocidadDeCrucero(){
        if(largo > 120){
            return rodado + 6
        }else{
            return rodado + 2
        }
    }
    method accesorio(unAccesorio){accesorio.add(unAccesorio)}
    
    method carga(){return accesorio.sum( {acce => acce.carga()} )}
    
    method peso(){return (rodado / 2) + accesorio.sum( {acce => acce.peso()} )}
    
    method tieneLuz(){return accesorio.any( {acce => acce.esLuminoso()} )}
    
    method cantidadDeAccesoriosLivianos(){return accesorio.count( {acce => acce.peso() < 1} )}
    
    method accesorios(){return accesorio}
    
    method cantidadDeAccesorios(){return accesorio.size()}
}