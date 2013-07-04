class Account < ActiveRecord::Base
  has_many :users
  attr_accessible :name,:address, :address2, :city, :state, :zip, :phone, :active ,:website,:photo

  before_validation { |account| account.zip = zip.to_s.gsub(/[^0-9]/, "").to_s }
  before_validation { |account| account.phone = phone.to_s.gsub(/[^0-9]/, "").to_s }

  mount_uploader :photo, PhotoUploader

end

