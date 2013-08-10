class GradesController < ApplicationController

  def show
    @grade_name = Grade.find(params[:id])
  end

end
