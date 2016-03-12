class RemovePictureUrlFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :picture_url, :string
  end
end
