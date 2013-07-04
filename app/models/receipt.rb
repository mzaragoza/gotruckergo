class Receipt < ActiveRecord::Base
  belongs_to :truck
  belongs_to :driver
  attr_accessible  :truck_id, :driver_id, :receipt_date, :gallons, :state, :cost, :odometer, :credit_card_number

  before_validation { |receipt| receipt.odometer = odometer.to_s.gsub(/[^0-9]/, "").to_s }
  before_validation { |receipt| receipt.credit_card_number = credit_card_number.to_s.gsub(/[^0-9]/, "").to_s }
end

