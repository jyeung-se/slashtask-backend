class CreateSlashedTaskLists < ActiveRecord::Migration[5.2]
  def change
    create_table :slashed_task_lists do |t|
      t.string :list_title
      t.integer :user_id
      t.integer :task_id

      t.timestamps
    end
  end
end
