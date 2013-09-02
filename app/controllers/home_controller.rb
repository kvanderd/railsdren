class HomeController < ApplicationController

  def index
  	@grades = Grade.all
  end

  def show
  end
  
end