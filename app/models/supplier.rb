class Supplier < ActiveRecord::Base
  # Not null
  validates :CompanyName, presence: true

  has_many :product, inverse_of: :supplier
end
