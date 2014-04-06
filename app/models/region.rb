class Region < ActiveRecord::Base
  # Not null
  validates :RegionID, presence: true, uniqueness: true
  validates :RegionDescription, presence: true

  has_many :territories, primary_key: "RegionID", foreign_key: "RegionID", dependent: :restrict
end
