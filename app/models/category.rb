class Category < ActiveRecord::Base
  # Not null
  self.primary_key = "CategoryID"
  validates :CategoryID, presence: true
  validates :CategoryName, presence: true
end
