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

# Create test admin user
admin = User.new(
  name:     'Admin User',
  phone:    '123-456-7890', 
  email:    'admin@example.com',
  password: 'helloworld'
)
admin.skip_confirmation!
admin.save!

users = User.all

# Create test sitter
Sitter.create!(
name:        'Gayla', 
phone:       '111-111-1111',
user_id:     "1"
)

# Create test sitter
Sitter.create!(
name:        'Heidi', 
phone:       '222-222-2222',
user_id:     "1"
)

# Create test sitter
Sitter.create!(
name:        'Mom', 
phone:       '111-111-1111',
user_id:     "2"
)

# Create test sitter
Sitter.create!(
name:        'Dad', 
phone:       '222-222-2222',
user_id:     "2"
)

sitters = Sitter.all

# Create test git_sitter
GitSitter.create!(
when:        '2015-03-20 12:00:00', 
how_long:    '1.5',
message:     "I'm looking for a sitter for the listed time. Please let me know if you're available.  Thanks!",
user_id:     "1"
)

# Create test git_sitter
GitSitter.create!(
when:        '2015-03-24 15:00:00', 
how_long:    '3.5',
message:     "I am in need of a babysitter for the listed day and time. Please let me know if you may be available.  Thanks!",
user_id:     "2"
)

git_sitters = GitSitter.all

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Sitter.count} sitters created"
puts "#{GitSitter.count} git_sitters created"
