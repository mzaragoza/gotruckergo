class AddAnnualInspectionToTrailer < ActiveRecord::Migration
  def self.up
    add_column :trailers, :trailer_type, :string, :default => ''
    add_column :trailers, :annual_inspection, :string, :default => ''
    add_column :trailers, :vented, :boolean, :default => false
  end
  def self.down
    remove_column :trailers, :annual_inspection
    remove_column :trailers, :vented, :boolean
    remove_column :trailers, :trailer_type
  end
end
