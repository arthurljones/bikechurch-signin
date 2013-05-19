class CreateBikeTypes < ActiveRecord::Migration
  def change
    create_table :bike_types do |t|
      t.string :name, :null => false

      t.timestamps
    end

    add_index :bike_types, :name, :unique => true
  end
end
