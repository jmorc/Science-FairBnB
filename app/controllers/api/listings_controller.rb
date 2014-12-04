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
      render :index
    end
    
    def show
      @listing = Listing.find(params[:id])
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
