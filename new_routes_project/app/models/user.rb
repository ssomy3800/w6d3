class User < ApplicationRecord
    validates :username, presence: true
    validates :username, uniqueness: true
    
    
    has_many :artworks, 
    foreign_key: :artist_id,
    class_name: :Artwork


    has_many :shared_artworks, 
    foreign_key: :viewer_id,
    class_name: :ArtworkShare

end