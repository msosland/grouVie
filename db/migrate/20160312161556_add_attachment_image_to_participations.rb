class AddAttachmentImageToParticipations < ActiveRecord::Migration
  def self.up
    change_table :participations do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :participations, :image
  end
end
