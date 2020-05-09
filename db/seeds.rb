# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Admins
[
  { username: "splantio", password_digest: "$2a$12$kGIyW2fX9dyTjOF6mb2JYucRyuyLlaaAuCmZn9jK7oQ230FSKvJIi" },
].each do |admin_data|
  next if Administrator.find_by(username: admin_data[:username]).present?
  Administrator.create(username:  admin_data[:username], password_digest: admin_data[:password_digest])
end

# Houses
%w(
  Gryffindor
  Slytherin
  Hufflepuff
  Ravenclaw
).each do |name|
  next if House.find_by(name: name).present?
  House.create(name: name)
end