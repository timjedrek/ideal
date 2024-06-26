class AdvanceTrainingsMailer < ApplicationMailer

  default from: 'no-reply@idealaviationstlouis.com'

  def advance_trainings(advance_training)
    @advance_training = advance_training

    if Rails.env.production?
      mail(to: @advance_training.email, bcc: ["info@idealaviationstlouis.com", "info@idealaviationstl.com"], subject: "✈️ Complete your #{@advance_training.certificate_sought} at Ideal Aviation")
    else
      mail(to: @advance_training.email, bcc: ["info@idealaviationstlouis.com"], subject: "✈️ Complete your #{@advance_training.certificate_sought} at Ideal Aviation")
    end
  end

end
