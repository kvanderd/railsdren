# == Schema Information
#
# Table name: decks
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Deck < ActiveRecord::Base
  has_many :users, :through => :rounds
  has_many :cards
  has_many :rounds
  belongs_to :grade
end
