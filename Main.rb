puts "What is your name?"

name = gets.chomp

puts "Hello " + name + ", what is your password?"



while true
  print("Enter your password")
	password=gets
 if password !~ /^(\S)*$/
 puts('no sapces allowed')


elsif password =~ /^(?=.*[a-zA-Z])(?=.*[0-9]).{8,}$/
		puts('Almost strong password,keep trying')
elsif password =~ /^(?=.*[a-zA-Z])(?=.*[0-9]).{6,}$/
		puts('Weak password')
else
		puts('Please enter a stronger password')
		end
		end




#Make sure the password string is strong. A strong password is defined as one that is at least eight characters long, contains both uppercase and lowercase characters, and has at least one digit. You may need to test the string against multiple regex patterns to validate its strength.

# test if a given string contains at least a lowercase letter, a uppercase, a digit, a special char and 8+ chars
#strong = "123ABCabc-"
#strong[/^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[\W]).{8,}$/]



#(?=.{8,})(?=.*[a-z])(?=.*[A-Z])(?=.*[\d])(?=.*[\W])(?=.*[\d\W])^.(?=.{6,})(?=.[a-z])(?=.[A-Z]).$


#^.(?=.{6,})(?=.[a-z])(?=.[A-Z])(?=.[\d\W]).*$


#((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{5,25})
# Descr:
# ( # Start of group
# (?=.*\d) # must contains one digit from 0-9
# (?=.*[a-z]) # must contains one lowercase characters
# (?=.*[A-Z]) # must contains one uppercase characters
# (?=.*[@#$%]) # must contains one special symbols in the list "@#$%"
# . # match anything with previous condition checking
# {5,25} # length at least 5 characters and maximum of 25
# ) # End of group
