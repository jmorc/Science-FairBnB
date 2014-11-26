class Listing < ActiveRecord::Base
  attr_reader :title
  validates :title, :user_id, presence: true
  belongs_to :user
end