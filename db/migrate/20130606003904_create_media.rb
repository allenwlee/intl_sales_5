class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :name
      t.integer :sale_id

      t.timestamps
    end
  end
end
