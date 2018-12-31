class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.boolean :slashed, default: false, null: false
      t.integer :likes, default: 0
      t.integer :task_list_id

      t.timestamps
    end
  end
end
