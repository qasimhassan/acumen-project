class ContactUsPage < GenericPage
  def visit
    @browser.goto "http://www.acumenci.com/contact-us/"
    check_trait
  end

  # Getters
  def check_postcode
    Watir::Wait.until(5) {@browser.div(class: "nine column").p.text.include?("TW9 1HY")
  end

  def check_trait
    raise unless @browser.div(class: "eight column").h3(text: "Contact Us").present? == true
  end

  def email_text_field
    @browser.div(id: "wpcf7-f682-p495-o1").text_field(name: "your-email").when_present(5)
  end

  def message_text_field
    @browser.div(id: "wpcf7-f682-p495-o1").textarea(name: "your-message").when_present(5)
  end

  def send_btn
    @browser.button(class: "wpcf7-form-control wpcf7-submit").when_present(5)
  end

  def name_text_field
    @browser.div(id: "wpcf7-f682-p495-o1").text_field(name: "your-name").when_present(5)
  end

  def company_text_field
    @browser.div(id: "wpcf7-f682-p495-o1").text_field(name: "YourCompany").when_present(5)
  end

  def location_text_field
    @browser.div(id: "wpcf7-f682-p495-o1").text_field(name: "YourLocation").when_present(5)
  end

  def telephone_text_field
    @browser.div(id: "wpcf7-f682-p495-o1").text_field(name: "Telephone").when_present(5)
  end

  def subject_text_field
    @browser.div(id: "wpcf7-f682-p495-o1").text_field(name: "your-subject").when_present(5)
  end

  def check_empty_fields
    empty_check = name_text_field.text_length +
                  company_text_field.text_length +
                  location_text_field.text_length +
                  telephone_text_field.text_length +
                  subject_text_field.text_length
    raise unless empty_check == 0
  end

  def required_fields_errors
    raise unless @browser.div(class: "wpcf7-response-output wpcf7-display-none wpcf7-validation-errors").visible? == true
  end

  # Setters
  def set_email_text_field
    email_text_field.set POST_DATA['email']
  end

  def set_message_text_field
    message_text_field.set POST_DATA['message']
  end

  def click_send_btn
    send_btn.click
  end
end
