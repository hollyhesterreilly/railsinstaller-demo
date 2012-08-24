class TriageMailer < ActionMailer::Base
  default from: "MediaMathProduct@gmail.com"
  def send_triage_mail assignee
	@assignee = assignee #make assignee a private variable, available to the send_triage_mail view
	mail :to => "holly.hester-reilly@gmail.com", :subject => "Triage goes to..."
	# will be to "product_team@mediamath.com", :cc => "ppo@mediamath.com"
  end
end
