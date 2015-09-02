module ApplicationHelper

	def mostrar_imagen(nombre,tamano)
		image_tag nombre, size=>tamano
	end

	def boton(nombre,accion,clase)
		button_to nombre, {:action=>accion}, {:class=>clase}
		
	end
end


