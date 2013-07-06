class Truck < ActiveRecord::Base
  has_one :driver
  belongs_to :trailer
  belongs_to :account
  has_many :shipments
  has_many :receipts
  attr_accessible :trailer_id, :name, :annual_inspection_date, :engine, :sleeper, :transmission, :suspension, :front_axel_capacity, :rear_axle_capacity, :rear_end_ratio, :wheelbase, :wheels, :tires, :odometer, :vin, :tag, :photo, :account_id, :vehicle_identification_number, :vehicle_tag

  validates_uniqueness_of :name, :scope => :account_id
  mount_uploader :photo, PhotoUploader
end

