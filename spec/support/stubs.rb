def login_as_admin
  admin = create(:admin, :username => 'Admin')
  sign_in admin
  admin
end
