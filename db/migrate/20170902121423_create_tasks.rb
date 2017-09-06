class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :status
      t.references :list, index: true, foreign_key: true
      t.datetime :deadline
      t.integer :position

      t.timestamps null: false
    end
  end
end
