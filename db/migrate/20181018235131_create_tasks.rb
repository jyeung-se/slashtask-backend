class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :task_title
      t.string :task_description
      t.datetime :date_posted
      t.datetime :date_completed

      t.timestamps
    end
  end
end
