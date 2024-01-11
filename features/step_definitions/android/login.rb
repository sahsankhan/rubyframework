Given("I am on login page") do
  home = Home.new
  home.main_page
end

When("I enter email address") do
  home = Home.new
  home.Login_email("testing@lineup.ai")
end

When("I enter email address 'szubair.alam@toptal.com'") do
  home = Home.new
  home.Login_email("szubair.alam@toptal.com")
end

When("I enter email address 'xyz.com'") do
  home = Home.new
  home.Login_email("xyz.com")
end

When("I enter wrong 4 digit verification code") do
  home = Home.new
  home.code_field.click
  home.Login_digit_code("0000")
end

And("I click on Sign in button") do
  home = Home.new
  home.sign_in_btn.click
end

Then("I should see 'Enter the 4-digit verification code'") do
  home = Home.new
  home.code_heading
end

When("I enter 4 digit verification code") do
  home = Home.new
  home.code_field.click
  home.Login_digit_code("1234")
end

And("I click on submit button") do
  home = Home.new
  home.submit_btn.click
end

Then("I should see 'Welcome, Louis Lineup'") do
  home = Home.new
  home.welcome_text
end

Then("I should see 'Bienvenido, Louis Lineup'") do
  home = Home.new
  home.welcome_text_spanish
end

Then("I should see 'Invalid Email or Phone Number'") do
  home = Home.new
  home.invalid_email
end

Then("I should see 'Something went wrong' error message") do
  home = Home.new
  home.error_wrongcode.click
end