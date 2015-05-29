class KittensController < ApplicationController

  include FlickrHelper

  def index
    @kittens = Kitten.all

    @photo_url_array = array_of_photo_urls('132826669@N04')


  end
end
