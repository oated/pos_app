class CreateOrderItems < ActiveRecord::Migration[7.0]
  def change
    create_table :order_items do |t|
      t.references :order, null: false, foreign_key: {on_delete: :cascade}
      t.references :product, null: false, foreign_key: {on_delete: :restrict}
      t.string :product_name, default:0
      t.float :amount, default:0
      t.float :unit_price, default:0
      t.float :price, default:0
      t.references :order_item_status, null: false, foreign_key: {on_delete: :restrict}

      t.timestamps
    end
  end
end
