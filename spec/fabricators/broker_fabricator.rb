Fabricator(:broker) do
name { Faker::Name.first_name }
phone { Faker::PhoneNumber.cell_phone }
address { Faker::Address.street_name }
address2 { Faker::Address.secondary_address}
city { Faker::Address.city}
state { Faker::Address.state_abbr}
zip { Faker::Address.zip_code }
fax { Faker::PhoneNumber.cell_phone }
email { Faker::Internet.email}
website { Faker::Internet.url}
motor_carrier_number {rand(999999999)}

end

