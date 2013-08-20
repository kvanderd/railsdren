class RoundsController < ApplicationController
 
	def create 
    puts "I am in deck create" * 9
    ap params
		@round = Round.create(deck_id: params[:deck_id])
		session[@round.id]
    # @round = Round.find(params[:id])
    @card = @round.deck.cards.first
    redirect_to new_round_guess_path(@round.id)
  end
  
  def show
      # respond_to do |format|
      #   format.html
      #   format.js 
      # end
    #can't get the js.erb file to work
  end

  def new
    guess = (params[:guess]).to_i
    @round = Round.find(params[:round_id])
    @played_card = Card.find(params[:card_id])
    @card = Card.find(@played_card.id + 1)
    @over = @played_card.over?(@played_card.id) 
    @state = @played_card.correct?(guess)
      # if state == false
      #   flash[:notice] = "You got it wrong" + "The correct answer it #{@played_card.addition_answer(@played_card.num1, @played_card.num2)}"
      # end
      # if state == true
      #   flash[:notice] = "you got it right" 
      # end
      # if over == true
      #   redirect_to root_path
      # end
      respond_to do |format|
        format.html
        format.js 
      end
  end
  
end