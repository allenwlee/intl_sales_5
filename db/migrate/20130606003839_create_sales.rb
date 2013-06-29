class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.decimal :bid, :ask, :close, :precision => 12, :scale => 2
      t.date :close_date
      t.integer :project_id
      t.integer :sale_history_id

      t.timestamps
    end
  end
end
