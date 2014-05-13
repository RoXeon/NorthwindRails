class Territory < ActiveRecord::Base
  # Not null
  validates :TerritoryDescription, presence: true
  validates :region_id, presence: true


  belongs_to :region, inverse_of: :territories
  validates :region, presence: true
end
