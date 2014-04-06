class Category < ActiveRecord::Base
  # Not null
  validates :CategoryID, presence: true
  validates :CategoryName, presence: true
end
