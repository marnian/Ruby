module HomeHelper

	def enlace(nombre,accion)
		link_to nombre, :action=>accion

	end

	def menu_navegacion(opciones)
		html= '<nav class="navbar navbar-default">
  	<div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">'
		opciones.each do|nombre, accion|
			html+='<li>'+ enlace(nombre, accion) + '<li>'
		end
		html += '<ul>'
		return html.html_safe
		
	end

	def hay_banner?
		if content_for?(:imagen)
			return true
		end
	end
end