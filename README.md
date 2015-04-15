#ScienceFairBnB.com

ScienceFairBnB is a demonstration web app modeled after AirBnB.  The site uses Rails 4.1.6, Backbone.js, PostgreSQL, Bootstrap, and the Google Maps Javascript API.  

Visit [www.sciencefairbnb.com](http://www.sciencefairbnb.com "Go to ScienceFairBnB!") to try the site.  Click on **Guest User** for immediate access, or create a user account.

##Key Features:

**1. User Authentication** is written from scratch.  The User model has `session_token` and `password_digest` attributes.  Key methods include `password=`, which encypts the user's password and stores it as a password digest, and `find_by_credentials`, which retrieves a user from the database if the correct email and password are supplied.

**2. A Listing** `belongs_to` a User.  A Listing contains the data related to a rental property.  Backbone.js models, collections, and views organize the listings data on the front end.    

**3. Filtering the Listings** is required display the desired Listings, depending on the user's desired price range, location on the google map, and the mental state of the host scientist (Regular, Evil, or Mad). Listings are filtered using `filterByPrice`, `filterByLocation`, or `filterByMentalState`.  These functions take user input to create specific filtering functions (`price`, `location`, or `mentalState`). Every time the user changes a filtering input, the updated `price`, `location`, or `mentalState` functions are called in sequence.  Consequently, the listings are filtered by all criteria.

**4. Data Serialization.**  When the data for a listing is retrieved from the back end, data on the associated user is also required.  This is achieved with JBuilder, using the partial `_listing.json.jbuilder`:

```ruby
 json.extract! listing, :title, :user_id, :address, :id, :num_beds, :num_guests,
                         :num_bedrooms, :latitude, :longitude, :price, 
                         :image_url, :mass_spec, :centrifuge, :bunsen_burner,
                         :evil, :jumbo_image_url 
 
 json.user do |json|
   json.(listing.user, :email, :firstname, :lastname, :image_url, :disposition)
   json.gravatar_url avatar_url(listing.user)
 end
```

   










