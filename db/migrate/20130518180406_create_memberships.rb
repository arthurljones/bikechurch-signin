class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :person_id, :null => false
      t.date :start_date, :null => false
      t.date :end_date, :null => false
      t.string :mail_address
      t.string :email_address
      t.string :phone_number
      t.integer :donation
      t.text :notes

      t.timestamps
    end
    
    add_index :memberships, :person_id, :unique => true
  end
end
