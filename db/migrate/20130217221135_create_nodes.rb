class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string :name
      t.integer :position
      t.string :ancestry

      t.timestamps
    end
    add_index :nodes, :position
    add_index :nodes, :ancestry
  end
end
