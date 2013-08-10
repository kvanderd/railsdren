class GradesController < ApplicationController

  def index
  	@grade_name = Grade.find(params[:id])
  end

  def new
  end

  def show
    @grade_name = Grade.find(params[:id])
  end

end
