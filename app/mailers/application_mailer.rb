class ApplicationMailer < ActionMailer::Base
  default to: 'to@mymovies.com', from: 'from@mymovies.com'
  layout 'mailer'
end
