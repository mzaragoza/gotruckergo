class AddAnualSalesPriceToPlans < ActiveRecord::Migration
  def self.up
    add_column :plans, :anual_price, :decimal
    add_column :plans, :monthy_price, :decimal
  end
  def self.down
    remove_column :plans, :anual_price
    remove_column :plans, :monthy_price
  end
end
