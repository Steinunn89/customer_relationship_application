class Contact
	attr_accessor :id, :first_name, :last_name, :email, :note

	def initialize(first_name, last_name, email, note)
		@first_name = first_name
		@last_name = last_name
		@email = email
		@note = note
	end

	def display

		puts "Now your contact has:" 
		puts "First Name: #{first_name}"
		puts "Last Name: #{last_name}"
		puts "Email: <#{email}>" 
		puts "Note: #{note}"
		puts "ID: #{id}"
		puts " "

	end

end

#stores info for one contact, maybe runs some methods on initialize
#has no concept if there are others
#need separate class of all contacts