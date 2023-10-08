# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_10_08_210347) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bill_statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bills", force: :cascade do |t|
    t.string "bill_no"
    t.date "open_date"
    t.time "open_time"
    t.date "close_date"
    t.time "close_time"
    t.bigint "bill_status_id", null: false
    t.bigint "open_staff_id"
    t.bigint "cashier_staff_id"
    t.bigint "cancel_staff_id"
    t.bigint "table_id", null: false
    t.bigint "booking_id"
    t.float "total_price", default: 0.0
    t.float "discount", default: 0.0
    t.float "price_after_discount", default: 0.0
    t.float "pay", default: 0.0
    t.float "changes", default: 0.0
    t.bigint "payment_type_id", null: false
    t.jsonb "properties"
    t.bigint "member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bill_no"], name: "index_bills_on_bill_no"
    t.index ["bill_status_id"], name: "index_bills_on_bill_status_id"
    t.index ["booking_id"], name: "index_bills_on_booking_id"
    t.index ["cancel_staff_id"], name: "index_bills_on_cancel_staff_id"
    t.index ["cashier_staff_id"], name: "index_bills_on_cashier_staff_id"
    t.index ["close_date"], name: "index_bills_on_close_date"
    t.index ["member_id"], name: "index_bills_on_member_id"
    t.index ["open_date"], name: "index_bills_on_open_date"
    t.index ["open_staff_id"], name: "index_bills_on_open_staff_id"
    t.index ["payment_type_id"], name: "index_bills_on_payment_type_id"
    t.index ["table_id"], name: "index_bills_on_table_id"
  end

  create_table "booking_statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.string "book_no"
    t.date "book_date"
    t.time "book_time"
    t.bigint "table_id", null: false
    t.string "booker_name"
    t.bigint "booking_status_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_date"], name: "index_bookings_on_book_date"
    t.index ["book_no"], name: "index_bookings_on_book_no"
    t.index ["booker_name"], name: "index_bookings_on_booker_name"
    t.index ["booking_status_id"], name: "index_bookings_on_booking_status_id"
    t.index ["table_id"], name: "index_bookings_on_table_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "cid"
    t.string "name"
    t.date "apply_date"
    t.date "expire_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_item_statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.bigint "product_id", null: false
    t.string "product_name", default: "0"
    t.float "amount", default: 0.0
    t.float "unit_price", default: 0.0
    t.float "price", default: 0.0
    t.bigint "order_item_status_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["order_item_status_id"], name: "index_order_items_on_order_item_status_id"
    t.index ["product_id"], name: "index_order_items_on_product_id"
  end

  create_table "order_time_statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "bill_id", null: false
    t.string "order_no"
    t.bigint "order_staff_id", null: false
    t.date "order_date"
    t.time "order_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bill_id"], name: "index_orders_on_bill_id"
    t.index ["order_date"], name: "index_orders_on_order_date"
    t.index ["order_no"], name: "index_orders_on_order_no"
    t.index ["order_staff_id"], name: "index_orders_on_order_staff_id"
  end

  create_table "payment_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_product_categories_on_name"
  end

  create_table "products", force: :cascade do |t|
    t.bigint "product_category_id", null: false
    t.string "name"
    t.float "price", default: 0.0
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_products_on_name"
    t.index ["product_category_id"], name: "index_products_on_product_category_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.bigint "staff_id", null: false
    t.string "access_token"
    t.datetime "expire_datetime"
    t.boolean "is_enable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["access_token"], name: "index_sessions_on_access_token"
    t.index ["is_enable"], name: "index_sessions_on_is_enable"
    t.index ["staff_id"], name: "index_sessions_on_staff_id"
  end

  create_table "staffs", force: :cascade do |t|
    t.string "username"
    t.string "crypted_password"
    t.string "display_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["display_name"], name: "index_staffs_on_display_name"
    t.index ["username", "crypted_password"], name: "index_staffs_on_username_and_crypted_password"
    t.index ["username"], name: "index_staffs_on_username"
  end

  create_table "table_statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tables", force: :cascade do |t|
    t.string "number"
    t.string "name"
    t.bigint "table_status_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["table_status_id"], name: "index_tables_on_table_status_id"
  end

  add_foreign_key "bills", "bill_statuses", on_delete: :restrict
  add_foreign_key "bills", "bookings", on_delete: :nullify
  add_foreign_key "bills", "members", on_delete: :nullify
  add_foreign_key "bills", "payment_types", on_delete: :restrict
  add_foreign_key "bills", "staffs", column: "cancel_staff_id", on_delete: :nullify
  add_foreign_key "bills", "staffs", column: "cashier_staff_id", on_delete: :nullify
  add_foreign_key "bills", "staffs", column: "open_staff_id", on_delete: :nullify
  add_foreign_key "bills", "tables", on_delete: :nullify
  add_foreign_key "bookings", "booking_statuses", on_delete: :restrict
  add_foreign_key "bookings", "tables", on_delete: :nullify
  add_foreign_key "order_items", "order_item_statuses", on_delete: :restrict
  add_foreign_key "order_items", "orders", on_delete: :cascade
  add_foreign_key "order_items", "products", on_delete: :restrict
  add_foreign_key "orders", "bills", on_delete: :cascade
  add_foreign_key "orders", "staffs", column: "order_staff_id", on_delete: :nullify
  add_foreign_key "products", "product_categories", on_delete: :cascade
  add_foreign_key "sessions", "staffs", on_delete: :cascade
  add_foreign_key "tables", "table_statuses", on_delete: :restrict
end
