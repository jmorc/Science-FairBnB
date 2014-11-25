class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :password_digest, presence: true
      t.string :email, presence: true
      t.string :session_token, presence: true
    end
    
    add_index :users, :email
    add_index :users, :session_token
  end
end
