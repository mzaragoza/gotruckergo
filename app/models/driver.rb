class Driver < ActiveRecord::Base
  belongs_to :truck
  has_many :receipts
  attr_accessible  :truck_id, :first_name, :last_name, :address, :address2, :city, :state, :zip, :cell, :email, :ssn,  :photo, :drivers_license, :pay_rate, :hire_date, :active, :bank_name, :bank_account_number, :bank_rauting_number, :double_triple_trailers, :passenger, :tank_vehicle, :hazardous_materials, :combination_of_tank_vehicle_and_hazardous_materials
  
  #  mount_uploader :photo, PhotoUploader

  def name
    full_name
  end
  def full_name
    first_name + ' ' + last_name
  end

end

