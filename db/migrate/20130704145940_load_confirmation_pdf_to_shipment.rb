class LoadConfirmationPdfToShipment < ActiveRecord::Migration
  def self.up
    add_column :shipments, :load_conformation_pdf, :string, :default => ''
  end
  def self.down
    remove_column :shipments, :load_conformation_pdf
  end
end
