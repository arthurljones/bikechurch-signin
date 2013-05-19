class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.integer :owner_id, :null => false
      t.integer :bike_type_id, :null => false
      t.string :color, :null => false
      t.string :brand, :null => false
      t.string :model, :null => false
      t.string :serial, :null => false

      t.timestamps
    end
    
    add_index :bikes, :owner_id
    add_index :bikes, :bike_type_id
  end
end
