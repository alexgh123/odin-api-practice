class KittensController < ApplicationController

  include FlickrHelper

  def index
    @kittens = Kitten.all

    @photo_url_array = array_of_photo_urls('132826669@N04')

    # @photo_ish_things = user_photos('132826669@N04')

    # url = params[:url]
    #   photoset_id = find_photoset_id_by_user_url( url )
    #   @photo_ids = photos_in_set(photoset_id)
    #   @photo = photo_url(@photo_ids.sample)

  end
end
