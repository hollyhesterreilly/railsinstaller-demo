class TriageMailer < ActionMailer::Base
  default :from => "hollyhesterreilly@gmail.com"
  def send_triage_mail(assignee, selected_picture)
	@assignee = assignee #make assignee a private variable, available to the send_triage_mail view
	@selected_picture = selected_picture
	mail :to => "product_team@mediamath.com", :cc => "ppo@mediamath.com, hollyhesterreilly@gmail.com", :subject => "Product Request Triage goes to..."
  end
end
