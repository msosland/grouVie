class UsersController < ApplicationController
  # s3 = Aws::S3::Resource.new(region:'us-west-2')
  # obj = s3.bucket('bucket-name').object('key')
  # obj.upload_file('/path/to/source/file')
  def index
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to 'root'
     else
       redirect_to 'root'
    end
  end

  private

  def user_params
    params.require(:user).permit(:image, :name)
  end
end