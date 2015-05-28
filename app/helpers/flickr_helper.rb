module FlickrHelper

  def user_photos(user_id, photo_count=12 )
    flickr.photos.search(:user_id => user_id, :per_page => photo_count)
  end
  # welp, flickr.yml is wrong because im not using it

  # im not sure these helper methods will be correct b/c i deviated from the pixellated visions blog when i used flickraw in stead of flick_ru

  def render_flickr_sidebar_widget(user_id, photo_count=12, columns =2)
    begin
      photos = user_photos(user_id, photo_count).in_groups_of(2)
      render :partial => '/flickr/sidebar_widget', :locals => {:photos => photos}
    rescue Exception
      render :partial => '/flickr/unavailable'
    end
  end


end