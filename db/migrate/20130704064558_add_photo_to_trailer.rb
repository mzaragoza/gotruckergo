class AddPhotoToTrailer < ActiveRecord::Migration
  def self.up
    add_column :trailers, :photo, :string, :default => ''
  end
  def self.down
    remove_column :trailers, :photo
  end
end
