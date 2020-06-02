class Farolito {
	method peso(){return 0.5}
	method carga(){return 0}
	method esLuminoso(){return true}
}

class Canasto {
    var property volumen = 0
    method peso(){return volumen /10}
    method carga(){return volumen * 2}
    method esLuminoso(){return false}
}

class MorralDeBici {
    var property largo = 0
    var property tieneOjoDeGato
    method peso(){return 1.2}
    method carga(){return largo  / 3}
    method esLuminoso(){
        if (tieneOjoDeGato){
            return true
        }else{
            return false
        }
    }
    
}

/* Punto 5
    * Para agregar nuevas clases/tipos no hay que tocar nada.
    * Las clases deben saber los métodos/mensajes primordiales que son peso, carga y 
      si es luminoso
*/