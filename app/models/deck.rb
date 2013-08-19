# == Schema Information
#
# Table name: decks
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  level      :integer
#  grade_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Deck < ActiveRecord::Base
  has_many :users, :through => :rounds
  has_many :cards
  has_many :rounds
  belongs_to :grade
  attr_accessible :name, :level, :grade_id


  def to_param
  "#{id}-#{name}".parameterize
  end
end
