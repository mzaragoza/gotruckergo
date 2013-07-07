class AddSubscrtiptionTypeToSubsctiptions < ActiveRecord::Migration
  def self.up
    add_column :subscriptions, :subscriptions_type, :string
  end
  def self.down
    remove_column :subscriptions, :subscriptions_type
  end
end
