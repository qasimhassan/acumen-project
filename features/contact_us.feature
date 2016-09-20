@contact_us
Feature: Contact Us Page
  As an end user that is curious about Acumen
  I want to browse a contact us page
  So that I can find contact details
  And get in touch to find out more

Scenario: Accurate Address
  Given I am on the Acumen home page
  When I navigate to the Contact Us page
  Then I should see an accurate postcode "TW9 1HY"

Scenario: Submission Validation
  Given I am on the Acumen Contact Us page
  When I submit just an e-mail address and some message text
  And all other input fields are blank
  Then I should see errors about the other required fields
