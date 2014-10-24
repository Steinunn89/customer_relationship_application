require_relative './contact.rb'
require_relative './rolodex.rb'

class CRM
	attr_reader :name

	def initialize (name)
		@name = name
		@rolodex = Rolodex.new

	end

	def print_main_menu
		puts "[1] Add a new contact"
	  	puts "[2] Modify an existing contact"
	  	puts "[3] Display all the contacts"
	  	puts "[4] Display one contact"
	  	puts "[5] Display an attribute"
	  	puts "[6] Delete a contact"
	  	puts "[7] Exit"
	  	puts "Enter a number: "
	end

	def main_menu
		puts "Welcome to #{@name}"

		#infinite loop until choose option 7
		while true
		  	print_main_menu
		  	input = gets.chomp.to_i
		  	return if input == 7
		  	choose_option(input)
		  end
		
	end

	def choose_option(option)
		#case for straight quality
		case option 
		when 1 then add_contact
		when 2 then modify_contact
		when 3 then display_all_contacts
		when 4 then display_contact
		when 5 then display_attribute
		when 6 then delete_contact
		else
			"Invalid option, please try again."
		end

	end

	def add_contact
		print "First name: "
		first_name = gets.chomp
		print "Last name: "
		last_name = gets.chomp
		print "Email: "
		email = gets.chomp
		print "Note: "
		note = gets.chomp

		contact = Contact.new(first_name, last_name, email, note)
		@rolodex.add_contact(contact)

	end
	def modify_contact
		puts "Which contact would you like to change? (Input contact ID)"
		which_contact_to_mod = gets.chomp.to_i

		contact = @rolodex.display_particular_contact(which_contact_to_mod)

		contact.display

		#puts "Currently First Name: #{contact.first_name}, Last Name: #{contact.last_name}, Email: <#{contact.email}>, Note: #{contact.note}, ID: #{contact.id}"
		
		print_modify_menu

			if @what_to_mod == 1
				contact.first_name = @what_to_mod_it_to
			elsif @what_to_mod == 2
				contact.last_name = @what_to_mod_it_to
			elsif @what_to_mod == 3
				contact.email = @what_to_mod_it_to
			elsif @what_to_mod == 4
				contact.note = @what_to_mod_it_to
			elsif @what_to_mod == 5
				print_main_menu
			else
				puts "Error command not recoginzed"
			end

		puts "Now your contact has a First Name: #{contact.first_name}, Last Name: #{contact.last_name}, Email: <#{contact.email}>, Note: #{contact.note}, ID: #{contact.id}"

		

	end

	def print_modify_menu

		puts "What contact attribute do you want to be modified?"
		puts "[1] if you want to change first name"
		puts "[2] if you want to change last name"
		puts "[3] if you want to change email"
		puts "[4] if you want to change note"
		puts "[5] if you want to exit"

		@what_to_mod = gets.chomp.to_i

		puts "You have chosed to change #{@what_to_mod}, are you sure you want to change this? (Y/N)"
		confirmation = gets.chomp
		if confirmation == "Y"

			puts "What would you like to change it to?"
			@what_to_mod_it_to = gets.chomp

		elsif confirmation == "N"
			print_main_menu

		else 
			puts "Error command not recognized"
			print_main_menu

		end
	end


	def display_all_contacts

		@rolodex.contacts.each do |contact|
			puts "#{contact.first_name}, #{contact.last_name}, <#{contact.email}>, #{contact.id}"

		end
	end

	def display_contact

	puts "Which contact would you like to display? (Input contact ID)"
		which_contact_to_display = gets.chomp.to_i

		contact = @rolodex.display_particular_contact(which_contact_to_display)


	end

	def display_attribute

	print_search_menu


		# if @what_to_display == 1
		# 		puts "Enter text to search?"
		# 		answer=gets.chomp
		# 	elsif @what_to_display == 2
		# 		puts "Enter text to search?"
		# 		answer=gets.chomp
		# 	elsif @what_to_display == 3
		# 		puts "Enter text to search?"
		# 		answer=gets.chomp
		# 	elsif @what_to_display == 4
		# 		puts "Enter text to search?"
		# 		answer=gets.chomp
		# 	elsif @what_to_display == 5
		# 		puts "Enter text to search?"
		# 		answer=gets.chomp.to_i
		# 	elsif @what_to_display == 6
		# 		print_main_menu
		# 	else
		# 		puts "Error command not recoginzed"
		# end

		# search = @rolodex.search_contact(answer)
	end



	def print_search_menu

		puts "What contact attribute do you want to search by?"
		puts "[1] if you want to search by first name"
		puts "[2] if you want to search by last name"
		puts "[3] if you want to search by email"
		puts "[4] if you want to search by note"
		puts "[5] if you want to search by ID"
		puts "[6] if you want to exit"

		@what_to_display = gets.chomp.to_i
	end

	def delete_contact
		puts "Which contact would you like to delete? (Input contact ID)"
		which_contact_to_delete = gets.chomp.to_i

		puts "Are you sure you want to delete? (Y/N)"
		confirmation = 

		

		contact = @rolodex.delete_contact(which_contact_to_delete)
		


	end
end

crm=CRM.new("Steinunn's CRM")

crm.main_menu










