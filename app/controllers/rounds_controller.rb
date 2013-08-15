class RoundsController < ApplicationController

	def create
		@round = Round.create(deck_id: params[:format])
		session[@round.id]
		redirect_to round_path(@round.id)
	end
  
  def show
    @round = Round.find(params[:id])
    @card = @round.deck.cards.first
    # @deck_of_card_ids = all_cards.map { |card| card.id }
  end

  def new
    guess = (params[:guess])
    @round = Round.find(params[:round_id])
    @played_card = Card.find(params[:card_id])
    answer = @played_card.addition_answer(@played_card.num1, @played_card.num2 )
    answer == guess.to_i
      # if true
      #   render partial: "/rounds/correct"
      # else
      #   render partial: "/rounds/wrong"
      # end
    @card = Card.find(@played_card.id + 1) 
  end


end

# {
#           "utf8" => "✓",
#         "answer" => "17",
#       "round_id" => "32",
#        "card_id" => "2",
#         "commit" => "submit",
#         "action" => "new",
#     "controller" => "rounds"
# }




# def new
# if card.id is a multiple of 10 that is not 1 render complete partial else keep showing cards.