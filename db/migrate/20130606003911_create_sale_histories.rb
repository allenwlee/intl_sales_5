class CreateSaleHistories < ActiveRecord::Migration
  def change
    create_table :sale_histories do |t|
      t.decimal :bid, :ask, :close, :precision => 12, :scale => 2
      t.date :close_date
      

      t.timestamps
    end
  end
end
