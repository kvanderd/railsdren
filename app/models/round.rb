# == Schema Information
#
# Table name: rounds
#
#  id      :integer          not null, primary key
#  deck_id :integer
#  user_id :integer
#

class Round < ActiveRecord::Base
	belongs_to :user
  belongs_to :deck
  has_many :guesses
  attr_accessible :deck_id, :user_id
end
