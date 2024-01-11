When("I click on Profile tab") do
  profile = Profile.new
  profile.profile_tab.click
end

  When("I click on Perfil tab") do
  profile = Profile.new
  profile.perfil_tab.click
end

When("I click on Language dropdown icon") do
  profile = Profile.new
  profile.lang_dropdown.click
end

And("I select Spanish language") do
  profile = Profile.new
  profile.spanish_lang.click
end

And("I select 'Inglés' language") do
  profile = Profile.new
  profile.english_lang.click
end

And("I click on 'save changes' button") do
  profile = Profile.new
  profile.scroll_to_save_btn
  profile.save_btn.click
end

And("I click on 'Guardar Cambios' button") do
  profile = Profile.new
  profile.scroll_to_save_btn_spanish
  profile.save_btn_spanish.click
end

Then("I should see language changed to Spanish") do
  profile = Profile.new
  profile.spanish_text.click
end

Then("I should see language changed to English") do
  profile = Profile.new
  profile.english_text.click
end

Then("I should see 'Profile' Heading") do
  logout = Profile.new
  logout.profile_heading.click
end

# Then("I should see 'Perfil' Heading") do
#   logout = Profile.new
#   logout.perfil_heading.click
# end