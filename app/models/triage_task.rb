class TriageTask
#Weekly, run a task that sends an email
#Task performs logic to figure what email to send
	def TriageTask.run
		#Which participant is on assignment - sort by triages asc, position asc, limit:1
		@assignee = Participant.order("triages ASC, position ASC").first
		#increment that participant's triages value by 1
		@assignee.triages += 1 #means same as @assignee.triages = assignee.triages + 1
		@assignee.save
		#which picture to show in email. First, see if there are any pictures that haven't been used for the assigned participants
		assignee_pics = @assignee.pictures.where :uses=> 0
		if assignee_pics.size > 0
				@selected_picture = assignee_pics[rand(assignee_pics.size)]
				@selected_picture.uses += 1
				@selected_picture.save
		else 
			# for now, if none associated, don't send a picture
		end
		#Build and send email contents
		TriageMailer.send_triage_mail(@assignee).deliver
	end
end