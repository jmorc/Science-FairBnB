class AddSeveralToUsers < ActiveRecord::Migration
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :image_url, :string
    add_column :users, :disposition, :string
  end
end
