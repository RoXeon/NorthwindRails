class UsState < ActiveRecord::Base
  # Not null
  validates :StateID, presence: true


end
