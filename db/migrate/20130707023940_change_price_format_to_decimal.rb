class ChangePriceFormatToDecimal < ActiveRecord::Migration
  def up
     add_column :shipments, :price2, :decimal
     add_column :shipments, :miles2, :integer
     add_column :shipments, :weight2, :integer
  end

  def down
     Shipment.delete_all
     remove_column :shipments, :price2
     remove_column :shipments, :miles2
     remove_column :shipments, :weight2
  end
end
