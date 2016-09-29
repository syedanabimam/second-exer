# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(:owner_name => "matz")
user2 = User.create(:owner_name => "john")
user3 = User.create(:owner_name => "ron")

user1.articles.create(name:"iPhone 12SC Plus", price:"42000$", description:"this is a revolution", user_id:1)
user1.articles.create(name:"Samsung 12SC Plus", price:"42300$", description:"this is not a revolution", user_id:1)
user2.articles.create(name:"iPhone 12SC Plus", price:"42670$", description:"this is a scam", user_id:2)
user2.articles.create(name:"Nokia 12SC Plus", price:"42000$", description:"Hallelujah!", user_id:2)
user2.articles.create(name:"iPhone 12SC Plus", price:"42340$", description:"Beam me up scotty!", user_id:2)
user3.articles.create(name:"Galaxy 12SC Plus", price:"56700$", description:"freeedoom!!!", user_id:3)
user3.articles.create(name:"iPhone 12SC Plus", price:"87670$", description:"this is an awesome deal", user_id:3)
user3.articles.create(name:"Siemens 12SC Plus", price:"92300$", description:"buy it asap", user_id:3)
user3.articles.create(name:"iPhone 12SC Plus", price:"73200$", description:"this is such a revolution", user_id:3)

user1.save
user2.save
user3.save