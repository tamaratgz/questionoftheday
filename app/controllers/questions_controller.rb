class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @youranswer = params[:youranswer]
    if @youranswer.blank?
      @tamaraanswer = "No has respondido... ¡Prueba otra vez!"
    elsif @youranswer == "Sí"
      @tamaraanswer = "¡Qué ilusión! Tienes mis datos de contacto abajo. Espero tus noticias. ☺️"
    elsif @youranswer == "No"
      @tamaraanswer = "Oh, me da mucha pena, ¡pero seguiré aprendiendo y lo seguiré intentando!"
    elsif @youranswer.ends_with?("?")
      @tamaraanswer = "Esto de responder a una pregunta con otra es muy gallego, ¿no?"
    else
      @tamaraanswer = "Te invito a que vuelvas a responder con 'Sí' (con la tilde). Pero no dudes en ver qué pasa si dejas tu respuesta en blanco y dices 'No'. 🙌"
    end
  end
end
