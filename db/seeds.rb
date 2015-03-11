# require 'faker'

# Create my user
dale = User.new(
  name:     'Dale Brown',
  email:    'dalebrown5@gmail.com',
  password: 'helloworld'
)
dale.skip_confirmation!
dale.save!



puts "Seed finished"
puts "#{User.count} users created"

