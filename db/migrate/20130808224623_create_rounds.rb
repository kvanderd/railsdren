class CreateRounds < ActiveRecord::Migration
  def change 
  	create_table :rounds do |t|
  		t.belongs_to :deck
  		t.belongs_to :user
  		t.timestamp
  	end
  end
end
