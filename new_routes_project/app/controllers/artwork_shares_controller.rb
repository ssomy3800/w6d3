class ArtworkSharesController < ApplicationController

    def create
        @artworkshare = ArtworkShare.new(artwork_shares_params)
        if @artworkshare.save
          render json: @artworkshare
        else
          render json: @artworkshare.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        @artworkshare = ArtworkShare.find(params[:id])
        @artworkshare.destroy
        redirect_to artworks_url
    end
    
    private
    def artwork_shares_params
        params.require(:artworkshares).permit(:artwork_id,:viewer_id)
    end
end