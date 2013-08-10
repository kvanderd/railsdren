class CreateCards < ActiveRecord::Migration
 def change
 		create_table :cards do |t|
 			t.integer    :num1, :num2
 			t.string :operator
 			t.belongs_to :deck
 			t.timestamp
 		end
  end
end
