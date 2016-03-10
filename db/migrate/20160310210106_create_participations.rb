class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.references :user
      t.references :challenge
      t.boolean :completed, :default => false
      t.string :picture


      t.timestamps null: false
    end
  end
end
