class CreateReceipts < ActiveRecord::Migration
  def up
    create_table :receipts do |t|
      t.integer :truck_id
      t.integer :driver_id
      t.string :receipt_date, :null => false, :default => ""
      t.string :galons, :null => false, :default => ""
      t.string :state, :null => false, :default => ""
      t.string :cost, :null => false, :default => ""
      t.string :odometer, :null => false, :default => ""
      t.string :credit_card_number, :null => false, :default => ""

      t.timestamps
    end
  end

  def down
    drop_table :receipts
  end
end
