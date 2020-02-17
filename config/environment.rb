# Load the Rails application.
require_relative 'application'

ActionMailer::Base.smtp_settings = {
  :user_name => ENV['API_LOGIN'],
  :password => ENV['API_PWD'],
  :address => 'in-v3.mailjet.com',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
# Initialize the Rails application.
Rails.application.initialize!
