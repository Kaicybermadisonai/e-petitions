class SponsorSignedEmailBelowThresholdEmailJob < EmailJob
  self.mailer = SponsorMailer
  self.email = :sponsor_signed_email_below_threshold

  def perform(signature)
    if signature.validated?
      super
    end
  end
end
