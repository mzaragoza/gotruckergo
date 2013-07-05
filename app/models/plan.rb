class Plan < ActiveRecord::Base
  #has_many :receipts
  attr_accessible :price, :name, :slug, :featured, :active, :licenses

end

