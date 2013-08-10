class CreateDecks < ActiveRecord::Migration
	def change
		create_table :decks do |t|
			t.string :name
			t.integer :level
			t.belongs_to :grade
			t.timestamps
		end
	end
end
