class RenameTagWithVehicleTag < ActiveRecord::Migration
  def up
    add_column :trucks, :vehicle_tag, :string, :default => ''
    add_column :trailers, :vehicle_tag, :string, :default => ''
  end

  def down
    remove_column :trucks, :vehicle_tag
    remove_column :trailers, :vehicle_tag
  end
end
