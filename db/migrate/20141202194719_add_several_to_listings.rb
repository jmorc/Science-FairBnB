class AddSeveralToListings < ActiveRecord::Migration
  def change
    add_column :listings, :image_url, :string
    add_column :listings, :mass_spec, :string
    add_column :listings, :centrifuge, :string
    add_column :listings, :bunsen_burner, :string
  end
end
