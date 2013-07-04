class CreateRepairs < ActiveRecord::Migration

  def up
    create_table :repairs do |t|
      t.integer :truck_id
      t.integer :trailer_id
      t.string :service_provider_name, :null => false, :default => ""
      t.string :service_provider_address, :null => false, :default => ""
      t.string :service_provider_address2, :null => false, :default => ""
      t.string :service_provider_city, :null => false, :default => ""
      t.string :service_provider_state, :null => false, :default => ""
      t.string :service_provider_zip, :null => false, :default => ""
      t.string :service_provider_fax, :null => false, :default => ""
      t.string :service_provider_phone, :null => false, :default => ""
      t.string :delivery_date, :null => false, :default => ""
      t.string :return_date, :null => false, :default => ""
      t.string :payment_info, :null => false, :default => ""
      t.string :invoice_date, :null => false, :default => ""
      t.string :invoice_number, :null => false, :default => ""
      t.text :details, :null => false, :default => ""
      t.string :labor, :null => false, :default => ""
      t.string :parts, :null => false, :default => ""
      t.string :tax, :null => false, :default => ""
      t.string :total, :null => false, :default => ""

      t.timestamps
    end
  end
  def down
    drop_table :repairs
  end
end
