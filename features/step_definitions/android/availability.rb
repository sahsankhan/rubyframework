When("I click on availability tab") do
  availability = Availability.new
  availability.availability_tab.click
end

Then("I should see availability heading") do
  availability = Availability.new
  availability.availability_heading
end

Then("I should see availability heading") do
  availability = Availability.new
  availability.availability_heading
end

And("I click on TIME OFF tab") do
  availability = Availability.new
  availability.time_off_tab
  availability.time_off_tab.click

end

And("I click on New Request Button") do
  availability = Availability.new
  availability.new_req_button.click
end

And("I click on pending Time Off Request") do
  availability = Availability.new
  availability.timeoff_pending.click
end

Then("I should see 'Time off Request' heading") do
  availability = Availability.new
  availability.timeoff_req_heading.click
end

When("I click on 'Cancel Request' button") do
  availability = Availability.new
  availability.cancel_req.click
end

Then("I should see 'Cancel Time off Request' heading") do
  availability = Availability.new
  availability.cancel_timeoff_req_heading.click
end

Then("I should see 'Success your request has been canceled' message") do
  availability = Availability.new
  availability.success_msg.click
end

When("I click on 'Make Changes' button") do
  availability = Availability.new
  availability.make_changes_btn.click
end

And("I switch off the 'All-day' toggle") do
  availability = Availability.new
  availability.Allday_toggle.click
end

And("I click on 'Submit for Approval' button") do
  availability = Availability.new
  availability.scroll_to_optional_notes
  availability.Submit_for_Approval_btn.click
end