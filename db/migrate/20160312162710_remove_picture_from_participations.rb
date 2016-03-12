class RemovePictureFromParticipations < ActiveRecord::Migration
  def change
    remove_column :participations, :picture, :string
  end
end
