class Challenge < ActiveRecord::Base
  belongs_to :group
  has_many :participations
  has_many :participants, through: :participations, source: :user
end



