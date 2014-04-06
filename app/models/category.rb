class Category < ActiveRecord::Base
  validates :CategoryID, presence: true
  validates :CategoryName, presence: true
end
