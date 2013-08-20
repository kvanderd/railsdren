# == Schema Information
#
# Table name: cards
#
#  id       :integer          not null, primary key
#  num1     :integer
#  num2     :integer
#  operator :string(255)
#  deck_id  :integer
#

class Card < ActiveRecord::Base
  belongs_to :deck
  has_many :users
  has_many :guesses
  attr_accessible :num1, :num2, :operator, :deck_id
  

  def correct?(guess)
  	#this method will call the answer method, the answer will be evaluated against the user guess 
    self.addition_answer(self.num1, self.num2) == guess
  end


  def addition_answer(num1, num2)
  	num1 + num2
  end

  def over?(card_id)
    card_id % 10 == 0
  end


  def hint
  end


end
