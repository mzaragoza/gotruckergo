# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130629191812) do

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "",   :null => false
    t.string   "encrypted_password",     :default => "",   :null => false
    t.string   "first_name",             :default => "",   :null => false
    t.string   "last_name",              :default => "",   :null => false
    t.string   "photo",                  :default => "",   :null => false
    t.string   "phone",                  :default => "",   :null => false
    t.boolean  "active",                 :default => true, :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  add_index "admins", ["authentication_token"], :name => "index_admins_on_authentication_token", :unique => true
  add_index "admins", ["confirmation_token"], :name => "index_admins_on_confirmation_token", :unique => true
  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true
  add_index "admins", ["unlock_token"], :name => "index_admins_on_unlock_token", :unique => true

  create_table "drivers", :force => true do |t|
    t.integer  "truck_id"
    t.string   "first_name",                                          :default => "",    :null => false
    t.string   "last_name",                                           :default => "",    :null => false
    t.string   "address",                                             :default => "",    :null => false
    t.string   "address2",                                            :default => "",    :null => false
    t.string   "city",                                                :default => "",    :null => false
    t.string   "state",                                               :default => "",    :null => false
    t.string   "zip",                                                 :default => "",    :null => false
    t.string   "cell",                                                :default => "",    :null => false
    t.string   "email",                                               :default => "",    :null => false
    t.string   "ssn",                                                 :default => "",    :null => false
    t.string   "photo",                                               :default => "",    :null => false
    t.string   "drivers_license",                                     :default => "",    :null => false
    t.string   "pay_rate",                                            :default => "",    :null => false
    t.string   "hire_date",                                           :default => "",    :null => false
    t.boolean  "active",                                              :default => true
    t.string   "bank_name",                                           :default => "",    :null => false
    t.string   "bank_account_number",                                 :default => "",    :null => false
    t.string   "bank_rauting_number",                                 :default => "",    :null => false
    t.boolean  "double_triple_trailers",                              :default => false
    t.boolean  "passenger",                                           :default => false
    t.boolean  "tank_vehicle",                                        :default => false
    t.boolean  "hazardous_materials",                                 :default => false
    t.boolean  "combination_of_tank_vehicle_and_hazardous_materials", :default => false
    t.datetime "created_at",                                                             :null => false
    t.datetime "updated_at",                                                             :null => false
  end

  create_table "trucks", :force => true do |t|
    t.integer  "trailer_id"
    t.string   "name",                   :default => "", :null => false
    t.string   "annual_inspection_date"
    t.string   "engine"
    t.string   "sleeper"
    t.string   "transmission"
    t.string   "suspension"
    t.string   "front_axel_capacity"
    t.string   "rear_axle_capacity"
    t.string   "rear_end_ratio"
    t.string   "wheelbase"
    t.string   "wheels"
    t.string   "tires"
    t.string   "odometer"
    t.string   "vim"
    t.string   "tag"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

end
