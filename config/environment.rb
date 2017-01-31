# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => ENV['app62982076@heroku.com'],
  :password       => ENV['osf1arpe3293'],
  :domain         => 'intense-eyrie-53145.herokuapp.com',
  :enable_starttls_auto => true
}
