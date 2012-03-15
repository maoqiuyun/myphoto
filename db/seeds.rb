# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "****** Create user *************"

# Create an admin
User.create!(:email => "maoqiuyun@ekohe.com", :name => "maoqiuyun", :password => "111111", :password_confirmation => "111111", :role => 1)

# Create a user
User.create!(:email => "mao@ekohe.com",:name => "mao", :password => "111111", :password_confirmation => "111111")
