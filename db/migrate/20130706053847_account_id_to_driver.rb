class AccountIdToDriver < ActiveRecord::Migration
  def up
    add_column :drivers, :account_id, :integer
    add_column :trucks, :account_id, :integer
    add_column :trailers, :account_id, :integer
    add_column :brokers, :account_id, :integer
    add_column :shipments, :account_id, :integer
    add_column :receipts, :account_id, :integer
    add_column :repairs, :account_id, :integer
  end

  def down
    remove_column :drivers, :account_id
    remove_column :trucks, :account_id
    remove_column :trailers, :account_id
    remove_column :brokers, :account_id
    remove_column :shipments, :account_id
    remove_column :receipts, :account_id
    remove_column :repairs, :account_id
  end
end
