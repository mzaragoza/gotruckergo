class CreateLoads < ActiveRecord::Migration
  def up
    create_table :shipments do |t|
      t.integer :broker_id
      t.integer :truck_id
      t.string :load_number, :null => false, :default => ""
      t.string :price, :null => false, :default => ""
      t.string :miles, :null => false, :default => ""
      t.string :pick_up_location_address, :null => false, :default => ""
      t.string :pick_up_location_address2, :null => false, :default => ""
      t.string :pick_up_location_city, :null => false, :default => ""
      t.string :pick_up_location_state, :null => false, :default => ""
      t.string :pick_up_location_zip, :null => false, :default => ""
      t.string :pick_up_location_phone, :null => false, :default => ""
      t.string :delivery_location_address, :null => false, :default => ""
      t.string :delivery_location_address2, :null => false, :default => ""
      t.string :delivery_location_city, :null => false, :default => ""
      t.string :delivery_location_state, :null => false, :default => ""
      t.string :delivery_location_zip, :null => false, :default => ""
      t.string :delivery_location_phone, :null => false, :default => ""
      t.string :number_of_stops, :null => false, :default => ""
      t.text :notes, :null => false, :default => ""
      t.string :pick_up_date, :null => false, :default => ""
      t.string :deliver_date, :null => false, :default => ""
      t.string :status, :null => false, :default => ""
      t.string :weight, :null => false, :default => ""
      t.text :drivers_notes, :null => false, :default => ""
      t.string :packing, :null => false, :default => ""
      t.string :seal_number, :null => false, :default => ""
      t.boolean :double_triple_trailers, :default => false
      t.boolean :passenger, :default => false
      t.boolean :tank_vehicle, :default => false
      t.boolean :hazardous_materials
      t.string :suspension, :null => false, :default => ""
      t.string :paid_status, :null => false, :default => ""
      t.string :paid_date, :null => false, :default => ""
      t.string :load_conformation, :null => false, :default => ""
      t.string :equipment_type, :null => false, :default => ""
      t.string :size_of_trailer, :null => false, :default => ""
      t.string :pallets_pisses, :null => false, :default => ""
      t.string :pick_up_number, :null => false, :default => ""
      t.string :delivery_number, :null => false, :default => ""
      t.string :pick_up_earlier_time, :null => false, :default => ""
      t.string :pick_up_lateest_time, :null => false, :default => ""
      t.boolean :pick_up_appointment, :default => false
      t.string :delivery_earlier_time, :null => false, :default => ""
      t.string :delivery_lateest_time, :null => false, :default => ""
      t.string :trailer_type, :null => false, :default => ""
      t.boolean :delivery_appointment, :default => false

     t.timestamps
    end
  end

  def down
    drop_table :shipments
  end
end
