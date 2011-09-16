# encoding: utf-8

class JobMailer < ActionMailer::Base
  default from: "dontreply@myrubyfrog.com"
  
  def confirm_publication_email(job)
    @job = job
    mail(:to => job.company_email, :subject => "My Ruby Frog : votre offre a été publiée !")
  end
end
