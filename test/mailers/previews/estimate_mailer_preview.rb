# Preview all emails at http://localhost:3000/rails/mailers/estimate_mailer
class EstimateMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/estimate_mailer/new_estimate
  def new_estimate
    estimate = Estimate.last
    EstimateMailer.new_estimate(estimate)
  end

end
