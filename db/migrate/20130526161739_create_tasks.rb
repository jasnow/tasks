class CreateTasks < ActiveRecord::Migration[4.2]
  def change
    create_table :tasks do |t|
      t.string :task

      t.timestamps null: false
    end
  end
end
