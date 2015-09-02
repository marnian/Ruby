class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery 
  before_filter :contador_peticiones

  private

  def contador_peticiones
  	valor = (cookies[:peticiones] || "0").to_i
  	cookies[:peticiones] =(valor +1)to_s
  	@peticiones = cookies[:peticiones]
  end
  
end
