class EstimateMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.estimate_mailer.new_estimate.subject
  #
  def new_estimate(estimate)
    @estimate = estimate
    @project = @estimate.project

    mail to: @project.user.email, subject: "New estimate for #{@project.project}"
  end
end
