class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.integer :position

      t.timestamps
    end
    add_index :lists, :position
  end
end
