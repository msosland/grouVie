class Group < ActiveRecord::Base
  belongs_to :creator, class_name: "User"
  has_many :comments
  has_many :challenges
  has_many :memberships
  has_many :members, through: :memberships, source: :user
end
