class CreateShopOccupants < ActiveRecord::Migration
  def change
    create_table :shop_occupants do |t|
      t.integer :person_id
      t.string :type

      t.timestamps
    end
  end
end
