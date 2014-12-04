module Api
  class ListingsController < ApiController
    
    def create
      @listing = current_user.listings.new(listing_params)
      
      if @listing.save
        render json: @listing
      else
       render json: @listing.errors.full_messages, 
              status: :unprocessable_entity
      end
    end
    
    def index
      @listings = Listing.all
      render json: @listings
    end
    
    def show
      @listing = Listing.find(params[:id])
      # render json: @listing
      
      # if @listing.is_member?(current_user)
#         render :show
#       else
#         render json: ["user does not own this listing"], status: 403
#       end
    end
    
    def destroy
      @listing = current_user.listings.find(params[:id])
      @listing.try(:destroy)
      render json: {}
    end
    
    private
    
    def listing_params
      params.require(:listing).permit(:title)
    end
  end
end
