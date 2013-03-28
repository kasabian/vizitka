class Mailer < ActionMailer::Base
  default from: "line@com.com"
  
   def send_email(customer)
    @customer = customer
    @url  = "http://example.com/login"
    @setting = Setting.first
    mail(:to => @setting.email, :subject => "New order")
  end
end
