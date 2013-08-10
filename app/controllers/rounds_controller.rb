class RoundsController < ApplicationController

	def new
		@round = Round.create(deck_id: params[:deck_id])
		session[@round_id]
		@cards = Deck.find(params[:deck_id]).cards
		#this puts the cards in the order they will be rendered
		@shuffled_deck = @cards.map { |card| card.id }.shuffle.to_json
		#this is a shuffled deck of card_ids.
		#show one at a time. When 10 cards have been shown, end
		@shuffled_deck
	end
  
  def show
  	ap params
  end

  def index
  end

end