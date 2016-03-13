class Participation < ActiveRecord::Base
  belongs_to :user
  belongs_to :challenge

  has_attached_file :image, :styles => {:medium => "200x200", :large => "500x500"}
  validates_attachment :image, :content_type => {:content_type => /^image\/(jpeg|png|gif|tiff)$/}

  def as_json(options={})
    super(options).merge(image_url: image.url, username: User.find(user_id).username)
  end
end
