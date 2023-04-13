class ArtworksController < ApplicationController
    def index
        @artworks = Artwork
        render json: @artworks
    end

    def create
        @artwork = Artwork.new(artworks_params)
        if @artwork.save
          render json: @artwork
        else
          render json: @artwork.errors.full_messages, status: :unprocessable_entity
        end
    end

    def show
        render json: params
    end 

    def update
        @artwork = Artwork.find(params[:id])

        if @artwork.update(artworks_params)
            redirect_to artworks_params
        else
            render json: @artwork.errors.full_messages, status: 422
        end
    end
    
    def destroy
        @artwork = Artwork.find(params[:id])
        @artwork.destroy
        redirect_to artworks_url
    end

    private
    def artworks_params
        params.require(:artwork).permit(:title, :image_url, :artist_id)
    end

end