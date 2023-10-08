class CreateOrderItemStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :order_item_statuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
