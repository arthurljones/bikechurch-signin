class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.integer :person_id, :null => false
      t.datetime :started, :null => false
      t.integer :purpose_id, :null => false
      t.datetime :ended
      t.text :notes

      t.timestamps
    end

    add_index :visits, :person_id
    add_index :visits, :purpose
  end
end
