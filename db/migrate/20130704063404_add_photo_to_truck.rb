class AddPhotoToTruck < ActiveRecord::Migration
  def self.up
    add_column :trucks, :photo, :string, :default => ''
  end
  def self.down
    remove_column :trucks, :photo
  end
end
