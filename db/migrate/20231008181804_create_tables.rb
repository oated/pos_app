class CreateTables < ActiveRecord::Migration[7.0]
  def change
    create_table :tables do |t|
      t.string :number
      t.string :name
      t.references :table_status, null: false, foreign_key: {on_delete: :restrict}

      t.timestamps
    end
  end
end
