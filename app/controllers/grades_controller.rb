class GradesController < ApplicationController

  def show
    @grade_name = Grade.find(params[:id])
    @addition = @grade_name.decks.where(name: "Addition")
    @subtraction   = @grade_name.decks.where(name: "Subtraction")
  end

end
