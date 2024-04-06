import objetos.*
import personas.*

object bolichito{
	
	var productoMostrador = remera
	var productoVidriera = pelota
	
	method setProductoVidriera(nuevoProductoVidriera){
		productoVidriera  = nuevoProductoVidriera
	}
	
	method setProductoMostrador(nuevoProductoMostrador){
		productoMostrador = nuevoProductoMostrador
	}
	
	method productoMostrador() = productoMostrador 
	
	method productoVidriera() = productoVidriera
	
	method esBrillante() = productoMostrador.material().esBrillante() and productoVidriera.material().esBrillante()
	
	method esMonocromatico() = productoMostrador.color() == productoVidriera.color()
	
	method estaDesequilibrado() = productoMostrador.peso() != productoVidriera.peso()
	
	method tieneAlgoDeColor(color) = productoMostrador.color() == color or productoVidriera.color()== color
	
	method puedeOfrecerleAlgoA(persona) = persona.leGusta(productoMostrador) or persona.leGusta(productoVidriera)
	
	method puedeMejorar() = self.esMonocromatico() or self.estaDesequilibrado()
	
}
	