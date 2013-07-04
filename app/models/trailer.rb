class Trailer < ActiveRecord::Base
  has_one :truck
  has_many :shipments
  attr_accessible :name, :length, :width, :height, :gross_vehicle_weight_rating, :suspension, :axle_capacity, :wheels, :tires, :vin, :tag, :type, :photo
end


