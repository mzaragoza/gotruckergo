class RenameVinTovehicleIdentificationNumber < ActiveRecord::Migration
  def up
    add_column :trucks, :vehicle_identification_number, :string, :default => ''
    add_column :trailers, :vehicle_identification_number, :string, :default => ''
  end

  def down
    remove_column :trucks, :vehicle_identification_number
    remove_column :trailers, :vehicle_identification_number
  end
end
