class AddLatitudeAndLongitudeToModel < ActiveRecord::Migration
  def change
    add_column :poopers, :latitude, :float
    add_column :poopers, :longitude, :float
  end
end
