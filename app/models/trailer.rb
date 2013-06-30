class Trailer < ActiveRecord::Base
  has_one :truck  
  attr_accessible :name, :length, :width, :height, :gross_vehicle_weight_rating, :suspension, :axle_capacity, :wheels, :tires, :vim, :tag, :type
end


