class CreateBills < ActiveRecord::Migration[7.0]
  def change
    create_table :bills do |t|
      t.string :bill_no, index: true
      t.date :open_date, index: true
      t.time :open_time
      t.date :close_date, index: true
      t.time :close_time
      t.references :bill_status, null: false, foreign_key: {on_delete: :restrict}
      t.references :open_staff, foreign_key: {to_table: :staffs, on_delete: :nullify}
      t.references :cashier_staff, foreign_key: {to_table: :staffs, on_delete: :nullify}
      t.references :cancel_staff, foreign_key: {to_table: :staffs, on_delete: :nullify}
      t.references :table, null: false, foreign_key: {on_delete: :nullify}
      t.references :booking, foreign_key: {on_delete: :nullify} 
      t.float :total_price, default: 0
      t.float :discount, default: 0
      t.float :price_after_discount, default: 0
      t.float :pay, default: 0
      t.float :changes, default: 0
      t.references :payment_type, null: false, foreign_key: {on_delete: :restrict}
      t.jsonb :properties
      t.references :member, foreign_key: {on_delete: :nullify}

      t.timestamps
    end
  end
end
