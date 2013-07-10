class Lead < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email, :message, :phone, :address, :address2, :city, :state, :zip, :status, :remoteip, :newsletter, :conversion_date


  before_validation { |lead| lead.zip = zip.to_s.gsub(/[^0-9]/, "").to_s }
  before_validation { |lead| lead.phone = phone.to_s.gsub(/[^0-9]/, "").to_s }
end
