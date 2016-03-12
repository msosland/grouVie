class Challenge < ActiveRecord::Base
  belongs_to :group
  has_many :participations
  has_many :participants, through: :participations, source: :user

  def as_json(options={})
    super(options).merge(participants: participants, participations: participations)
  end
end



