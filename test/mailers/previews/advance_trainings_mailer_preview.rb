# Preview all emails at http://localhost:3000/rails/mailers/advance_trainings_mailer
class AdvanceTrainingsMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/advance_trainings_mailer/advance_trainings
  def advance_trainings
    advance_training = AdvanceTraining.last
    AdvanceTrainingsMailer.advance_trainings(advance_training)
  end

end
