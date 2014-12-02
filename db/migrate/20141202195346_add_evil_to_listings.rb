class AddEvilToListings < ActiveRecord::Migration
  def change
    add_column :listings, :evil, :string
  end
end
