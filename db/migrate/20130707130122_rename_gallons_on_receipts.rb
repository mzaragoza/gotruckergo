class RenameGallonsOnReceipts < ActiveRecord::Migration
  def up
    add_column :receipts, :fill_up_gallons, :string, :default => ''
  end

  def down
    remove_column :receipts, :fill_up_gallons
  end
end
