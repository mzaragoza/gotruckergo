class AddAccountLogoOnHomeToAccounta < ActiveRecord::Migration
  def self.up
    add_column :accounts, :show_support, :boolean, :default => true
  end
  def self.down
    remove_column :accounts, :show_support
  end
end
