class NotificationMailer < ActionMailer::Base
  default from: "no-reply@oishiapp.com"

  def comment_added
  	mail(to: "brian.stolte@gmail.com", subject: "A comment has been added to your place")
  	
  end

end
