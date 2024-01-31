class CorreoController < ApplicationController
    def enviar_correo
        destinatario = params[:destinatario]
        asunto = params[:asunto]
        mensaje = params[:mensaje]
    
        begin
          mail = Mail.new do
            to destinatario
            subject asunto
            body mensaje
          end
    
          mail.deliver
    
          render json: { mensaje: 'Correo enviado con éxito' }
        rescue => e
          render json: { error: "Error al enviar el correo: #{e.message}" }, status: :unprocessable_entity
        end
      end
end
