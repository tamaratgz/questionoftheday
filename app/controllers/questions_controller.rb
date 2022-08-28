class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @youranswer = params[:youranswer].capitalize
    if @youranswer.blank?
      @myanswer = "😶 No has respondido... ¡Prueba otra vez!"
    elsif @youranswer == "Sí" || "Si"
      @myanswer = "🎉 ¡Qué ilusión! Tienes mis datos de contacto abajo. Espero tus noticias."
    elsif @youranswer == "No"
      @myanswer = "😕 Oh, me da mucha pena, ¡pero seguiré aprendiendo y lo seguiré intentando!"
    elsif @youranswer.ends_with?("?")
      @myanswer = "🤔 Esto de responder a una pregunta con otra es muy gallego, ¿no?"
    else
      @myanswer = "Te invito a que vuelvas a responder con 'Sí'. Pero no dudes en ver qué pasa si dejas tu respuesta en blanco o si dices 'No'. 🙌"
    end
  end
end
