class UsState < ActiveRecord::Base
  self.primary_key = "StateID"

  # Not null
  validates :StateID, presence: true
end
