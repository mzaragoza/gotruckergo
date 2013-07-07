class AddTrailersIdToShipments < ActiveRecord::Migration
  def self.up
    add_column :shipments, :testing, :integer
  end
  def self.down
    remove_column :shipments, :testing
  end
end
