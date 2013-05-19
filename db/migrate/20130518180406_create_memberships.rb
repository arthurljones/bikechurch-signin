class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :person_id
      t.date :start_date
      t.date :end_date
      t.string :mail_address
      t.string :email_address
      t.string :phone_number
      t.integer :donation
      t.text :notes

      t.timestamps
    end
    
    add_index :memberships, :person_id
  end
end
