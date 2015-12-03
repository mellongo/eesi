class ContactMailer < ActionMailer::Base
	default to: 'melissalongo@electricalsurplus.net'

	def contact_email(name, email, phone, body)
		@name = name
		@email = email
		@phone = phone
		@body = body

		mail(from: email, subject: 'Contact Form Message')
	end
end