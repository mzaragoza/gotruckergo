Fabricator(:plan) do
  price {rand(1000)}
  name {Faker::Lorem.words.join(' ') }
  slug {Faker::Lorem.words.join(' ')}
  featured {false}
  active {true}
  licenses {rand(100)}
  anual_price {rand(1000)}
  monthy_price {rand(1000)}
end

