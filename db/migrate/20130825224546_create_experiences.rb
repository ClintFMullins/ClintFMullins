class CreateExperiences < ActiveRecord::Migration
  def change 
  	create_table :experiences do |t|
  		t.string   :name,					null: false
  		t.text     :description,	null: false
  		t.datetime :start_date,		null: false
  		t.datetime :end_date			
  		t.text     :lesson,				null: false
  		t.string   :type,					null: false
      t.string   :tags
  	end
  end
end
