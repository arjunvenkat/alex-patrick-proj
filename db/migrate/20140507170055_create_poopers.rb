class CreatePoopers < ActiveRecord::Migration
  def change
    create_table :poopers do |t|
      t.string :interesection
      t.integer :quality
      t.string :price
      
      t.timestamps
    end
  end
end
