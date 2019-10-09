class ApplicationMailer < ActionMailer::Base
  default from: Rails.application.credentials.action_mailer[:default_from]
  layout 'mailer'
end
