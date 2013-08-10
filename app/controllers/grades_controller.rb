class GradesController < ApplicationController

  def index
  
  end

  def new
  end

  def show
    @grade_name = Grade.find(params[:id])
  end

end
