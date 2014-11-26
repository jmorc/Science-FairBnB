class Listing < ActiveRecord::Base
  validates :title, :user_id, presence: true
  belongs_to :user
  
  def is_member?(user)
    return true if user.id == self.user_id
  end
  
end