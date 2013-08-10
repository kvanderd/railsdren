class RoundsController < ApplicationController

	def create
		p "creating a round" * 9
		@round = Round.create(deck_id: params[:format])
		session[@round.id]
  	all_cards = @round.deck.cards
  	@shuffled_deck = all_cards.map { |card| card.id }.shuffle.to_json
		redirect_to round_path(@round.id)
	end
  
  def show
   round = Round.find(params[:id])
   all_cards = round.deck.cards
   @shuffled_deck = all_cards.map { |card| card.id }.shuffle
   @card = Card.find(@shuffled_deck[2]) 
  end


end