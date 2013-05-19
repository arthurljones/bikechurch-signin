class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.integer :person_id
      t.datetime :started
      t.datetime :ended
      t.text :notes
      t.string :purpose

      t.timestamps
    end

    add_index :visits, :person_id
    add_index :visits, :purpose
  end
end
