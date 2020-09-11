class Student
	# attr_accessor :first_name, :last_name, :email, :username
	# attr_reader :password

	@first_name
	@last_name
	@email
	@username
	@password

	def initialize(firstname, lastname, username, email, password)
		@first_name = firstname
		@last_name = lastname
		@email = email
		@username = username
		@password = password

	end

	def to_s
		"First name: #{@first_name}, Last name: #{@last_name}"
	end

end

quang = Student.new("Nguyen", "Quang", "quang-nguyen", "quang.ng193", "123456")
puts quang