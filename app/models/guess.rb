class Guess < ActiveRecord::Base
  belongs_to :deck
  belongs_to :card
  attr_accessible :is_correct, :round_id, :card_id
end