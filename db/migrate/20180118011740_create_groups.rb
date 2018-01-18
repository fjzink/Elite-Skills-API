class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :group
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
