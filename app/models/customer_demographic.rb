class CustomerDemographic < ActiveRecord::Base
  validates :CustomerTypeID, presence: true
end
