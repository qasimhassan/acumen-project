class HomePage < GenericPage
  def visit
    @browser.goto "http://www.acumenci.com/"
  end

  def check_trait
    raise unless @browser.div(class: "eight column").h3(text: "Welcome to Acumen").present? == true
  end
end
