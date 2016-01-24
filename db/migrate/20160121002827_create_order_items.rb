class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.references :product, index: true, foreign_key: true
      t.integer :qtd
      t.references :order, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
