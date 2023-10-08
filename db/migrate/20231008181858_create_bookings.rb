class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :book_no, index: true
      t.date :book_date, index: true
      t.time :book_time
      t.references :table, null: false, foreign_key: {on_delete: :nullify}
      t.string :booker_name, index: true
      t.references :booking_status, null: false, foreign_key: {on_delete: :restrict}

      t.timestamps
    end
  end
end
