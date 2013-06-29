Fabricator(:admin) do
  email                   { Faker::Internet.email}
  password                {'password'}
  password_confirmation   {'password'}
  first_name              {Faker::Name.first_name}
  last_name               {Faker::Name.last_name}
  active                  {true}
  phone                   { Faker::PhoneNumber.cell_phone }
  #photo                   {
  #  ActionDispatch::Http::UploadedFile.new(
  #    :tempfile => File.new(Rails.root.join("app/assets/images/admin.png")),
  #    :filename => File.basename(File.new(Rails.root.join("app/assets/images/admin.png")))
  #  )
  #}
end

