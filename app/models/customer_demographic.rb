class CustomerDemographic < ActiveRecord::Base
  # Not null
  validates :CustomerTypeID, presence: true
end
