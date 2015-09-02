#encoding: utf-8
class HomeController < ApplicationController
  def index
  	@titulo="Inicio"
    @array=["primero", "segundo", "tercero"]
  end

  def quienes_somos
  	@titulo="Quienes Somos?"
  end

  def contacto
  	@titulo="Estamos en contacto"
    if Email.recepcion.deliver_now
      flash.now[:noticia]= "Se ha enviado correctamente"
    else
      flash.now[:noticia]= "No se ha enviado correctamente"
    end

  end
  def localizacion
  	@titulo="Te he localizado"
  end
  def servicios
  	@titulo="Los servicios que ofrecemos"
  end
end

