class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :user_id, null: false
      t.string :title, null: false
      t.string :address
      t.integer :num_beds
      t.integer :num_guests
      t.integer :num_bedrooms
    end
  end
end
