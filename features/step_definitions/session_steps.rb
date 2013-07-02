Given 'I am signed in as an admin' do
  @admin = Fabricate(:admin)
  step %(I go to the admin sign in page)
  step %(I fill in "admin_email" with "#{@admin.email}")
  step %(I fill in "admin_password" with "#{@admin.password}")
  step %(I press "Sign in")
end
