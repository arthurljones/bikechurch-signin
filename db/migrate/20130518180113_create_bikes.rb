class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.integer :owner_id
      t.integer :bike_type_id
      t.string :color
      t.string :brand
      t.string :model
      t.string :serial

      t.timestamps
    end
    
    add_index :bikes, :owner_id
    add_index :bikes, :bike_type_id
  end
end
