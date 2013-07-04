Fabricator(:broker) do
name { Faker::Name.first_name }
phone { Faker::PhoneNumber.cell_phone.to_s.gsub(/[^0-9]/, "").to_s }
address { Faker::Address.street_name }
address2 { Faker::Address.secondary_address}
city { Faker::Address.city}
state { Faker::Address.state_abbr}
zip { Faker::Address.zip_code.to_s.gsub(/[^0-9]/, "").to_s }
fax { Faker::PhoneNumber.cell_phone.to_s.gsub(/[^0-9]/, "").to_s }
email { Faker::Internet.email}
website { Faker::Internet.url}
motor_carrier_number {rand(999999999)}

end

