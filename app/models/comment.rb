class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :group

  def as_json(options={})
    super(options).merge(username: User.find(user_id).username)
  end
end
