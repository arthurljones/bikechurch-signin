class CreateShopTimes < ActiveRecord::Migration
  def change
    create_table :shop_times do |t|
      t.integer :person_id
      t.datetime :start
      t.datetime :end
      t.text :notes
      t.string :type

      t.timestamps
    end
  end
end
