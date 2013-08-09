# == Schema Information
#
# Table name: grades
#
#  id    :integer          not null, primary key
#  level :integer
#

class Grade < ActiveRecord::Base
	has_many :decks
	has_many :users
end
