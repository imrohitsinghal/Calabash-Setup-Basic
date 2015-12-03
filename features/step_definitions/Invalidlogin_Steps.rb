

Given(/^I am about to login$/) do

end

When(/^I enter invalid credentials$/) do
#  binding.pry
  user = CREDENTIALS[:invalid_user]
  login_user(user[:username],user[:password])

end

Then(/^I should see error message$/) do
  verify_error_message

end


