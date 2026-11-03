class Tarea{
    var epoca = epocaDeLluvia 
    method recursosProducidos()= 50 * (tiempo - desgaste) * esfuerzo 
    
    
    
}

class Siembra inherits Tarea(){

method desgaste() = 1 + horaExtra

}

class siembraEnElValle inherits Siembra {
  // jornada < 8
    retun ((if self.puedeSembrar){
        super.tiempo
    }else{
      0} )
    }




class siembraEnTerraza inherit Siembra (tiempo){
return (3 * 50 * (tiempo - desgaste) * esfuerzo)
}





object esEpocaLluvia() {
  method puedeSembrar() = false
}  

object esEpocaSequia(){
    method puedeSembrar() = true {
      
    }
}

}
class siembraEnTerraza inherits Siembra{}