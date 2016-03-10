class Group < ActiveRecord::Base
  has_many :comments
  has_many :challenges
  has_many :memberships
  has_many :users, through: :memberships
end
