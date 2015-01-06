#ScienceFairBnB.com

ScienceFairBnB is a demonstration web application modeled after AirBnB.  The site uses Rails 4.1.6, Backbone.js, PostgreSQL, Bootstrap, and the Google Maps Javascript API.  

Please visit [www.sciencefairbnb.com](http://www.sciencefairbnb.com "Go to ScienceFairBnB!") to use the site.  Click on **Guest User** for immediate access, or create a user account.

##Overview

The site was built in three stages:

**1. User Authorization** includes a Rails model for the User.  The User has `session_token` and `password_digest` attributes.  `password_digest` points to a hash of the user's password, generated with the bcrypt Ruby gem.  The User model has a `#password=` setter method that sets the password digest, and an `#is_password?` method to check if a correct password has been supplied.  `seesion_token` is used to log the user in and out.  

**2. Listings** are related to the user through a `has_many` / `belongs_to` association.  A Listing contains the data related to a rental property.  Backbone.js model, collection, and views are written to structure the listings on the front end.     

**3. Filtering the Listings** is required to easily sort the desired properties. The database is seeded with several example listings.  As described below, displayed listings can be filtered by criteria including price, location, and mental state of the host scientist.

##Key design features

**1. Backbone subviews and Composite Views.** `Backbone.CompositeView` is extended from the `Backbone.View` in app/assets/javascripts/utils/composite_view.js.  The CompositeView includes functions to add and remove subviews from a parent view.  The site uses a Backbone view called Search view (app/assets/javascripts/views/search.js) as a parent view.  Search view has subviews for the google map, the filtered listings collection, and the filter tools.  The composite view arrangement permits the displayed listings to be updated in response to new filtering criteria, without reloading the entire page.     

**2. Filtering the listings.**  When a triggering event occurs (adjustment to the map, price slider, or a change of the scientist mental state selector), a corresponding function is called on the the listings collection (either `filterByPrice`, `filterByLocation`, or `filterByMentalState`).  This function creates and stores another filtering function (`price`, `location`, or `mentalState`).  The second function will filter the listed properties based upon the user price, geography, or mental state inputs.  These functions are stored in an array in the collection.   Finally, to filter the collection along all criteria, the `UpdateFiltered` function is called.  `UpdateFiltered` calls each filtering function in the collection's array of filters, so that the listings are filtered by all criteria.    

**3. Data Serialization.**  When the data for a listing is retrieved, data related to the associated user must also be retrieved.  This is achieved with JBuilder.  The partial `_listing.json.jbuilder` demonstrates how the data for a given listing is serialized with the desired user data:

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

   










