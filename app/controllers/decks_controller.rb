class DecksController < ApplicationController

  def index
  	ap params
  	puts "Decks index controller" * 8
  	@grade_name = Grade.find(params[:grade_id])
  end

  def show
  	ap params
  	p "I am in decks show" * 8
  end

end


