class DecksController < ApplicationController

  def index
  	@grade_name = Grade.find(params[:grade_id])
  end
end


