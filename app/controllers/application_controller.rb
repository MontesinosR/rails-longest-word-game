class ApplicationController < ActionController::Base
  def new
    # Generar el array de diez letras.
    @letters = []
    10.times do
      @letters << ('a'..'z').to_a.sample
    end

    # Recoger input del usuario.

    # puts 'What is the longest word you can find?'
    # @answer = gets.chomp
  end

  # Iterar sobre las letras de la palabra elegida por le usuario. Si todas .include? @letters el usuario gana.

  def score
    @win = false
    @answer.split('').each do |letter|
      if @letters.include?(letter)
        @win = true
      else
        @win
      end
    end
  end
end
