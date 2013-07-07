class ChangePriceFormatToDecimal < ActiveRecord::Migration
  def up
     change_column :shipments, :price, :decimal
     change_column :shipments, :miles, :integer
     change_column :shipments, :weight, :integer
  end

  def down
     change_column :shipments, :price, :string
     change_column :shipments, :miles, :string
     change_column :shipments, :weight, :string
  end
end
