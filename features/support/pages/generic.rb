class GenericPage
  attr_accessor :browser

  def initialize(browser)
    @browser = browser
  end

  def title
    @browser.title
  end

  def url
    @browser.url
  end
end
