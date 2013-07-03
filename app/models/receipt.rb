class Receipt < ActiveRecord::Base
  belongs_to :truck
  belongs_to :driver
  attr_accessible  :truck_id, :driver_id, :receipt_date, :gallons, :state, :cost, :odometer, :credit_card_number
end

