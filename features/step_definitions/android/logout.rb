When("I click on settings tab") do
  logout = Logout.new
  logout.settings_tab.click
end

When("I click on Ajustes tab") do
  logout = Logout.new
  logout.settings_tab_spanish.click
end

Then("I should see 'Settings' Heading") do
  logout = Logout.new
  logout.Settings_heading.click
end

Then("I should see 'Perfil' Heading") do
  logout = Logout.new
  logout.profile_heading_spanish.click
end

Then("I should see 'Ajustes' Heading") do
  logout = Logout.new
  logout.settings_heading_spanish.click
end

When("I click on Sign out button") do
  logout = Logout.new
  # logout.scroll_to_save_btn
  logout.signout_btn.click
end

Then ("I should see Login Page") do
  home = Home.new
  home.main_page
end