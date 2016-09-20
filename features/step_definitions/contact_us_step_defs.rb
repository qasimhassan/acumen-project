Given /^I am on the Acumen home page$/ do
  @system.home.visit
  @system.home.check_trait
end

When /^I navigate to the Contact Us page$/ do
  @system.contact_us.visit
end

Then /^I should see an accurate postcode "TW9 1HY"$/ do
  @system.contact_us.check_postcode
end

Given /^I am on the Acumen Contact Us page$/ do
  @system.contact_us.check_trait
end

When /^I submit just an e-mail address and some message text$/ do
  @system.contact_us.set_email_text_field
  @system.contact_us.set_message_text_field
  @system.contact_us.click_send_btn
end

And /^all other input fields are blank$/ do
  @system.contact_us.check_empty_fields
end

Then /^I should see errors about the other required fields$/ do
  @system.contact_us.required_fields_errors
end
