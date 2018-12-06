class CreateTaskLists < ActiveRecord::Migration[5.2]
  def change
    create_table :task_lists do |t|
      t.string :list_title
      t.integer :user_id

      t.timestamps
    end
  end
end
