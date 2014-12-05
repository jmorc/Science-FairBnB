# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# REGULAR SCIENTISTS (need 9)

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
      address: "3154 Bayshore Boulevard, Brisbane, CA 94005, USA",
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

userAugustine = User.create({
      email: "dr_augustine@hungryhippo.com",
      password: "dr_augustine",
      firstname: "Dr.",
      lastname: "Augustine",
      image_url: "/assets/users/dr_augustine.png",
      disposition: "Regular"
})

listingAugustine = Listing.create({
      title: "Tree of Souls",
      address: "401 Tennessee Glen Way, Mill Valley, CA 94941, USA",
      num_beds: 1,
      num_guests: 2,
      num_bedrooms: 0,
      user: userAugustine,
      image_url: '/assets/listings/avatar-item.jpg',
      jumbo_image_url: '/assets/listings/jumbo-avatar.jpg',
      mass_spec: 'Y',
      centrifuge: 'Y',
      bunsen_burner: 'Y',
      evil: 'Regular',
      price: 99
})

userVicanti = User.create({
      email: "dr_vicanti@hungryhippo.com",
      password: "dr_vicanti",
      firstname: "Dr.",
      lastname: "Vicanti",
      image_url: "/assets/users/charles_vacanti.jpg",
      disposition: "Regular"
})

listingVicanti = Listing.create({
      title: "Chuck's Pad",
      address: "2320 8th Avenue, Oakland, CA 94606, USA",
      num_beds: 1,
      num_guests: 2,
      num_bedrooms: 0,
      user: userVicanti,
      image_url: '/assets/listings/vicanti-listing-item.png',
      jumbo_image_url: '/assets/listings/vicanti-listing.jpg',
      mass_spec: 'Y',
      centrifuge: 'Y',
      bunsen_burner: 'Y',
      evil: 'Regular',
      price: 179
})


userNiklason = User.create({
      email: "dr_niklason@hungryhippo.com",
      password: "dr_niklason",
      firstname: "Dr.",
      lastname: "Niklason",
      image_url: "/assets/users/Niklason.png",
      disposition: "Regular"
})

listingNiklason = Listing.create({
      title: "The Niklason Home",
      address: "2837 Pacheco Street, San Francisco, CA 94116, USA",
      num_beds: 1,
      num_guests: 2,
      num_bedrooms: 0,
      user: userNiklason,
      image_url: '/assets/listings/niklason-listing-item.png',
      jumbo_image_url: '/assets/listings/niklason-jumbo.jpg',
      mass_spec: 'Y',
      centrifuge: 'Y',
      bunsen_burner: 'Y',
      evil: 'Regular',
      price: 279
})

userCurie = User.create({
      email: "m_curie@hungryhippo.com",
      password: "dr_curie",
      firstname: "Marie",
      lastname: "Curie",
      image_url: "/assets/users/curie.png",
      disposition: "Regular"
})

listingCurie = Listing.create({
      title: "The Curie Home",
      address: "3514 Scott Street, San Francisco, CA 94123, USA",
      num_beds: 1,
      num_guests: 2,
      num_bedrooms: 0,
      user: userCurie,
      image_url: '/assets/listings/curie-item.jpg',
      jumbo_image_url: '/assets/listings/curie-jumbo.jpg',
      mass_spec: 'Y',
      centrifuge: 'Y',
      bunsen_burner: 'Y',
      evil: 'Regular',
      price: 279
})

userCavendish = User.create({
      email: "h_cavendish@hungryhippo.com",
      password: "dr_cavendish",
      firstname: "Henry",
      lastname: "Cavendish",
      image_url: "/assets/users/cavendish.png",
      disposition: "Regular"
})

listingCavendish = Listing.create({
      title: "The Cavendish Ruins",
      address: "730 Tennessee Street, San Francisco, CA 94107, USA",
      num_beds: 1,
      num_guests: 2,
      num_bedrooms: 0,
      user: userCavendish,
      image_url: '/assets/listings/cavendish-item.jpg',
      jumbo_image_url: '/assets/listings/Cavendish-jumbo.jpg',
      mass_spec: 'Y',
      centrifuge: 'Y',
      bunsen_burner: 'Y',
      evil: 'Regular',
      price: 679
})

userGalileo = User.create({
      email: "galileo@hungryhippo.com",
      password: "dr_galileo",
      firstname: "Galileo",
      lastname: "Galilei",
      image_url: "/assets/users/galileo.png",
      disposition: "Regular"
})

listingGalileo = Listing.create({
      title: "The Galileo Home",
      address: "1567 Randy Street, San Leandro, CA 94579, USA",
      num_beds: 1,
      num_guests: 2,
      num_bedrooms: 0,
      user: userGalileo,
      image_url: '/assets/listings/galileo-item.png',
      jumbo_image_url: '/assets/listings/galileo-jumbo.jpg',
      mass_spec: 'Y',
      centrifuge: 'Y',
      bunsen_burner: 'Y',
      evil: 'Regular',
      price: 679
})

userGoodall = User.create({
      email: "goodall@hungryhippo.com",
      password: "dr_goodall",
      firstname: "Jane",
      lastname: "Goodall",
      image_url: "/assets/users/goodall.png",
      disposition: "Regular"
})

