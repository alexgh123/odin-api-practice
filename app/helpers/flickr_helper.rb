module FlickrHelper

#goal = faster load times= don't load all the photos/info

  def array_of_photo_urls(user_id)
    id_array = []
    six_photo_array = flickr.photos.search(:user_id=>user_id).to_a[0..5]
    six_photo_array.each do |x|
      id_array << x.id
    end
    url_array = []
    id_array.each do |p_id|
      url_array << photo_url(p_id)
    end
    url_array
  end

  def photo_url(photo_id)
    photo_thing = flickr.photos.getInfo(:photo_id =>photo_id)
    FlickRaw.url_b(photo_thing)
  end


end