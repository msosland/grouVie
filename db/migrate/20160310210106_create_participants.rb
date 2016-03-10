class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.references :user
      t.references :challenge
      t.boolean :completed, :default => false
      t.string :picture


      t.timestamps null: false
    end
  end
end
