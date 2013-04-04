class Mailer < ActionMailer::Base
  default from: "line@com.com"
  
   def send_email(customer)
    @customer = customer
    @url  = "http://example.com/login"
    @setting = Setting.first
    mails = []
    mails.push(@setting.email)
    mails.push(@setting.email2)
    mail(:to => mails, :subject => "New order")
  end
end
