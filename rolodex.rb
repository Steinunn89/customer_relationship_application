class Rolodex
	attr_reader :contacts
	@@index = 1000

	def initialize
		@contacts = []
	end

	def add_contact(contact)
		contact.id = @@index
		@@index += 1
		@contacts << contact
	end

	def display_particular_contact(id)
		@contacts.each do |contact|

			if contact.id == id
				return contact
			end

		end
	end

	def delete_contact(id)
		@contacts.each do |contact|

			if contact.id == id
			contacts.delete(contact)
			end

		end
	end
	def search_contact (answer)
		# @contacts.each do |info|

		# 	if info == answer
		# 	puts "this is working"
		# 	end

	end

end

#need to add contact ID
