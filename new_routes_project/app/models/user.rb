class User < ApplicationRecord
    validates :username, presence: true
    validates :username, uniqueness: true
    
    
    has_many :artworks, 
    foreign_key: :artist_id,
    class_name: :Artwork


    has_one :artwork_share, 
    foreign_key: :viewer_id,
    class_name: :ArtworkShare

end