class Shipment < ActiveRecord::Base
  belongs_to :broker
  belongs_to :truck
  attr_accessible :broker_id, :truck_id, :load_number, :price, :miles, :pick_up_location_address, :pick_up_location_address2, :pick_up_location_city, :pick_up_location_state, :pick_up_location_zip, :delivery_location_address, :delivery_location_address2, :delivery_location_city, :delivery_location_state, :delivery_location_zip, :number_of_stops, :notes, :pick_up_date, :deliver_date, :status, :weight, :drivers_notes, :packing, :seal_number, :double_triple_trailers, :passenger, :tank_vehicls, :hazardous_materials, :suspension, :paid_status, :paid_date, :load_conformation, :delivery_location_phone, :pick_up_location_phone, :equipment_type, :size_of_trailer, :pallets_pisses, :pick_up_number, :delivery_number, :pick_up_earlier_time, :pick_up_lateest_time, :pick_up_appointment, :delivery_earlier_time, :delivery_lateest_time, :trailer_type
end


