class Truck < ActiveRecord::Base
  has_one :driver
  belongs_to :trailer
  has_many :shipments
  has_many :receipts
  attr_accessible :trailer_id, :name, :annual_inspection_date, :engine, :sleeper, :transmission, :suspension, :front_axel_capacity, :rear_axle_capacity, :rear_end_ratio, :wheelbase, :wheels, :tires, :odometer, :vin, :tag, :photo

  mount_uploader :photo, PhotoUploader
end

