class ContributionMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contribution_mailer.new.subject
  #
  def new
    @sumbmitted = "New contribution in inbox"

    mail to: "to@example.org"
  end
end
