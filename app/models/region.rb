class Region < ActiveRecord::Base
  # Not null
  validates :RegionDescription, presence: true

  has_many :territories, dependent: :restrict
end
