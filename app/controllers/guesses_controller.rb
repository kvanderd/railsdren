class GuessesController < ApplicationController

  def new
  	@round = Round.find(params[:round_id])
  	@new_card = @round.deck.cards.first
  	# @played_card = Card.find(params[:card_id])
  end

  def create
  	@round = Round.find(params[:round_id])
  	guess = params[:guess].to_i
  	@played_card = Card.find(params[:card_id])
  	@state = @played_card.correct?(guess) 
    @answer = @played_card.addition_answer(@played_card.num1, @played_card.num2)
  	@guess = Guess.create!(is_correct: @state, round_id: @round.id, card_id: @played_card.id)
  	@over = @played_card.over?(@played_card.id)
  	@new_card = Card.find(@played_card.id + 1)
  	# redirect_to show_round_guess_path(card_id: @card.id)
  	respond_to do |format|
        format.html
        format.js 
      end
  end


end

    #  case
    # when @user.student?
    #   student_home
    # when @user.admin?
    #   admin_home
    # when @user.instructor
    #   instructor_home
    # else
    #   # Unknown user type? Render error or use a default.         