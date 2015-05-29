module FlickrHelper

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

  def photo_url(photo_id)
    flickr.photos.getInfo(:photo_id =>photo_id).urls[0]._content
  end


end