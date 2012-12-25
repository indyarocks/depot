# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all
Product.create(:title => "Star",
               :description => %{You have to burn above 10000C to become a star, are you ready?},
               :image_url => "http://www.ciol.com/IMG/521/20521/google-doodle-370x264.jpg",
               :price => 100000)
Product.create(:title => "Star1",
               :description => %{1You have to burn above 10000C to become a star, are you ready?},
               :image_url => "https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Blue_check.svg/600px-Blue_check.svg.png",
               :price => 100000)
