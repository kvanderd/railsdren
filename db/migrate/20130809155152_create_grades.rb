class CreateGrades < ActiveRecord::Migration
  def change
  	create_table :grades do |t|
  		t.integer :level
  	end
  end
end
