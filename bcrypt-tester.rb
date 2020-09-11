# require 'bundler/inline'

# gemfile true do 
#     source 'http://rubygems.org'
#     gem 'bcrypt'
# end

require 'bcrypt'

users = [
          { username: "quang1", password: "password1" },
          { username: "quang2", password: "password2" },
          { username: "quang3", password: "password3" },
          { username: "quang4", password: "password4" },
          { username: "quang5", password: "password5" }
        ]
 
def create_hash_digest(password)
  BCrypt::Password.create(password)
end
 
def verify_hash_digest(password)
  BCrypt::Password.new(password)
end
 
def create_secure_users(list_of_users)
  list_of_users.each do |user_record|
    user_record[:password] = create_hash_digest(user_record[:password])
  end
  list_of_users
end

def authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
        if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
            return user_record
        end
    end
    "Credentials were not correct"
end


# main
secure_users = create_secure_users(users)
puts authenticate_user("quang1", "password6", secure_users)