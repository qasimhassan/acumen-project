class System
  def initialize(browser)
    @browser = browser
  end

  def contact_us
    @contact_us ||= ContactUsPage.new @browser
  end

  def home
    @home ||= HomePage.new @browser
  end
end
