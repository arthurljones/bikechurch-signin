class CreateOccupants < ActiveRecord::Migration
  def change
    create_table :occupants do |t|
      t.integer :person_id, :null => false
      t.integer :purpose_id, :null => false

      t.timestamps
    end

    add_index :occupants, :person_id, :unique => true
  end
end
