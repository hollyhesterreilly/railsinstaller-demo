class TriageTask
#Weekly, run a task that sends an email
#Task performs logic to figure what email to send
	def TriageTask.run
		#Which participant is on assignment - sort by triages asc, position asc, limit:1
		@assignee = Participant.order("triages ASC, position ASC").first
		#increment that participant's triages value by 1
		@assignee.triages += 1 #means same as @assignee.triages = assignee.triages + 1
		@assignee.save
		#Build and send email contents
		TriageMailer.send_triage_mail @assignee
	end
end