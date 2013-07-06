Fabricator(:truck) do
  name { Faker::Name.first_name }
  annual_inspection_date {DateTime.now}
  engine {'Cummins ISX 400'}
  sleeper{'70" Premium Hig'}
  transmission {'9 Speed'}
  suspension {'Air Ride'}
  front_axel_capacity {'12,000 lbs'}
  rear_axle_capacity {'34,000 lbs'}
  rear_end_ratio {'3.58'}
  wheelbase {'236"'}
  wheels {'Aluminum'}
  tires {'295/75R22.5G'}
  odometer {rand(1000000000)}
  vin { (0...18).map{(65+rand(26)).chr}.join }
  vehicle_identification_number { (0...18).map{(65+rand(26)).chr}.join }
  tag {(0...8).map{(65+rand(26)).chr}.join}
  
  after_build do |t|
    t.trailer ||= Trailer.last || Fabricate(:trailer)
    t.account ||= Account.last || Fabricate(:account)
  end  
end
