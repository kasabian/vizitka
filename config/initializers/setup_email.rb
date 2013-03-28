ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :user_name            => "kasabianguy@gmail.com",
  :password             => "profi1234",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = ENV['http://aqueous-wave-4144.herokuapp.com'] # Your app URL. E.g: myapp.herokuapp.com