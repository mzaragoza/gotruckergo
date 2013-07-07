class AddManufacturerToTruck < ActiveRecord::Migration
  def self.up
    add_column :trucks, :truck_year, :string, :default => ''
    add_column :trucks, :manufacturer, :string, :default => ''
    add_column :trucks, :truck_model, :string, :default => ''
    add_column :trucks, :engine_specs, :string, :default => ''
    add_column :trucks, :engine_type, :string, :default => ''
    rename_column :trucks, :sleeper ,:sleeper_size
  end
  def self.down
    remove_column :trucks, :truck_year
    remove_column :trucks, :manufacturer
    remove_column :trucks, :truck_model
    remove_column :trucks, :engine_specs
    remove_column :trucks, :engine_type
    rename_column :trucks, :sleeper_size, :sleeper
  end
end
