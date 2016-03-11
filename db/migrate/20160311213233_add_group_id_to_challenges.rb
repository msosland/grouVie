class AddGroupIdToChallenges < ActiveRecord::Migration
  def change
  	add_column :challenges, :group_id, :integer
  end
end
