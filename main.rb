require_relative 'crud'

# Or:
# $LOAD_PATH << "."
# require 'crub'

users = [
    { username: "quang1", password: "password1" },
    { username: "quang2", password: "password2" },
    { username: "quang3", password: "password3" },
    { username: "quang4", password: "password4" },
    { username: "quang5", password: "password5" }
  ]

hashed_users = Crub.create_secure_users(users)
puts hashed_users