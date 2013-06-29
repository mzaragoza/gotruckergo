class Truck < ActiveRecord::Base
  has_one :driver
  belongs_to :trailer
  attr_accessible :trailer_id, :name, :annual_inspection_date, :engine, :sleeper, :transmission, :suspension, :front_axel_capacity, :rear_axle_capacity, :rear_end_ratio, :wheelbase, :wheels, :tires, :odometer, :vim, :tag

end

