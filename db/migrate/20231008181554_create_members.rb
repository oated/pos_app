class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :cid
      t.string :name
      t.date :apply_date
      t.date :expire_date

      t.timestamps
    end
  end
end
