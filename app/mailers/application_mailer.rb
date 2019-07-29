class ApplicationMailer < ActionMailer::Base
  default from: ENV['KEY']
  default to:    ENV['KEY']
  layout 'mailer'
end
