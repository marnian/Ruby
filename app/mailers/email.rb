class Email < ApplicationMailer
deliver
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.email.recepcion.subject
  #
  def recepcion
    @greeting = "Hi"

    mail to: "mamuecar@gmail.com", :subject=>"Nuestro primer correo"
  end
end
