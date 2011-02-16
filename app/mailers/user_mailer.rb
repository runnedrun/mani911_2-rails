class UserMailer < ActionMailer::Base
  default :from => "from@example.com"

  def registration_confirmation(number)
    #recipients "david.gaynor@students.olin.edu"
    recipients  "#{number}@messaging.sprintpcs.com"
    from        "emergency_notification@bostongov.com"
    body        "hey! listen!"
  end
end
