class CreateTableStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :table_statuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
