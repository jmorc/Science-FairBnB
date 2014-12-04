json.extract! @listing, :title, :user_id, :address, :id, :num_beds, :num_guests,
                        :num_bedrooms, :latitude, :longitude, :price, 
                        :image_url, :mass_spec, :centrifuge, :bunsen_burner,
                        :evil 

json.user do |json|
  json.(@listing.user, :email, :firstname, :lastname, :image_url, :disposition)
  json.gravatar_url avatar_url(@listing.user)
end



