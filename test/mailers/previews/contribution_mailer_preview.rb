# Preview all emails at http://localhost:3000/rails/mailers/contribution_mailer
class ContributionMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/contribution_mailer/new
  def new
    ContributionMailer.new
  end

end
