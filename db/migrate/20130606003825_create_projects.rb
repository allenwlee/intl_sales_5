class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.integer :user_id
      t.decimal :budget_size, :precision => 12, :scale => 2
      t.boolean :verified

      t.timestamps
    end
  end
end

