class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :bill, null: false, foreign_key: {on_delete: :cascade}
      t.string :order_no, index: true
      t.references :order_staff, foreign_key: {to_table: :staffs, on_delete: :nullify}
      t.date :order_date, index: true
      t.time :order_time

      t.timestamps
    end
  end
end
