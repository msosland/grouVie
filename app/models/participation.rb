class Participation < ActiveRecord::Base
  belongs_to :user
  belongs_to :challenge

  # validates_attachment :image, :content_type => {:content_type => /^image\/(jpeg|png|gif|tiff)$/}
  do_not_validate_attachment_file_type :image
  has_attached_file :image, :styles => {:medium => "200x200", :large => "500x500"}

  def as_json(options={})
    super(options).merge(image_url: image.url, username: User.find(user_id).username)
  end
end

