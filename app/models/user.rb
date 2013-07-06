class User < ActiveRecord::Base
  belongs_to :account
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :first_name, :last_name, :photo, :phone, :active, :is_owner, :is_primary, :account_id, :plan_slug, :account_attributes

  attr_accessor :updating_password
  attr_accessor :plan_slug
  accepts_nested_attributes_for :account
  mount_uploader :photo, PhotoUploader

  def name
    full_name
  end

  def full_name
    first_name + ' ' + last_name
  end
  def should_validate_password?
      updating_password || new_record?
  end
end
