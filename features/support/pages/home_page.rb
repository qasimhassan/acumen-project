class HomePage < GenericPage
  def visit
    @browser.goto "http://www.acumenci.com/"
    check_trait
  end

  def check_trait
    raise unless @browser.div(class: "eight column").h3(text: "Welcome to Acumen").wait_until_present
  end
end
