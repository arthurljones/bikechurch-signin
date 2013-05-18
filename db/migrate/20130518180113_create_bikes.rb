class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.integer :person_id
      t.string :type
      t.string :color
      t.string :brand
      t.string :model
      t.string :serial

      t.timestamps
    end
  end
end
