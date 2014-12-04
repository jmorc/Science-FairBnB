# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


userRutherford = User.create({
      email: "rutherford@nobel.com",
      password: "rutherford",
      firstname: "Ernest",
      lastname: "Rutherford",
      image_url: "/assets/users/rutherford.jpg",
      disposition: "Not Evil or Mad"
})

listingRutherford = Listing.create({
      title: "Rutherford Home",
      address: "1300 McAllister, San Francisco, CA, 94115",
      num_beds: 4,
      num_guests: 10,
      num_bedrooms: 3,
      user: userRutherford,
      image_url: '/assets/listings/Rutherford.jpg',
      jumbo_image_url: '/assets/listings/jumbo-rutherford.jpg',
      mass_spec: 'Y',
      centrifuge: 'Y',
      bunsen_burner: 'N',
      evil: 'N',
      price: 399
})

userEvil = User.create({
      email: "dr_evil@deathdeath.com",
      password: "drevil",
      firstname: "Dr.",
      lastname: "Evil",
      image_url: "/assets/users/drevil.jpeg",
      disposition: "Evil"
})

listingEvil = Listing.create({
      title: "Evil Lair",
      address: "1425 McAllister, San Francisco, CA, 94115",
      num_beds: 1,
      num_guests: 2,
      num_bedrooms: 0,
      user: userEvil,
      image_url: '/assets/listings/DrEvil.jpg',
      jumbo_image_url: '/assets/listings/jumbo-evil-lair.png',
      mass_spec: 'Y',
      centrifuge: 'Y',
      bunsen_burner: 'Y',
      evil: 'Evil',
      price: 500
})

userJekyll = User.create({
      email: "dr_jekyll@hungryhippo.com",
      password: "drjekyll",
      firstname: "Dr.",
      lastname: "Jekyll",
      image_url: "/assets/users/dr_jekyll.png",
      disposition: "Mad"
})

listingJekyll = Listing.create({
      title: "Misty Darkness",
      address: "1425 McAllister, San Francisco, CA, 94115",
      num_beds: 1,
      num_guests: 2,
      num_bedrooms: 0,
      user: userJekyll,
      image_url: '/assets/listings/DrJekyll.jpg',
      jumbo_image_url: '/assets/listings/DrJekyll.jpg',
      mass_spec: 'Y',
      centrifuge: 'Y',
      bunsen_burner: 'Y',
      evil: 'Mad',
      price: 99
})

#
#
#
#
# listing3 = Listing.create({
#                title: "Misty Darkness",
#                address: "1200 Market St, San Francisco, CA, 94115",
#                num_beds: 3,
#                num_guests: 3,
#                num_bedrooms: 3,
#                user_id: 2,
#                image_url: '/assets/listings/DrJekyll.jpg',
#                mass_spec: 'N',
#                centrifuge: 'N',
#                bunsen_burner: 'Y',
#                evil: 'Y',
#                price: 140
#           })

