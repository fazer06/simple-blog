# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create!(first_name: "Shaun",
			 last_name:  " ",
             email: "user@example.com",
             password:              "password",
             password_confirmation: "password")

User.create!(first_name: "Jo",
			 last_name:  "Portman",
             email: "jo@example.com",
             password:              "password",
             password_confirmation: "password")

User.create!(first_name: "Ruth",
			 last_name:  "Evershed",
             email: "ruth@example.com",
             password:              "password",
             password_confirmation: "password")

Category.create!( name: "Android")
Category.create!( name: "Animals and Pets")
Category.create!( name: "Architecture")
Category.create!( name: "Art")
Category.create!( name: "Boating")
Category.create!( name: "Cars and Motorcycles")
Category.create!( name: "Celebration and Events")
Category.create!( name: "Celebrities")
Category.create!( name: "CSS3")
Category.create!( name: "Design")
Category.create!( name: "Education")
Category.create!( name: "Film, Music and Books")
Category.create!( name: "Food and Drink")
Category.create!( name: "Gardening")
Category.create!( name: "Geek")
Category.create!( name: "Hair and Beauty")
Category.create!( name: "Health and Fitness")
Category.create!( name: "History")
Category.create!( name: "HTML5")
Category.create!( name: "Hobbies and Crafts")
Category.create!( name: "Humour")
Category.create!( name: "Illustration and Posters")
Category.create!( name: "Interior Design")
Category.create!( name: "Kids and Parenting")
Category.create!( name: "Men's Fashion")
Category.create!( name: "Outdoors")
Category.create!( name: "Photography")
Category.create!( name: "Products")
Category.create!( name: "Quotes")
Category.create!( name: "Rails")
Category.create!( name: "Ruby")
Category.create!( name: "Science and Nature")
Category.create!( name: "Smokeless Tobacco")
Category.create!( name: "Sports")
Category.create!( name: "Tattoos")
Category.create!( name: "Technology")
Category.create!( name: "Travel")
Category.create!( name: "TV")
Category.create!( name: "Weddings")
Category.create!( name: "Women's Fashion")
Category.create!( name: "Other")


Article.create!( title: "Rails is awesome",
				 body:  "I'm working with Devise today!",
				 category_id: 30,
				 user_id: 1)

Article.create!( title: "Ruby Gems",
				 body:  "Building your first Ruby gem",
				 category_id: 31,
				 user_id: 1)

Article.create!( title: "BBC Spooks",
				 body:  "Jo Portman was a fictional Field Operative in Spooks",
				 category_id: 38,
				 user_id: 2)

Article.create!( title: "Last Tango",
				 body:  "This could be the final series",
				 category_id: 38,
				 user_id: 3)