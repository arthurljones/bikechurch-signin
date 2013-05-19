class CreateOccupants < ActiveRecord::Migration
  def change
    create_table :occupants do |t|
      t.integer :person_id
      t.string :purpose

      t.timestamps
    end

    add_index :occupants, :person_id
  end
end
