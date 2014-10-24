class Rolodex
	attr_reader :contacts, :contact_id
	@@index = 1000

	def initialize
		@contacts = []
	end

	def add_contact(contact)
		contact_id = @@index
		@@index += 1
		@contacts << contact
	end
end

#need to add contact ID
