class User < ActiveRecord::Base
  has_many :memberships
  has_many :groups, through: :memberships
  has_many :created_groups, class_name: "Group", foreign_key: "creator_id"
  has_many :comments
  has_many :participations
  has_many :challenges, through: :participations

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  has_secure_password
  has_attached_file :image, :styles => {:medium => "200x200", :large => "500x500"}
  validates_attachment :image, :content_type => {:content_type => /^image\/(jpeg|png|gif|tiff)$/}

  def as_json(options={})
    super(options).merge(image_url: image.url, memberships: memberships)
  end

end
