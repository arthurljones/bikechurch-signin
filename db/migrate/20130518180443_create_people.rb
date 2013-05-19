class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name, :null => false
      t.string :last_name

      t.integer :bikes_count

      t.timestamps
    end

    add_index :people, :first_name
    add_index :people, :last_name
    add_index :people, [:first_name, :last_name], :unique => true
  end
end
