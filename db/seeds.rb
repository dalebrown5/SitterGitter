# require 'faker'

# Create my user
dale = User.new(
  name:     'Dale Brown',
  phone:    '555-555-5555', 
  email:    'dalebrown5@gmail.com',
  password: 'helloworld'
)
dale.skip_confirmation!
dale.save!



puts "Seed finished"
puts "#{User.count} users created"

