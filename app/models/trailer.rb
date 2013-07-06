class Trailer < ActiveRecord::Base
  has_one :truck
  has_many :shipments
  belongs_to :account
  attr_accessible :name, :length, :width, :height, :gross_vehicle_weight_rating, :suspension, :axle_capacity, :wheels, :tires, :vin, :tag, :type, :photo, :account_id
  
  validates_uniqueness_of :name, :scope => :account_id
  mount_uploader :photo, PhotoUploader
end