listingGoodall = Listing.create({
      title: "Camp Goodall",
      address: "1414 Washington Boulevard, San Francisco, CA 94129, USA",
      num_beds: 1,
      num_guests: 2,
      num_bedrooms: 0,
      user: userGoodall,
      image_url: '/assets/listings/goodall-item.png',
      jumbo_image_url: '/assets/listings/goodall-jumbo.jpg',
      mass_spec: 'Y',
      centrifuge: 'Y',
      bunsen_burner: 'Y',
      evil: 'Regular',
      price: 679
})

userCarver = User.create({
      email: "carver@hungryhippo.com",
      password: "dr_carver",
      firstname: "George W.",
      lastname: "Carver",
      image_url: "/assets/users/carver.png",
      disposition: "Regular"
})

listingCarver = Listing.create({
      title: "Carver Cabin",
      address: "506 McAllister, San Francisco, CA, 94115",
      num_beds: 1,
      num_guests: 2,
      num_bedrooms: 0,
      user: userCarver,
      image_url: '/assets/listings/carver-item.png',
      jumbo_image_url: '/assets/listings/carver-jumbo.jpg',
      mass_spec: 'Y',
      centrifuge: 'Y',
      bunsen_burner: 'Y',
      evil: 'Regular',
      price: 679
})

# EVIL SCIENTISTS (3)

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
      address: "138 Cervantes Boulevard, San Francisco, CA 94123, US",
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

userDog = User.create({
      email: "evil_dog@deathdeath.com",
      password: "drevil",
      firstname: "Evil",
      lastname: "Dog",
      image_url: "/assets/users/evil-dog.png",
      disposition: "Evil"
})

listingDog = Listing.create({
      title: "Dog House",
      address: "635 Catamaran Street, Foster City, CA 94404, USA",
      num_beds: 1,
      num_guests: 2,
      num_bedrooms: 0,
      user: userDog,
      image_url: '/assets/listings/evil-dog-item.jpg',
      jumbo_image_url: '/assets/listings/evil-dog-jumbo.jpg',
      mass_spec: 'Y',
      centrifuge: 'Y',
      bunsen_burner: 'Y',
      evil: 'Evil',
      price: 500
})

userStrangelove = User.create({
      email: "dr_strangelove@hungryhippo.com",
      password: "drstrangelove",
      firstname: "Dr.",
      lastname: "Strangelove",
      image_url: "/assets/users/strangelove.png",
      disposition: "Evil"
})

listingStrangelove = Listing.create({
      title: "War Room",
      address: "2015 Stierlin Court, Mountain View, CA 94043, USA",
      num_beds: 1,
      num_guests: 2,
      num_bedrooms: 0,
      user: userStrangelove,
      image_url: '/assets/listings/strangelove-item.png',
      jumbo_image_url: '/assets/listings/strangelove-jumbo.jpg',
      mass_spec: 'Y',
      centrifuge: 'Y',
      bunsen_burner: 'Y',
      evil: 'Evil',
      price: 99
})

# MAD SCIENTISTS (3)

userNewton = User.create({
      email: "newton@hungryhippo.com",
      password: "dr_newton",
      firstname: "Isaac",
      lastname: "Newton",
      image_url: "/assets/users/newton.png",
      disposition: "Mad"
})

listingNewton = Listing.create({
      title: "The Newton Abode",
      address: "350 McAllister, San Francisco, CA, 94115",
      num_beds: 1,
      num_guests: 2,
      num_bedrooms: 0,
      user: userNewton,
      image_url: '/assets/listings/newton-item.jpg',
      jumbo_image_url: '/assets/listings/newton-jumbo.jpg',
      mass_spec: 'Y',
      centrifuge: 'Y',
      bunsen_burner: 'Y',
      evil: 'Mad',
      price: 979
})

userFrankenstein = User.create({
      email: "frankenstein@hungryhippo.com",
      password: "dr_frankenstein",
      firstname: "Dr.",
      lastname: "Frankenstein",
      image_url: "/assets/users/frankenstein.png",
      disposition: "Mad"
})

listingFrankenstein = Listing.create({
      title: "Castle Frankenstein",
      address: "1101 Welch Road, Palo Alto, CA 94304, USA",
      num_beds: 1,
      num_guests: 2,
      num_bedrooms: 0,
      user: userFrankenstein,
      image_url: '/assets/listings/frank-item.png',
      jumbo_image_url: '/assets/listings/frankenstein-jumbo.gif',
      mass_spec: 'Y',
      centrifuge: 'Y',
      bunsen_burner: 'Y',
      evil: 'Mad',
      price: 679
})

userBunsen = User.create({
      email: "bunsen@hungryhippo.com",
      password: "dr_bunsen",
      firstname: "Dr.",
      lastname: "Bunsen",
      image_url: "/assets/users/bunsen.png",
      disposition: "Mad"
})

listingBunsen = Listing.create({
      title: "Muppet Labs",
      address: "306 McAllister, San Francisco, CA, 94115",
      num_beds: 1,
      num_guests: 2,
      num_bedrooms: 0,
      user: userBunsen,
      image_url: '/assets/listings/bunsen-item.png',
      jumbo_image_url: '/assets/listings/bunsen-jumbo.jpg',
      mass_spec: 'Y',
      centrifuge: 'Y',
      bunsen_burner: 'Y',
      evil: 'Mad',
      price: 879
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

