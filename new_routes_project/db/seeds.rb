ArtworkShare.destroy_all
Artwork.destroy_all
User.destroy_all
u1 = User.create!(username: 'Sir Mohammad of the AA')
u2 = User.create!(username: 'Tyvan, the Creator')
u3 = User.create!(username: 'Harvey ')
a1 = Artwork.create!(title: 'The Perfect Cocktail', artist: u1, image_url: "https://i.redd.it/xkxrfo4cqys41.png")
a2 = Artwork.create!(title: 'funny doggy', artist: u2, image_url: "https://render.fineartamerica.com/images/images-profile-flow/400/images-medium-large-5/ay-chihuahua-kristy-tracy.jpg")
a3 = Artwork.create!(title: 'harvey sandwich', artist: u3, image_url: "https://images.squarespace-cdn.com/content/v1/5df300cc0d6bf521e6076d3b/1648618377912-UHQ7E87OZV8031CWDDNV/Harveys+Sandwich+-+Salad+%282%29.jpg")
s1 = ArtworkShare.create!(viewer: u1, artwork: a2)
s2 = ArtworkShare.create!(viewer: u1, artwork: a3)
s3 = ArtworkShare.create!(viewer: u2, artwork: a3)
