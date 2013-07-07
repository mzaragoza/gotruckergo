class AddCostToReceipts < ActiveRecord::Migration
  def self.up
    add_column :receipts, :cost2, :decimal
    add_column :repairs, :total2, :decimal
  end
  def self.down
    remove_column :receipts, :cost2
    remove_column :repairs, :total2
  end
end
