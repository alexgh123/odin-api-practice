module FlickrHelper

  #this is so bad and needs to be cleaned up

  # I should really be able to have two variables, user id and photo id

  def array_of_photo_urls(user_id)
    id_array = []
    photo_array = flickr.photos.search(:user_id=>user_id).to_a
    photo_array.each do |x|
      id_array << x.id
    end
    url_array = []
    id_array.each do |p_id|
      url_array << photo_url(p_id)
    end
    url_array
  end

  #### less important below

  def array_of_all_photo_ids_of_user(user_id)
    id_array = []
    photo_array = flickr.photos.search(:user_id=>user_id).to_a
    photo_array.each do |x|
      id_array << x.id
    end
    id_array
  end

  def photo_url(photo_id)
    flickr.photos.getInfo(:photo_id =>photo_id).urls[0]._content
  end

  ###### not as important, but instructive for other uses of api ####

  def array_of_photo_info(user_id)
    flickr.photos.search(:user_id=>user_id).to_a
  end

  def photo_info(photo_id)
    flickr.photos.getInfo(:photo_id =>photo_id)
  end





# def user_photos(user_id)
#   flickr.photos.search(:user_id => user_id)
# end #returns the user's photo-ish things

# def phototset
#   flickr.photosets.getList(user_id: user.id).to_a.sample.id
# end

#returns all kind of info about the actual photo
# flickr.photos.getInfo(:photo_id =>"17974079119")

#returns the actual photo

# flickr.photos.getInfo(:photo_id =>"17974079119").urls[0]._content



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