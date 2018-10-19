class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      # t.datetime :date_posted     // Do not need date_posted since the t.timestamps has date_created
      t.datetime :date_completed

      t.timestamps
    end
  end
end
