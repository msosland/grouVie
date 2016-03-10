class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user
      t.references :group
      t.text :content, null: false

      t.timestamps null: false
    end
  end
end
