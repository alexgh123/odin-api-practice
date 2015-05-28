module FlickrHelper

def user_photos(user_id)
  flickr.photos.search(:user_id => user_id)
end #returns the user's photo-ish things

def phototset
  flickr.photosets.getList(user_id: user.id).to_a.sample.id
end

# to get the actual photo an the information that is actually useful....


#returns the photo id of the 3rd photo of the photo like things
flickr.photos.search(:user_id=>'132826669@N04').to_a[3].id

#returns all kind of info about the actual photo
flickr.photos.getInfo(:photo_id =>"17974079119")

#returns the actual photo

flickr.photos.getInfo(:photo_id =>"17974079119").urls[0]._content



  # def find_photoset_id_by_user_url(url)

  #   # flickr.photos.search(user_id: user_id, per_page: photo_count)

  #   user = flickr.urls.lookupUser( url: url )
  #   random_photoset = flickr.photosets.getList(user_id: user.id).to_a.sample.id # an array of objects of photo albums, each albums may contain many photos
  # end

  # def photos_in_set(photo_set_id)
  #   flickr.photosets.getPhotos( photoset_id: photo_set_id ).photo.map { |image| image.id  } # an array of photo id
  # end

  # def photo_url(photo_id)
  #   photo = flickr.photos.getInfo(photo_id: photo_id)
  #   FlickRaw.url_b(photo)
  # end


end