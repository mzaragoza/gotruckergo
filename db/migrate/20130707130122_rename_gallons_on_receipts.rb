class RenameGallonsOnReceipts < ActiveRecord::Migration
  def up
    rename_column :receipts, :gallons, :fill_up_gallons
  end

  def down
    rename_column :receipts, :fill_up_gallons, :gallons
  end
end
