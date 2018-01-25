class RemoveDataFromSkills < ActiveRecord::Migration[5.1]
  def change
    remove_column :skills, :data, :float
  end
end
