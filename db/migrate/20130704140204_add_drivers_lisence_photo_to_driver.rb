class AddDriversLisencePhotoToDriver < ActiveRecord::Migration
  def self.up
    add_column :drivers, :drivers_license_photo, :string, :default => ''
  end
  def self.down
    remove_column :drivers, :drivers_license_photo
  end
end
