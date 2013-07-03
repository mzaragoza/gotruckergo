Fabricator(:trailer) do
  name { Faker::Name.first_name }
  length { '19' }
  width { '102' }
  height {52} 
  gross_vehicle_weight_rating {'3,856'}
  suspension {'Air Ride'}
  axle_capacity {4}
  wheels {'Steel' }
  tires {'22.5 '}
  vin { (0...18).map{(65+rand(26)).chr}.join }
  tag {(0...8).map{(65+rand(26)).chr}.join}


  # trailer_id
end

