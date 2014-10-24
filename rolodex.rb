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
	def search_contact_by_id (id)

		array = []

		@contacts.each do |contact|


			if contact.id == id
			array << contact

			end
		end
		return array
	end

	def search_contact_by_first_name (name)

		array = []

		@contacts.each do |contact|


			if contact.first_name == name 

			array << contact

			end

		end

		return array


	end

end

#need to add contact ID
