class CreateStaffs < ActiveRecord::Migration[7.0]
  def change
    create_table :staffs do |t|
      t.string :username, index: true
      t.string :crypted_password
      t.string :display_name, index: true

      t.timestamps
    end

    add_index :staffs, [:username, :crypted_password]
  end
end
