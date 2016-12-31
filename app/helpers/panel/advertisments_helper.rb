module Panel::AdvertismentsHelper
	def days_to_left advertisment
		days = ((advertisment.ended - advertisment.created_at)/1.day).to_i
		case days
		when 1
			"1 dzień"
		else
			"#{days} dni"
		end
	end
end
