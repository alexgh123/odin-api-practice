class KittensController < ApplicationController

  include FlickrHelper

  def index
    @kittens = Kitten.all
    if params[:id]
      id = params[:id]
      @photo_url_array = array_of_photo_urls(id)
      @photo_url_array = @photo_url_array[0..5]
    else
      @photo_url_array = array_of_photo_urls('132826669@N04')
      @photo_url_array = @photo_url_array[0..5]
    end
  end

end

