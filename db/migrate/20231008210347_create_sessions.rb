class CreateSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :sessions do |t|
      t.references :staff, null: false, foreign_key: {on_delete: :cascade}
      t.string :access_token, index: true
      t.datetime :expire_datetime
      t.boolean :is_enable, index: true

      t.timestamps
    end
  end
end
