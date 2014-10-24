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
		 

	end

	def display_all_contacts

		@rolodex.contacts.each do |contact|
			puts "#{contact.first_name} #{contact.last_name}, <#{contact.email}>, #{contact.id}"

		end
	end

	def display_contact

	end

	def display_attribute

	end

	def delete_contact

	end
end

crm=CRM.new("BitMaker Labs CRM")

crm.main_menu










