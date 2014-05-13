class Category < ActiveRecord::Base
  # Not null
  validates :CategoryName, presence: true
end
