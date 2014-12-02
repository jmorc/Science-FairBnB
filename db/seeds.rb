# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

listing1 = Listing.create({
               title: "Evil Lair",
               address: "1425 McAllister, San Francisco, CA, 94115",
               num_beds: 1,
               num_guests: 2,
               num_bedrooms: 0,
               user_id: 2,
               image_url: '/assets/images/listings/DrEvil.jpg',
               mass_spec: 'Y',
               centrifuge: 'Y',
               bunsen_burner: 'Y',
               evil: 'Y',
               price: 500
          })
          

listing2 = Listing.create({
               title: "Rutherford Home",
               address: "1300 McAllister, San Francisco, CA, 94115",
               num_beds: 4,
               num_guests: 10,
               num_bedrooms: 3,
               user_id: 2,
               image_url: '/assets/images/listings/Rutherford.jpg',
               mass_spec: 'Y',
               centrifuge: 'Y',
               bunsen_burner: 'N',
               evil: 'N',
               price: 399
          })

listing3 = Listing.create({
               title: "Misty Darkness",
               address: "1200 Market St, San Francisco, CA, 94115",
               num_beds: 3,
               num_guests: 3,
               num_bedrooms: 3,
               user_id: 2,
               image_url: '/assets/images/listings/DrJekyll.jpg',
               mass_spec: 'N',
               centrifuge: 'N',
               bunsen_burner: 'Y',
               evil: 'Y',
               price: 140
          })

