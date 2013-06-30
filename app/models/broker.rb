class Broker < ActiveRecord::Base
  has_many :shipments
  attr_accessible :name, :phone, :address, :address2, :city, :state, :zip, :fax, :email, :website, :motor_carrier_number
end

