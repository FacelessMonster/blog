def signed_up
  visit new_user_registration_path

  fill_in 'user_email', with: 'blabla@bla.com'
  fill_in 'user_password', with: 'qwerty121s'
  fill_in 'user_password_confirmation', with: 'qwerty121s'
  fill_in 'user_username', with: 'somename'

  click_button "Sign up"
end