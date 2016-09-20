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

  def tumblr_login
    @tumblr_login ||= TumblrLoginPage.new @browser
  end

  def tumblr_dashboard
    @tumblr_dashboard ||= TumblrDashboardPage.new @browser
  end
end
