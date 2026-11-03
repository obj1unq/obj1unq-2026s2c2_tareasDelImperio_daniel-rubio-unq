class Tarea{

    method desgaste (tiempo)
    method esfuerzo()

    method recursosProducidos(tiempo) = 50 * (tiempo - self.desgaste(tiempo)) * self.esfuerzo() 
}

//  Siembra 
class Siembra inherits Tarea {
  const esfuerzoDelCultivo          // configurable según el cultivo

  method jornadaNormal()

  override method esfuerzo() = esfuerzoDelCultivo
  override method desgaste(tiempo) = 1 + (tiempo - self.jornadaNormal()).max(0)
}
object calendario {
  var property epocaActual = epocaSequia
}
object epocaLluvia {
  method puedeSembrar() = false
}

object epocaSequia {
  method puedeSembrar() = true
}

class SiembraEnValle inherits Siembra {
  override method jornadaNormal() = 8

  override method recursosProducidos(tiempo) =
    if (calendario.epocaActual().puedeSembrar()) super(tiempo) else 0
}

class SiembraEnTerrazas inherits Siembra {
  override method jornadaNormal() = 6

  override method recursosProducidos(tiempo) = 3 * super(tiempo)
}

//  Mensajes 
class Mensaje inherits Tarea {
  override method esfuerzo() = 1.4
  override method desgaste(tiempo) = tiempo / 4
}

class MensajeImperial inherits Mensaje {
  override method esfuerzo() = 1.8
  override method desgaste(tiempo) = (super(tiempo) - 2).max(1)
}