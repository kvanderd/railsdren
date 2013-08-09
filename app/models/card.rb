# == Schema Information
#
# Table name: cards
#
#  id       :integer          not null, primary key
#  question :string(255)
#  answer   :string(255)
#  deck_id  :integer
#

class Card < ActiveRecord::Base
  belongs_to :deck
  has_many :users


  def correct?(guess)
  	#this method will call the answer method, the answer will be evaluated against the user guess 
    self.answer == guess
  end


  def answer(num1, num2, math_var)
  	num1 math_var num2
  end


  def hint
  end


end
