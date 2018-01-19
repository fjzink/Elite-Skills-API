class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.string :skill
      t.text :description
      t.float :data
      t.string :measurement_unit
      t.integer :group_id

      t.timestamps
    end
  end
end
