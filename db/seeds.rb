# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

listing1 = Listing.create({
               title: "closet",
               address: "1425 McAllister, San Francisco, CA, 94115",
               num_beds: 1,
               num_guests: 2,
               num_bedrooms: 0,
               user_id: 2
          })

listing2 = Listing.create({
               title: "Cavendish house",
               address: "1300 McAllister, San Francisco, CA, 94115",
               num_beds: 4,
               num_guests: 10,
               num_bedrooms: 3,
               user_id: 2
          })

listing3 = Listing.create({
               title: "Dr. Jekyl",
               address: "1200 Market St, San Francisco, CA, 94115",
               num_beds: 3,
               num_guests: 3,
               num_bedrooms: 3,
               user_id: 2
          })

listing4 = Listing.create({
               title: "Dr. Evil",
               address: "900 McAllister, San Francisco, CA, 94115",
               num_beds: 4,
               num_guests: 5,
               num_bedrooms: 3,
               user_id: 2
          })