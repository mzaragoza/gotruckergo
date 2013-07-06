class AddInvoiceToRepairs < ActiveRecord::Migration
  def self.up
    add_column :repairs, :invoice, :string, :default => ''
  end
  def self.down
    remove_column :repairs, :invoice
  end
end
