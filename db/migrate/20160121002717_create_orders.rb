class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.date :data_compra

      t.timestamps null: false
    end
  end
end
