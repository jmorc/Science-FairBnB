class AddJumboImageUrlToListings < ActiveRecord::Migration
  def change
    add_column :listings, :jumbo_image_url, :string
  end
end
