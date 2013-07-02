Fabricator(:receipt) do
  receipt_date { Date.today}
  galons {rand(100)}
  state {Faker::Address.state_abbr}
  cost {rand(100) *123.321}
  odometer {rand(1000000)}
  credit_card_number {rand(9999999999999999)}
  after_build do |r|
    r.truck ||= Truck.last || Fabricate(:truck)
    r.driver ||= Driver.last || Fabricate(:driver)
  end  
end
