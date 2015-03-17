class Project < ActiveRecord::Base
	validates :title, presence: true,
				length: { minimum: 5 }

	def change
		create_table :projects do |t|
			t.string :title
			t.start_date :date
			t.end_date :date
			t.description :text
			
			t.timestamps null: false
		end
	end
	
end
