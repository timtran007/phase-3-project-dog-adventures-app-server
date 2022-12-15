class CreateAdventures < ActiveRecord::Migration[6.1]
  def change
    create_table :adventures do |t|
      t.string :image_url
      t.date :date
      t.string :name_of_place
      t.string :location
      t.integer :rating
      t.string :notes
      t.timestamps
      t.integer :dog_id
    end
  end
end
