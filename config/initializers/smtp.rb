Rails.application.config.action_mailer.delivery_method = :smtp
# SMTP settings for mailgun
Rails.application.config.action_mailer.smtp_settings = {
  :port           => 587,
  :address        => ENV['SMTP_ADDRESS'],
  :domain         => ENV['SMTP_DOMAIN'],
  :user_name      => ENV['SMTP_USERNAME'],
  :password       => ENV['SMTP_PASSWORD'],
  :authentication => :plain,
}

Rails.application.config.action_mailer.default_url_options = {
  host: ENV["EMAIL_DEFAULT_HOST"]
}
