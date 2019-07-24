class ApplicationMailer < ActionMailer::Base
  default from: 'portforliofest@gmail.com'
  default to:    'portforliofest@gmail.com'
  layout 'mailer'
end
