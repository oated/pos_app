class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.references :product_category, null: false, foreign_key: {on_delete: :cascade}
      t.string :name, index: true
      t.float :price, default: 0
      t.string :description

      t.timestamps
    end
  end
end
