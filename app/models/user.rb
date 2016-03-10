class User < ActiveRecord::Base
  has_many :memberships
  has_many :groups, through: :memberships
  has_many :comments
  has_many :participations
  has_many :challenges, through: :participations
end
